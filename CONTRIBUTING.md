# Contributing to Warehousing

If you're here, you're awesome! Glad you'd like to help. :smile_cat:

The sections below give guidelines for the most common contribution types
people make to Warehousing.


## Translation updates

If you want to help out with translating the mod, that's great! We just ask
that you do so [via Crowdin][crowdin-project] (which supports logging in with
GitHub and other existing profiles), and not with a pull request that updates
the locale files directly.

### Why this way?

Using Crowdin gives us automatic translation updates whenever someone edits a
language. Crowdin maintains a branch with the new translations until we merge
them in just before releasing a new mod version.

While we do appreciate user-submitted pull requests with new or updated
translations, integrating those is much more difficult than translations
submitted via Crowdin because of the automated branch-management process.
Crowdin updates only the source strings (the English locale file) when syncing
to GitHub. It does _not_ pull in new translations—in fact, Crowdin will
overwrite any locale changes in its localization branch. Syncing translations
in both directions is (as of March 2019) not possible to do automatically,
according to responses from Crowdin support.

It is _possible_ to manually import/sync new translations from user-submitted
pull requests on GitHub, but for a number of reasons (including the amount of
developer time required, potential for errors, and our preferred workflows) we
ask that you contribute your translations [using Crowdin][crowdin-project]
unless there is an issue preventing you from doing so—in which case, do open a
pull request anyway and tell us about the problem, in case it's something we
can fix for future translators. Thank you!


## Code changes

Tweaks to Warehousing's code are always welcome for consideration. While we
cannot promise to merge every pull request, your proposed changes will at
least get a looking-over by one or more of the maintainers.

Some of the best code refactoring in the mod's history came from contributors
like you—so even if you're not adding a new feature or fixing a bug, feel free
to rewrite things if you think they can be done in a clearer way. Maintainers
are sometimes too focused on future plans to see improvements that could be
made in existing code, after all. :mag:

We just ask that, when opening pull requests, you keep each PR free of
unrelated changes. Don't add a new feature when refactoring, for example—make
two pull requests instead. Making separate PRs eases code review (we
maintainers can look at only one thing at a time), and means that a change we
disagree with won't block or delay merging a change we like just because both
changes are part of the same PR. (We _much_ prefer using the "Merge pull
request" button to cherry-picking commits—it makes life easier when the time
comes to write changelogs! :smirk_cat:)

### Local development setup

To work on the mod, most of what you need will be Git and a text editor, in a
Unix-like environment (most Linux distros running bare-metal, in a VM, or in
WSL; macOS and other BSD flavors should also work).

Assuming you already have an SSH key configured with GitHub, you can clone the
mod repository with:

    git clone git@github.com:Warehousing/Warehousing.git

That's great for quick hacking, but you will need to create a fork and clone it
instead (or add your own fork as a new Git remote) in order to push new changes
for a pull request.

In order to test-build the mod, you'll need a few basic tools. Most come
preinstalled on modern OSes, but sometimes [Make][make-pkg] or [Lua][lua-start]
aren't included by default. Chances are you can install them from your distro's
package repository using obvious package names like `make` or `lua` (or via a
third-party tool like [Homebrew][homebrew-start] on Mac).

Once the few basic tools you need are installed, you can easily build the mod:

    # if you are not already in the mod directory cloned with Git
    cd path/to/Warehousing
    # one simple command creates the file for you
    make

After `make` finishes, you will find both packed (`.zip`) and unpacked versions
of the mod in the `pkg/` subfolder. Copy one into your Factorio `mods` folder
for in-game testing.

  [crowdin-project]: https://crowdin.com/project/factorio-warehousing
  [homebrew-start]: https://brew.sh/
  [lua-runtime]: https://lua.org/start.html
  [make-pkg]: https://www.gnu.org/software/make/
