[CmdletBinding()]
param (
    [Parameter(Mandatory=$false)]
    [String]
    $FactorioDataFolder
)

If ([string]::IsNullOrWhiteSpace($FactorioDataFolder)) {
    $FactorioDataFolder = [System.IO.Path]::Join([System.Environment]::GetFolderPath("ApplicationData"), "Factorio", "mods")
}

If (-not (Test-Path $FactorioDataFolder)) {
    Write-Error "Factorio data folder not found: $FactorioDataFolder"
    Exit 1
}

If (-not (Test-Path "PKG_NAME")) {
    Write-Error "PKG_NAME file not found"
    Exit 1
}

$packageName = Get-Content "PKG_NAME"
$packageVersion = Get-Content "VERSION"

$packageFolder = [System.IO.Path]::Combine($FactorioDataFolder, $packageName);
If (-not (Test-Path $packageFolder)) {
    New-Item -Path $FactorioDataFolder -ItemType Directory -Name $packageName
}

$files = (Get-ChildItem -Path "*.md" -Exclude "source-assets" -Recurse -File | Where-Object { -not $_.FullName.Contains("source-assets")})
@("graphics", "locale", "migrations", "prototypes") | ForEach-Object {
    $files += (Get-ChildItem -Path "$_" -Recurse -File)
}
$files += (Get-ChildItem -Path "*.lua" -File)
$files += (Get-ChildItem -Path "*.json" -File)
$files += (Get-Item ".\License.txt")
$files += (Get-Item ".\thumbnail.png")
$files += (Get-Item ".\hero-image.jpg")

# Path.GetRelativePath(String, String)
$paths = @();
$files = $files | ForEach-Object {
    $myPath = [System.IO.Path]::GetRelativePath($PWD, $_.Directory.FullName);
    If (-not $paths.Contains($myPath) -and $myPath -ne ".") {
        $paths += $myPath;
    }
    Return [System.IO.Path]::GetRelativePath($PWD, $_.FullName)
}

$paths | ForEach-Object {
    $null = New-Item -Path "$([System.IO.Path]::Combine($packageFolder, $_))" -ItemType Directory -Force
}

$files | ForEach-Object {
    $null = Copy-Item "$([System.IO.Path]::Combine($PWD, $_))" -Destination "$([System.IO.Path]::Combine($packageFolder, $_))" -Force
}

@("control.lua", "info.json") | ForEach-Object {
    $item = [System.IO.Path]::Combine($packageFolder, $_)
    $null = Set-Content -Path $item -Value (
        (Get-Content -Path $item -Raw).Replace("{{VERSION}}", $packageVersion)
    )
}
