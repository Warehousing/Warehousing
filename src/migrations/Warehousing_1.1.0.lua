-- Migration for Warehousing 1.1.0, which added the roboport-based research gate
-- for unlocking logistic variants.

for _, force in pairs(game.forces) do
	local research_gate = force.technologies["warehouse-logistics-research-gate"]
	local dependent_tech = force.technologies["warehouse-logistics-research-1"]

	if research_gate then
		if dependent_tech and dependent_tech.researched then
			research_gate.researched = true
		else
			for _, surface in pairs(game.surfaces) do
				if #surface.find_entities_filtered({ name = "roboport", force = force }) > 0 then
					research_gate.researched = true
					break
				end
			end
		end
	end
end
