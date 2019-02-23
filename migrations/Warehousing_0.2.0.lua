--[[ Copyright (c) 2019 dgw
 * Part of the Warehousing mod
 *
 * See License.txt in the project directory for license information.
--]]
-- migrate from old single logistic research to the new pair of techs

for index, force in pairs(game.forces) do
  local technologies = force.technologies
  local recipes = force.recipes

  if recipes["warehouse-active-provider"].enabled then
    -- with the old research, if one logistic variant was enabled, then they all were
    technologies["warehouse-logistics-research-1"].researched = true
    technologies["warehouse-logistics-research-2"].researched = true
  end
end
