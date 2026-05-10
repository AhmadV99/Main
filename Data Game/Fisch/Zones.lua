local ReplicatedStorage = game:GetService("ReplicatedStorage")

return {
	DevTest = {
		CantBeWormholed = true,
		Priority = 2,
		Pool = { "Scylla" }
	},
	["Enchanted Crevice"] = {
		Priority = 2,
		Pool = {
			"Tire",
			"Boot",
			"Seaweed",
			"Crackfin Minnow",
			"Dustscale Dace",
			"Pale Crevice Tang",
			"Glassblue Herring",
			"Lapisjaw Jack",
			"Crevice Sturgeon",
			"Altarfin Grouper",
			"Adumbral Shark",
			"Sovereign Oarfish"
		}
	},
	["Bellona's Frenzy of War"] = {
		Priority = 3,
		Pool = {
			"Common Crate",
			"Bait Crate",
			"Fish Barrel",
			"Rusty Hook",
			"Rustscale Minnow",
			"Splinterfin Carp",
			"Ironjaw Guppy",
			"Speartail Pike",
			"Warstripe Bass",
			"Shieldbearer Koi",
			"Gladiator Eel",
			"Bloodfang Barracuda"
		},
		Disturbs = {
			"WarSurge",
			"LegionnaireLampreyHunt"
		}
	},
	["Apollo's Song of Light"] = {
		Priority = 3,
		Pool = {
			"Common Crate",
			"Bait Crate",
			"Fish Barrel",
			"Broken Arrow",
			"Gleamfin Minnow",
			"Sunscale Tetra",
			"Beamtail Koi",
			"Lumen Bass",
			"Prismfin Trout",
			"Auric Angelfish",
			"Dawnflare Eel",
			"Solstice Ray"
		},
		Disturbs = {
			"SolarChorus",
			"HeliosRayHunt"
		},
		CustomCondition = function(_, p2, _) --[[ CustomCondition ]] -- line: 100
			if not p2.Data.NewFormat.WrathOfOlympus.DivineSealsBroken.Bellona then
				return false, "You must break Bellona's seal before fishing here."
			end

			return true
		end
	},
	["Poseidon's Storm of Floods"] = {
		Priority = 3,
		Pool = {
			"Common Crate",
			"Bait Crate",
			"Fish Barrel",
			"Chipped Crown",
			"Tidepool Minnow",
			"Ripplefin Carp",
			"Currenttail Bass",
			"Surftail Guppy",
			"Foamcrest Koi",
			"King's Crest Eel"
		},
		Disturbs = {
			"StormFlood",
			"TidecrasherArchonHunt"
		},
		CustomCondition = function(_, p5, _) --[[ CustomCondition ]] -- line: 133
			if not p5.Data.NewFormat.WrathOfOlympus.DivineSealsBroken.Apollo then
				return false, "You must break Apollo's seal before fishing here."
			end

			return true
		end
	},
	["Zeus's Thunder of Chaos"] = {
		Priority = 4,
		Disturbs = "KeraunoWyrmHunt",
		Pool = {
			"Common Crate",
			"Bait Crate",
			"Fish Barrel",
			"Broken Gear",
			"Sparkfin Minnow",
			"Static Guppy",
			"Voltstripe Carp",
			"Chargeback Bass",
			"Ion Pike",
			"Arcflash Koi",
			"Thunderclap Crab"
		},
		CustomCondition = function(_, p8, _) --[[ CustomCondition ]] -- line: 163
			if not p8.Data.NewFormat.WrathOfOlympus.DivineSealsBroken.Poseidon then
				return false, "You must break Poseidon's seal before fishing here."
			end

			return true
		end
	},
	["Hades' Underworld of Indefinite"] = {
		Priority = 3,
		Pool = {
			"Common Crate",
			"Bait Crate",
			"Fish Barrel",
			"Skull",
			"Wispfin Minnow",
			"Duskscale Carp",
			"Murkback Bass",
			"Hollow Pike",
			"Veilfin Koi",
			"Revenant Eel",
			"Shadow Ray",
			"Grave Serpent"
		},
		CustomCondition = function(_, p11, _) --[[ CustomCondition ]] -- line: 192
			if not p11.Data.NewFormat.WrathOfOlympus.DivineSealsBroken.Zeus then
				return false, "You must break Zeus's seal before fishing here."
			end

			return true
		end
	},
	["Olympian Fissure"] = {
		Priority = 3,
		Pool = {
			"Boot",
			"Common Crate",
			"Bait Crate",
			"Fractured Minnow",
			"Splitfin Koi",
			"Divine Aberrant",
			"Aegisbreaker Ray",
			"Titanspawn Serpent",
			"Primordial Devourer"
		},
		CustomCondition = function(_, p14, _) --[[ CustomCondition ]] -- line: 217
			if not p14.Data.NewFormat.WrathOfOlympus.DivineSealsBroken.Hades then
				return false, "You must break Hades' seal before fishing here."
			end

			return true
		end
	},
	["Tidecrasher Archon Hunt"] = {
		Priority = 5,
		CantBeWormholed = true,
		IsHunt = true,
		Pool = {
			"Common Crate",
			"Bait Crate",
			"Fish Barrel",
			"Chipped Crown",
			"Tidepool Minnow",
			"Ripplefin Carp",
			"Currenttail Bass",
			"Surftail Guppy",
			"Surge Pickerel",
			"Foamcrest Koi",
			"Tridentfish",
			"Whirlpool Snapper",
			"King's Crest Eel",
			"Tsunami Whale"
		},
		CustomCondition = function(_, p17, _) --[[ CustomCondition ]] -- line: 268
			if not p17.Data.NewFormat.WrathOfOlympus.DivineSealsBroken.Apollo then
				return false, "You must break Apollo's seal before fishing here."
			end

			return true
		end
	},
	["Soul Pool"] = {
		Priority = 3,
		CantBeWormholed = true,
		Pool = {
			"Common Crate",
			"Bait Crate",
			"Fish Barrel",
			"Skull",
			"Wispfin Minnow",
			"Duskscale Carp",
			"Fading Guppy",
			"Murkback Bass",
			"Hollow Pike",
			"Veilfin Koi",
			"Revenant Eel",
			"Shadow Ray",
			"Grave Serpent",
			"Spectral Whale"
		},
		CustomCondition = function(_, p20, _) --[[ CustomCondition ]] -- line: 299
			if not p20.Data.NewFormat.WrathOfOlympus.DivineSealsBroken.Zeus then
				return false, "You must break Zeus's seal before fishing here."
			end

			return true
		end
	},
	["Helios Sunray Hunt"] = {
		Priority = 6,
		CantBeWormholed = true,
		IsHunt = true,
		Pool = {
			"Common Crate",
			"Bait Crate",
			"Fish Barrel",
			"Broken Arrow",
			"Gleamfin Minnow",
			"Sunscale Tetra",
			"Radiant Guppy",
			"Beamtail Koi",
			"Lumen Bass",
			"Prismfin Trout",
			"Auric Angelfish",
			"Dawnflare Eel",
			"Solstice Ray",
			"Empyrean Sunwhale",
			"Helios Sunray"
		},
		CustomCondition = function(_, p23, _) --[[ CustomCondition ]] -- line: 333
			if not p23.Data.NewFormat.WrathOfOlympus.DivineSealsBroken.Bellona then
				return false, "You must break Bellona's seal before fishing here."
			end

			return true
		end
	},
	["Styx Angler Hunt"] = {
		Priority = 5,
		CantBeWormholed = true,
		IsHunt = true,
		Pool = {
			"Common Crate",
			"Bait Crate",
			"Fish Barrel",
			"Skull",
			"Wispfin Minnow",
			"Duskscale Carp",
			"Fading Guppy",
			"Murkback Bass",
			"Hollow Pike",
			"Veilfin Koi",
			"Revenant Eel",
			"Shadow Ray",
			"Grave Serpent",
			"Spectral Whale"
		},
		CustomCondition = function(_, p26, _) --[[ CustomCondition ]] -- line: 365
			if not p26.Data.NewFormat.WrathOfOlympus.DivineSealsBroken.Zeus then
				return false, "You must break Zeus's seal before fishing here."
			end

			return true
		end
	},
	["Wisp Haunt"] = {
		Priority = 3,
		CantBeWormholed = true,
		Pool = {
			"Common Crate",
			"Bait Crate",
			"Fish Barrel",
			"Skull",
			"Wispfin Minnow",
			"Duskscale Carp",
			"Fading Guppy",
			"Murkback Bass",
			"Hollow Pike",
			"Veilfin Koi",
			"Revenant Eel",
			"Shadow Ray",
			"Grave Serpent",
			"Spectral Whale"
		},
		CustomCondition = function(_, p29, _) --[[ CustomCondition ]] -- line: 396
			if not p29.Data.NewFormat.WrathOfOlympus.DivineSealsBroken.Zeus then
				return false, "You must break Zeus's seal before fishing here."
			end

			return true
		end
	},
	["Legionnaire Lamprey Hunt"] = {
		Priority = 5,
		CantBeWormholed = true,
		IsHunt = true,
		Pool = {
			"Common Crate",
			"Bait Crate",
			"Fish Barrel",
			"Rusty Hook",
			"Rustscale Minnow",
			"Splinterfin Carp",
			"Bladeback Perch",
			"Ironjaw Guppy",
			"Speartail Pike",
			"Warstripe Bass",
			"Shieldbearer Koi",
			"Gladiator Eel",
			"Bloodfang Barracuda",
			"Warlord Sturgeon"
		}
	},
	["Olympian Devil Hunt"] = {
		Priority = 5,
		IsHunt = true,
		CantBeWormholed = true,
		Pool = {
			"Boot",
			"Common Crate",
			"Bait Crate",
			"Fractured Minnow",
			"Splitfin Koi",
			"Divine Aberrant",
			"Aegisbreaker Ray",
			"Titanspawn Serpent",
			"Primordial Devourer",
			"Olympian Devil"
		},
		CustomCondition = function(_, p32, _) --[[ CustomCondition ]] -- line: 447
			if not p32.Data.NewFormat.WrathOfOlympus.DivineSealsBroken.Hades then
				return false, "You must break Hades' seal before fishing here."
			end

			return true
		end
	},
	["Atlantean Storm"] = {
		Priority = 4,
		Pool = {
			"Void Angler",
			"Tempest Ray",
			"Abyss Snapper",
			"Whirlpool Marlin",
			"Vortex Barracuda",
			"Typhoon Tuna",
			"Cyclone Mako",
			"Maelstorm Shark"
		}
	},
	["Kerauno Wyrm Pool"] = {
		IsHunt = true,
		Priority = 10,
		CantBeWormholed = true,
		Pool = {
			"Common Crate",
			"Bait Crate",
			"Fish Barrel",
			"Broken Gear",
			"Sparkfin Minnow",
			"Static Guppy",
			"Voltstripe Carp",
			"Chargeback Bass",
			"Ion Pike",
			"Arcflash Koi",
			"Stormscale Eel",
			"Thunderclap Crab",
			"Fulmina Serpent",
			"Skybreaker Leviathan",
			"Kerauno Wyrm"
		},
		CustomCondition = function(_, p35, _) --[[ CustomCondition ]] -- line: 493
			if not p35.Data.NewFormat.WrathOfOlympus.DivineSealsBroken.Poseidon then
				return false, "You must break Poseidon's seal before fishing here."
			end

			return true
		end
	},
	["Everturn Forest"] = {
		Priority = 2,
		Pool = {
			"Boot",
			"Common Crate",
			"Bait Crate",
			"Fish Barrel",
			"Seaweed",
			"Frostpetal Minnow",
			"Icebloom Koi",
			"Hoarfrost Pike",
			"Glacial Bark Gar",
			"Glaciaseer Sturgeon",
			"Petaldrift Koi",
			"Pollen Guppy",
			"Bloomfin Trout",
			"Verdant Spiritfish",
			"Floraseer Sturgeon",
			"Sunleaf Sunfish",
			"Canopy Dartfish",
			"Sapflow Eel",
			"Thicket Leviabass",
			"Solarseer Sturgeon",
			"Amberleaf Carp",
			"Rotwood Perch",
			"Harvest Sunfish",
			"Duskbriar Gar",
			"Umbraleaf Sturgeon",
			"Oakling"
		}
	},
	["Dreadfin Hunt"] = {
		Priority = 5,
		CantBeWormholed = true,
		IsHunt = true,
		Pool = {
			"Tire",
			"Boot",
			"Common Crate",
			"Bait Crate",
			"Fish Barrel",
			"Seaweed",
			"Boots",
			"Bone",
			"Mackerel",
			"Cod",
			"Amberjack",
			"Nurse Shark",
			"Porgy",
			"Sardine",
			"Halibut",
			"Mullet",
			"Salmon",
			"Yellowfin Tuna",
			"Sea Bass",
			"Chinook Salmon",
			"Haddock",
			"Barracuda",
			"Sea Pickle",
			"Pufferfish",
			"Swordfish",
			"Bluefin Tuna",
			"Sailfish",
			"Stingray",
			"Sawfish",
			"Moonfish",
			"Crown Bass",
			"Dolphin",
			"Flying Fish",
			"Mythic Fish",
			"Long Pike",
			"Mustard",
			"Dreadfin"
		}
	},
	["Lucky Gold"] = {
		Priority = 5,
		CantBeWormholed = true,
		Pool = {
			"Tire",
			"Boot",
			"Common Crate",
			"Bait Crate",
			"Fish Barrel",
			"Seaweed",
			"Boots",
			"Mackerel",
			"Cod",
			"Amberjack",
			"Nurse Shark",
			"Porgy",
			"Sardine",
			"Halibut",
			"Mullet",
			"Salmon",
			"Yellowfin Tuna",
			"Sea Bass",
			"Chinook Salmon",
			"Haddock",
			"Barracuda",
			"Pufferfish",
			"Swordfish",
			"Bluefin Tuna",
			"Sailfish",
			"Stingray",
			"Sawfish",
			"Moonfish",
			"Crown Bass",
			"Dolphin",
			"Flying Fish",
			"Shamrock Salmon",
			"Clover Carp",
			"Rainbow Ribbonfish",
			"Fortune Flounder",
			"Rainbow Leviathan"
		},
		RarityLuckFactorBoosts = {
			Mythical = 2,
			Exotic = 3,
			Secret = 3
		}
	},
	["Rotbloom Hunt"] = {
		Priority = 5,
		CantBeWormholed = true,
		IsHunt = true,
		Pool = {
			"Bone",
			"Spore Lurker",
			"Mire Krakenling",
			"Widow Bloom",
			"Rotcoil Eel",
			"Bog Skulker",
			"Chlorophage",
			"Toxic Jellymass",
			"Blight Idol"
		},
		RarityBaseChanceBoosts = {
			Common = 0.25
		}
	},
	["Flower Guardian Hunt"] = {
		Priority = 5,
		CantBeWormholed = true,
		IsHunt = true,
		Pool = {
			"Driftwood",
			"Petal Ray",
			"Garden Snail",
			"Oversized Leaf",
			"Colossal Flower",
			"Thorn Ribbon Eel",
			"Bloomback Turtle",
			"Flower Flounder",
			"Diamond Daisy",
			"Butterfly",
			"Orchid Anglerfish",
			"Leafscale Lemon Shark"
		}
	},
	["Toxic Boil"] = {
		Priority = 100,
		CantBeWormholed = true,
		Disturbs = "RotbloomHunt",
		RequiredDurability = 150,
		Pool = {
			"Spore Lurker",
			"Mire Krakenling",
			"Widow Bloom",
			"Rotcoil Eel",
			"Bog Skulker",
			"Chlorophage",
			"Toxic Jellymass",
			"Mycotide Serpent",
			"Venom Maw",
			"Blight Idol"
		},
		RarityBaseChanceBoosts = {
			Common = 0.25
		}
	},
	["Above the Clouds"] = {
		CantBeWormholed = true,
		Priority = 1,
		Disturbs = "WyvernHunt",
		MutationIndicatorEnabled = true,
		Pool = {
			"Sky Bass",
			"Winged Carp",
			"Flying Pufferfish",
			"Flying Fish",
			"Harmonic Dove"
		},
		RarityLuckFactorBoosts = {
			Mythical = 0.5,
			Exotic = 0.5,
			Secret = 0.5
		},
		CustomCondition = function(_, p38, _) --[[ CustomCondition ]] -- line: 731
			local AboveTheClouds = p38.Data.NewFormat.TimeTrials.AboveTheClouds

			if not AboveTheClouds or (not AboveTheClouds.CompleteCount or AboveTheClouds.CompleteCount < 1) then
				return false, "You must complete the gliding challenge before fishing here."
			end

			return true
		end
	},
	["Wyvern Hunt"] = {
		CantBeWormholed = true,
		Priority = 2,
		IsHunt = true,
		MutationIndicatorEnabled = true,
		Pool = {
			"Sky Bass",
			"Winged Carp",
			"Flying Pufferfish",
			"Flying Fish",
			"Harmonic Dove",
			"Wyvern"
		},
		RarityLuckFactorBoosts = {
			Mythical = 0.5,
			Secret = 0.5
		},
		CustomCondition = function(_, p41, _) --[[ CustomCondition ]] -- line: 760
			local AboveTheClouds = p41.Data.NewFormat.TimeTrials.AboveTheClouds

			if not AboveTheClouds or (not AboveTheClouds.CompleteCount or AboveTheClouds.CompleteCount < 1) then
				return false, "You must complete the gliding challenge before fishing here."
			end

			return true
		end
	},
	["Skeletal Leviathan Hunt"] = {
		Priority = 5,
		CantBeWormholed = true,
		RequiredDurability = 100,
		IsHunt = true,
		Pool = {
			"Volcanic Geode",
			"Rock",
			"Basalt",
			"Basalt Loach",
			"Scoria Swordfish",
			"Coalfin Darter",
			"Lava Clam",
			"Obsidian Ray",
			"Slag",
			"Smeltjaw Snapper",
			"Magmatic Hermit Crab",
			"Molten Serpent",
			"Infernal Isonade",
			"Cindercoil Eel",
			"Skeletal Leviathan"
		}
	},
	["Scoria Reach"] = {
		Priority = 2,
		RequiredDurability = 100,
		Pool = {
			"Volcanic Geode",
			"Rock",
			"Basalt",
			"Basalt Loach",
			"Scoria Swordfish",
			"Coalfin Darter",
			"Lava Clam",
			"Obsidian Ray",
			"Slag",
			"Smeltjaw Snapper",
			"Magmatic Hermit Crab"
		}
	},
	["Scoria Reach 2"] = {
		Priority = 3,
		RequiredDurability = 200,
		Pool = {
			"Volcanic Geode",
			"Rock",
			"Basalt",
			"Basalt Loach",
			"Scoria Swordfish",
			"Coalfin Darter",
			"Lava Clam",
			"Obsidian Ray",
			"Slag",
			"Smeltjaw Snapper",
			"Magmatic Hermit Crab"
		}
	},
	["Scoria Reach Volcano"] = {
		Disturbs = "SkeletalLeviathanHunt",
		Priority = 4,
		RequiredDurability = 100,
		Pool = {
			"Volcanic Geode",
			"Rock",
			"Basalt",
			"Basalt Loach",
			"Scoria Swordfish",
			"Coalfin Darter",
			"Lava Clam",
			"Obsidian Ray",
			"Slag",
			"Smeltjaw Snapper",
			"Magmatic Hermit Crab"
		}
	},
	["Scoria Reach Molten Serpent"] = {
		Priority = 3,
		RequiredDurability = 100,
		Pool = {
			"Volcanic Geode",
			"Rock",
			"Basalt",
			"Basalt Loach",
			"Scoria Swordfish",
			"Coalfin Darter",
			"Lava Clam",
			"Obsidian Ray",
			"Slag",
			"Smeltjaw Snapper",
			"Magmatic Hermit Crab",
			"Molten Serpent"
		}
	},
	["Scoria Reach Cindercoil Eel"] = {
		Priority = 3,
		RequiredDurability = 100,
		Pool = {
			"Volcanic Geode",
			"Rock",
			"Basalt",
			"Basalt Loach",
			"Scoria Swordfish",
			"Coalfin Darter",
			"Lava Clam",
			"Obsidian Ray",
			"Slag",
			"Smeltjaw Snapper",
			"Magmatic Hermit Crab",
			"Cindercoil Eel"
		}
	},
	["Scoria Reach Infernal Isonade"] = {
		Priority = 3,
		RequiredDurability = 100,
		Pool = {
			"Volcanic Geode",
			"Rock",
			"Basalt",
			"Basalt Loach",
			"Scoria Swordfish",
			"Coalfin Darter",
			"Lava Clam",
			"Obsidian Ray",
			"Slag",
			"Smeltjaw Snapper",
			"Magmatic Hermit Crab",
			"Infernal Isonade"
		}
	},
	["Scoria Reach Crag-Crab"] = {
		Priority = 3,
		RequiredDurability = 100,
		Pool = {
			"Volcanic Geode",
			"Rock",
			"Basalt",
			"Basalt Loach",
			"Scoria Swordfish",
			"Coalfin Darter",
			"Lava Clam",
			"Obsidian Ray",
			"Slag",
			"Smeltjaw Snapper",
			"Magmatic Hermit Crab",
			"Crag-Crab"
		}
	},
	["Streamer Hideout"] = {
		Priority = 2,
		CantBeWormholed = true,
		Pool = {
			"Rock",
			"Common Crate",
			"Bait Crate",
			"Fish Barrel",
			"Seaweed",
			"Boots",
			"Mackerel",
			"Cod",
			"Amberjack",
			"Nurse Shark",
			"Porgy",
			"Sardine",
			"Halibut",
			"Mullet",
			"Salmon",
			"Yellowfin Tuna",
			"Sea Bass",
			"Chinook Salmon",
			"Haddock",
			"Barracuda",
			"Clout Carp"
		}
	},
	["Sweet Stream"] = {
		Priority = 2,
		CantBeWormholed = true,
		Pool = {
			"Salmon",
			"Sand Dollar",
			"Sardine",
			"Cod",
			"Chinook Salmon",
			"Kissing Gourami",
			"Cupid Crab",
			"Rose Bouquet",
			"Stuffed Bear",
			"Heart Cookie",
			"Heart Sand Dollar",
			"Sweetheart Seahorse",
			"Cupid Relic"
		}
	},
	["Sweetheart Shores"] = {
		Priority = 1,
		CantBeWormholed = true,
		Pool = {
			"Salmon",
			"Sand Dollar",
			"Sardine",
			"Cod",
			"Chinook Salmon",
			"Kissing Gourami",
			"Cupid Crab",
			"Rose Bouquet",
			"Stuffed Bear",
			"Heart Cookie",
			"Heart Sand Dollar",
			"Cupid Relic"
		},
		RarityBaseChanceBoosts = {
			Common = 0.3,
			Rare = 0.5
		}
	},
	["Sweetheart Shores Waterfall"] = {
		Priority = 2,
		CantBeWormholed = true,
		Pool = {
			"Rock",
			"Driftwood",
			"Trout",
			"Common Crate",
			"Bait Crate",
			"Carbon Crate",
			"Bream",
			"Carp",
			"Eel",
			"Kissing Gourami",
			"Cupid Crab",
			"Rose Bouquet",
			"Stuffed Bear",
			"Heart Cookie",
			"Heart Sand Dollar",
			"Cupid Relic"
		},
		RarityBaseChanceBoosts = {
			Common = 0.3,
			Rare = 0.5
		}
	},
	["Sweetheart Shores Pond"] = {
		Priority = 2,
		CantBeWormholed = true,
		Pool = {
			"Driftwood",
			"Trout",
			"Minnow",
			"Bait Crate",
			"Quality Bait Crate",
			"Bream",
			"Carp",
			"Eel",
			"Kissing Gourami",
			"Cupid Crab",
			"Rose Bouquet",
			"Stuffed Bear",
			"Heart Cookie",
			"Heart Sand Dollar",
			"Cupid Relic"
		},
		RarityBaseChanceBoosts = {
			Common = 0.3,
			Rare = 0.5
		}
	},
	["Sweetheart Shores Well"] = {
		Priority = 2,
		CantBeWormholed = true,
		Pool = {
			"Rock",
			"Log",
			"Seaweed",
			"Tire",
			"Boot",
			"Common Crate",
			"Bait Crate",
			"Quality Bait Crate"
		}
	},
	Lovestorm = {
		Priority = 100,
		CantBeWormholed = true,
		IsHunt = true,
		Pool = {
			"Tire",
			"Boot",
			"Common Crate",
			"Seaweed",
			"Carbon Crate",
			"Quality Bait Crate",
			"Common Crate",
			"Bait Crate",
			"Mackerel",
			"Cod",
			"Amberjack",
			"Sardine",
			"Halibut",
			"Salmon",
			"Mullet",
			"Bluefin Tuna",
			"Yellowfin Tuna",
			"Barracuda",
			"Sea Bass",
			"Chinook Salmon",
			"Sea Pickle",
			"Swordfish",
			"Anglerfish",
			"Coelacanth",
			"Sailfish",
			"Stingray",
			"Sawfish",
			"Moonfish",
			"Dolphin",
			"Flying Fish",
			"Colossal Squid",
			"Oarfish",
			"Crown Bass",
			"Mythic Fish",
			"Heartbreak Herring",
			"Rose Rockfish",
			"Pink Betta",
			"Lovestorm Turtle"
		},
		RarityBaseChanceBoosts = {
			Trash = 0.1,
			Common = 0.3,
			Rare = 0.5
		}
	},
	["Supercharged Lovestorm"] = {
		Priority = 101,
		CantBeWormholed = true,
		IsHunt = true,
		Pool = {
			"Tire",
			"Boot",
			"Common Crate",
			"Seaweed",
			"Carbon Crate",
			"Quality Bait Crate",
			"Common Crate",
			"Bait Crate",
			"Mackerel",
			"Cod",
			"Amberjack",
			"Sardine",
			"Halibut",
			"Salmon",
			"Mullet",
			"Bluefin Tuna",
			"Yellowfin Tuna",
			"Barracuda",
			"Sea Bass",
			"Chinook Salmon",
			"Sea Pickle",
			"Swordfish",
			"Anglerfish",
			"Coelacanth",
			"Sailfish",
			"Stingray",
			"Sawfish",
			"Moonfish",
			"Dolphin",
			"Flying Fish",
			"Colossal Squid",
			"Oarfish",
			"Crown Bass",
			"Mythic Fish",
			"Heartbreak Herring",
			"Rose Rockfish",
			"Pink Betta",
			"Lovestorm Turtle Supercharged"
		},
		RarityBaseChanceBoosts = {
			Trash = 0.1,
			Common = 0.3,
			Rare = 0.5
		}
	},
	["Sacred Lovestorm"] = {
		Priority = 102,
		CantBeWormholed = true,
		IsHunt = true,
		Pool = {
			"Tire",
			"Boot",
			"Common Crate",
			"Seaweed",
			"Carbon Crate",
			"Quality Bait Crate",
			"Common Crate",
			"Bait Crate",
			"Mackerel",
			"Cod",
			"Amberjack",
			"Sardine",
			"Halibut",
			"Salmon",
			"Mullet",
			"Bluefin Tuna",
			"Yellowfin Tuna",
			"Barracuda",
			"Sea Bass",
			"Chinook Salmon",
			"Sea Pickle",
			"Swordfish",
			"Anglerfish",
			"Coelacanth",
			"Sailfish",
			"Stingray",
			"Sawfish",
			"Moonfish",
			"Dolphin",
			"Flying Fish",
			"Colossal Squid",
			"Oarfish",
			"Crown Bass",
			"Mythic Fish",
			"Heartbreak Herring",
			"Rose Rockfish",
			"Pink Betta",
			"Sacred Lovestorm Turtle"
		},
		RarityBaseChanceBoosts = {
			Trash = 0.1,
			Common = 0.3,
			Rare = 0.5
		}
	},
	Tidefall = {
		CantBeWormholed = false,
		Priority = 1,
		Disturbs = "TidefallDripstoneCollapse",
		Pool = {
			"Rock",
			"Stalactite",
			"Dripstone",
			"Sixgill Shark",
			"Lanternfish",
			"Giant Grouper",
			"Pelagic Cod",
			"Bumpy Snailfish",
			"Metal Strongbox",
			"Forbidden Plesiosaur"
		}
	},
	["Tidefall Castle"] = {
		CantBeWormholed = true,
		Priority = 1,
		Disturbs = "Plesiosaur",
		Pool = {
			"Rock",
			"Stalactite",
			"Dripstone",
			"Sixgill Shark",
			"Lanternfish",
			"Giant Grouper",
			"Pelagic Cod",
			"Bumpy Snailfish",
			"Metal Strongbox",
			"Gold Piece",
			"Forbidden Plesiosaur"
		},
		CustomCondition = function(_, p44) --[[ CustomCondition ]] -- line: 1327
			if not p44.Data.NewFormat.Tidefall.Obelisks.GateOpen then
				return false, "You have not yet unlocked this area."
			end

			return true
		end
	},
	["Coral Bastion"] = {
		Disturbs = "ReefTitan",
		CantBeWormholed = false,
		Priority = 2,
		Pool = {
			"Sand Dollar",
			"Stalactite",
			"Seaweed",
			"Batfish",
			"Sand Tiger Shark",
			"Emperor Angelfish",
			"Regal Angelfish",
			"Bigeye Trevally",
			"Atlantic Goliath Grouper"
		}
	},
	["Sunken Reliquary"] = {
		Disturbs = "Omnithal",
		CantBeWormholed = false,
		Priority = 2,
		Pool = {
			"Rock",
			"Stalactite",
			"Dripstone",
			"Deepwater Stingray",
			"Flying Gurnard",
			"Small-Spotted Catshark",
			"Oilfish",
			"Escolar",
			"Cusk Eel",
			"Porcupinefish",
			"John Dory",
			"Cornetfish"
		}
	},
	["Collapsed Ruins"] = {
		Disturbs = "Pliosaur",
		CantBeWormholed = false,
		Priority = 2,
		Pool = {
			"Rock",
			"Dripstone",
			"Scrap Metal",
			"Copper Rockfish",
			"Roughhead Grenadier",
			"Longnose Chimaera",
			"Bigeye Houndshark",
			"Atlantic Halosaur",
			"Blackfin Barracuda",
			"Black Scabbardfish"
		}
	},
	["Crowned Ruins"] = {
		Disturbs = "Goldwraith",
		CantBeWormholed = false,
		Priority = 3,
		Pool = {
			"Scrap Metal",
			"Gnomefish",
			"Blackmouth Catshark",
			"Silver Roughy",
			"Roundnose Grenadier",
			"Armorhead",
			"Blackspot Tuskfish",
			"Spotted Drum",
			"Greater Weever",
			"Black Snoek"
		}
	},
	["Plesiosaur Hunt"] = {
		Priority = 4,
		CantBeWormholed = true,
		IsHunt = true,
		Pool = {
			"Rock",
			"Stalactite",
			"Dripstone",
			"Sixgill Shark",
			"Lanternfish",
			"Pelagic Cod",
			"Bumpy Snailfish",
			"Metal Strongbox",
			"Forbidden Plesiosaur"
		},
		CustomCondition = function(_, p46) --[[ CustomCondition ]] -- line: 1466
			if not p46.Data.NewFormat.Tidefall.Obelisks.GateOpen then
				return false, "You have not yet unlocked this area."
			end

			return true
		end
	},
	["Reef Titan Hunt"] = {
		Priority = 4,
		CantBeWormholed = true,
		IsHunt = true,
		Pool = {
			"Sand Dollar",
			"Stalactite",
			"Seaweed",
			"Batfish",
			"Sand Tiger Shark",
			"Emperor Angelfish",
			"Regal Angelfish",
			"Bigeye Trevally",
			"Atlantic Goliath Grouper"
		}
	},
	["Omnithal Hunt"] = {
		Priority = 4,
		CantBeWormholed = true,
		IsHunt = true,
		Pool = {
			"Rock",
			"Stalactite",
			"Dripstone",
			"Deepwater Stingray",
			"Flying Gurnard",
			"Small-Spotted Catshark",
			"Oilfish",
			"Escolar",
			"Cusk Eel",
			"Porcupinefish",
			"John Dory",
			"Cornetfish"
		}
	},
	["Pliosaur Hunt"] = {
		Priority = 4,
		CantBeWormholed = true,
		IsHunt = true,
		Pool = {
			"Rock",
			"Dripstone",
			"Scrap Metal",
			"Copper Rockfish",
			"Roughhead Grenadier",
			"Longnose Chimaera",
			"Bigeye Houndshark",
			"Atlantic Halosaur",
			"Blackfin Barracuda",
			"Black Scabbardfish"
		}
	},
	["Goldwraith Hunt"] = {
		Priority = 4,
		CantBeWormholed = true,
		IsHunt = true,
		Pool = {
			"Scrap Metal",
			"Gnomefish",
			"Blackmouth Catshark",
			"Silver Roughy",
			"Roundnose Grenadier",
			"Armorhead",
			"Blackspot Tuskfish",
			"Spotted Drum",
			"Greater Weever",
			"Black Snoek"
		}
	},
	["New Years"] = {
		CantBeWormholed = true,
		Priority = 5,
		Pool = {
			"Eonshell",
			"Confetti Carp",
			"Party Pufferfish",
			"Party Popperfish",
			"Sparkler Sardine",
			"Sparkling Corkfin"
		}
	},
	["Glacial Ridge"] = {
		Priority = 104,
		CantBeWormholed = true,
		Pool = {
			"Ice",
			"Tire",
			"Carbon Crate",
			"Common Crate",
			"Bait Crate",
			"Fish Barrel",
			"Cod",
			"Sardine",
			"Salmon",
			"Sea Bass",
			"Porgy",
			"Arctic Char",
			"Pollock",
			"Red Drum",
			"Herring",
			"Bluegill",
			"Lingcod",
			"Mullet",
			"Skipjack Tuna",
			"Glacierfish",
			"Moonfish",
			"Colossal Squid",
			"Ringle",
			"Snowball"
		}
	},
	["Northstar Village"] = {
		Priority = 105,
		CantBeWormholed = true,
		Pool = {
			"Peppermint Pike",
			"Stockingfish",
			"Wreath Wrasse",
			"Holly Haddock",
			"Tinsel Trout",
			"Candy Cane Cod",
			"Candy Cane",
			"Hot Cocoa",
			"Gingerbread Man",
			"Glass of Eggnog",
			"Snowball",
			"Ornament Pufferfish",
			"Mistletoe Minnow",
			"Carol Carp",
			"Reindeer Ray",
			"Elf Eel",
			"Nutcracker Catfish",
			"Fruitcake Flounder",
			"Bauble Bass",
			"Bellfin",
			"Jolly Bait Crate",
			"Present",
			"Snowy Present",
			"Santa's Present",
			"Merry Manta Ray",
			"Santa Whale Shark",
			"Northstar Whale",
			"Festive Relic"
		}
	},
	["Cryoshock Serpent"] = {
		Priority = 106,
		CantBeWormholed = true,
		ExclusiveRods = {
			{
				"Christmas Tree Rod",
				"Gingerbread Rod",
				"Peppermint Rod",
				"Jinglestar Rod",
				"Santa's Miracle Rod",
				"Maelstrom",
				"Boreal Rod",
				"Cryolash",
				"North Pole",
				"Candy Cane Rod",
				"North-Star Rod",
				"Antler Rod",
				"Krampus's Rod",
				"Frost Warden Rod",
				"Fischmas Rod",
				"Frostfire Rod"
			},
			"Your rod lacks the magic of Fischmas..."
		},
		Pool = {
			"Peppermint Pike",
			"Stockingfish",
			"Wreath Wrasse",
			"Holly Haddock",
			"Tinsel Trout",
			"Candy Cane Cod",
			"Candy Cane",
			"Hot Cocoa",
			"Gingerbread Man",
			"Glass of Eggnog",
			"Snowball",
			"Ornament Pufferfish",
			"Mistletoe Minnow",
			"Carol Carp",
			"Reindeer Ray",
			"Elf Eel",
			"Nutcracker Catfish",
			"Fruitcake Flounder",
			"Bauble Bass",
			"Bellfin",
			"Jolly Bait Crate",
			"Present",
			"Snowy Present",
			"Santa's Present",
			"Merry Manta Ray",
			"Santa Whale Shark",
			"Northstar Whale",
			"Festive Relic",
			"Cryoshock Serpent"
		},
		CustomCondition = function(p47, p48, p49) --[[ CustomCondition ]] -- line: 1721
			-- upvalues: ReplicatedStorage (copy)
			if not p47:GetAttribute("CanCatchCryoshock") or ReplicatedStorage.world.weather.Value ~= "Frost_Moon" then
				return false, "You have not yet awakened the serpent."
			end

			local Stats = p49:FindFirstChild("Stats")
			local v54 = Stats and Stats:FindFirstChild("rod")

			if not v54 then
				return false, "Your rod lacks the magic of Fischmas..."
			end

			local v55 = p48.Data.NewFormat.Rods[v54.Value]

			if not v55 then
				return false, "Your rod lacks the magic of Fischmas..."
			end

			if v55.enchant == "Merry" or v55.enchant == "Gingerbread" then
				return true
			end

			if v55.secondaryEnchant == "Peppermint" then
				return true
			end

			return false, "Your rod lacks the magic of Fischmas..."
		end
	},
	MapleMeadows = {
		CantBeWormholed = true,
		Priority = 2,
		Pool = {
			"Cod",
			"Tire",
			"Boot",
			"Common Crate",
			"Bait Crate",
			"Fish Barrel",
			"Seaweed",
			"Boots",
			"Amberjack",
			"Nurse Shark",
			"Porgy",
			"Sardine",
			"Halibut",
			"Mullet",
			"Salmon",
			"Yellowfin Tuna",
			"Sea Bass",
			"Chinook Salmon",
			"Haddock",
			"Barracuda",
			"Sea Pickle",
			"Bountiful Bait Crate",
			"Poseidon Turkey",
			"Coral Turkey",
			"Magma Turkey",
			"Sunny Turkey",
			"Pirate Turkey",
			"Lost Turkey",
			"Slate Turkey",
			"Ghost Turkey",
			"Mossy Turkey",
			"Frosty Turkey",
			"Murky Turkey",
			"Pioneer Turkey"
		}
	},
	HallOfWhispers = {
		CantBeWormholed = true,
		Priority = 2,
		Pool = {
			"Rock",
			"Destroyed Fossil",
			"Bone",
			"Stalactite",
			"Typhleotris",
			"Gollum Snakehead",
			"Stoplight Loosejaw",
			"Garra Andruzzii",
			"Blind Swamp Eel",
			"Key of Oaths",
			"Cathulid"
		},
		CustomCondition = function(_, p51) --[[ CustomCondition ]] -- line: 1814
			if not p51.Data.NewFormat.TerrapinExpansion.HasUnlockedInitialHiddenArea then
				return false, "The fish ignore you completely... Maybe it's best to get here <b>normally</b>."
			end

			return true
		end
	},
	PassageOfOaths = {
		CantBeWormholed = true,
		Priority = 2,
		Pool = {
			"Rock",
			"Destroyed Fossil",
			"Bone",
			"Stalactite",
			"Sloane's Viperfish",
			"Spiny Hatchetfish",
			"Swampfish",
			"Garra Typhlops",
			"Abyssal Grenadier",
			"Cathulith"
		},
		CustomCondition = function(_, p53) --[[ CustomCondition ]] -- line: 1840
			for _, v61 in p53.Data.NewFormat.TerrapinExpansion.HallOfWhispers.PassageRequirements do
				if not v61 then
					return false, "The fish ignore you completely... Maybe it's best to get here <b>normally</b>."
				end
			end

			return true
		end
	},
	MossjawHunt = {
		CantBeWormholed = true,
		Priority = 4,
		IsHunt = true,
		Pool = {
			"Bronze Corydoras",
			"Neon Tetra",
			"Cardinal Tetra",
			"Redeye Piranha",
			"Black Ghost Knifefish",
			"Electric Eel",
			"Pirarucu"
		},
		CustomCondition = function(_, p55) --[[ CustomCondition ]] -- line: 1865
			local n1 = 0

			for _, v66 in p55.Data.NewFormat.LostJungle.Runes.Placed do
				if v66 then
					n1 += 1
				end
			end

			if n1 < 5 then
				return false, "You must place all 5 runes before fishing here."
			end

			return true
		end
	},
	["Frostwyrm Hunt"] = {
		Priority = 4,
		CantBeWormholed = true,
		IsHunt = true,
		Pool = {
			"Ice",
			"Bone",
			"Stalactite",
			"Antarctic Icefish",
			"Saffron Cod",
			"Greenland Halibut",
			"Glacial Squid"
		},
		CustomCondition = function(_, _) --[[ CustomCondition ]] -- line: 1895
			return true
		end
	},
	["Boreal Pines"] = {
		CantBeWormholed = false,
		Priority = 1,
		Pool = {
			"Ice",
			"Antarctic Icefish",
			"Saffron Cod",
			"Greenland Halibut"
		}
	},
	["Boreal Pines - Ice Fishing"] = {
		CantBeWormholed = false,
		Priority = 2,
		Pool = {
			"Ice",
			"Antarctic Icefish",
			"Saffron Cod",
			"Greenland Halibut",
			"Eelpout",
			"Fourhorn Sculpin"
		}
	},
	["Boreal Pines - Cave"] = {
		Disturbs = "FrostwyrmHunt",
		CantBeWormholed = false,
		Priority = 2,
		Pool = {
			"Ice",
			"Bone",
			"Stalactite",
			"Antarctic Icefish",
			"Saffron Cod",
			"Greenland Halibut",
			"Glacial Squid"
		}
	},
	["Boreal Pines - Peak"] = {
		CantBeWormholed = false,
		Priority = 2,
		Pool = {
			"Ice",
			"Antarctic Icefish",
			"Polar Cod",
			"Saffron Cod",
			"Greenland Halibut",
			"Lake Whitefish"
		}
	},
	["Luminescent Cavern"] = {
		CantBeWormholed = false,
		Priority = 2,
		Pool = {
			"Rock",
			"Stalactite",
			"Hawaiian Bobtail Squid",
			"Blue Ribbon Eel",
			"Bluelip Batfish",
			"Kitefin Shark",
			"Atolla Jellyfish"
		},
		Disturbs = {
			"ColossalEtherealDragon",
			"ColossalBlueDragon"
		}
	},
	["Lost Jungle"] = {
		CantBeWormholed = false,
		Priority = 2,
		Pool = {
			"Driftwood",
			"Neon Tetra",
			"Cardinal Tetra",
			"Bronze Corydoras",
			"Freshwater Pacu",
			"Redeye Piranha",
			"Black Ghost Knifefish",
			"Payara",
			"Electric Eel",
			"Pirarucu",
			"Goliath Tigerfish",
			"Paradox Piranha"
		}
	},
	["Mossjaw Rest"] = {
		Disturbs = "MossjawHunt",
		CantBeWormholed = false,
		Priority = 3,
		Pool = {
			"Driftwood",
			"Rock",
			"Stalactite",
			"Redeye Piranha",
			"Black Ghost Knifefish",
			"Payara",
			"Electric Eel",
			"Pirarucu",
			"Goliath Tigerfish",
			"Paradox Piranha"
		}
	},
	["Crimson Cavern"] = {
		CantBeWormholed = false,
		Priority = 2,
		Pool = {
			"Rock",
			"Stalactite",
			"Sea Raven",
			"Red Fangtooth",
			"Viperfish",
			"Japanese Dragon Eel",
			"Vampire Squid"
		},
		Disturbs = {
			"ColossalAncientDragon",
			"ColossalEtherealDragon"
		},
		CustomCondition = function(_, p59) --[[ CustomCondition ]] -- line: 2054
			if not p59.Data.NewFormat.LuminescentCavern.KeystoneData.CrimsonCavernUnlocked then
				return false, "You must unlock the Crimson Cavern before fishing here."
			end

			return true
		end
	},
	["Cultist Lair"] = {
		CantBeWormholed = false,
		Priority = 2,
		Pool = {
			"Rock",
			"Destroyed Fossil",
			"Bone",
			"Stalactite",
			"Mexican Tetra",
			"Abyssal Slickhead",
			"Cave Loach",
			"Scaly Dragonfish",
			"Sinocyclocheilus",
			"Key of Whispers"
		},
		CustomCondition = function(_, p61) --[[ CustomCondition ]] -- line: 2084
			if not p61.Data.NewFormat.TerrapinExpansion.HasUnlockedInitialHiddenArea then
				return false, "The fish ignore you completely... Maybe it's best to get here <b>normally</b>."
			end

			return true
		end
	},
	["Hall of Whispers"] = {
		CantBeWormholed = false,
		Priority = 2,
		Pool = {
			"Rock",
			"Destroyed Fossil",
			"Bone",
			"Stalactite",
			"Typhleotris",
			"Gollum Snakehead",
			"Stoplight Loosejaw",
			"Garra Andruzzii",
			"Blind Swamp Eel",
			"Key of Oaths"
		},
		CustomCondition = function(_, p63) --[[ CustomCondition ]] -- line: 2110
			if not p63.Data.NewFormat.TerrapinExpansion.HasUnlockedInitialHiddenArea then
				return false, "The fish ignore you completely... Maybe it's best to get here <b>normally</b>."
			end

			return true
		end
	},
	["Passage of Oaths"] = {
		CantBeWormholed = false,
		Priority = 2,
		Pool = {
			"Rock",
			"Destroyed Fossil",
			"Bone",
			"Stalactite",
			"Sloane's Viperfish",
			"Spiny Hatchetfish",
			"Swampfish",
			"Garra Typhlops",
			"Abyssal Grenadier"
		},
		CustomCondition = function(_, p65) --[[ CustomCondition ]] -- line: 2135
			for _, v78 in p65.Data.NewFormat.TerrapinExpansion.HallOfWhispers.PassageRequirements do
				if not v78 then
					return false, "The fish ignore you completely... Maybe it's best to get here <b>normally</b>."
				end
			end

			return true
		end
	},
	["The Sanctum"] = {
		CantBeWormholed = false,
		Priority = 2,
		Disturbs = "The Sanctum Hunt",
		Pool = {
			"Rock",
			"Cave Angel Fish",
			"Ozark Cavefish",
			"Cave Loach",
			"Stoplight Loosejaw",
			"Scaly Dragonfish",
			"Spiny Hatchetfish",
			"Swampfish"
		},
		CustomCondition = function(_, p67) --[[ CustomCondition ]] -- line: 2165
			if not p67.Data.NewFormat.TerrapinExpansion.UnlockedSanctum then
				return false, "The fish ignore you completely... Maybe it's best to get here <b>normally</b>."
			end

			return true
		end
	},
	["The Sanctum Hunt"] = {
		CantBeWormholed = true,
		Priority = 3,
		IsHunt = true,
		Pool = {
			"Cave Angel Fish",
			"Ozark Cavefish",
			"Cave Loach",
			"Stoplight Loosejaw",
			"Scaly Dragonfish",
			"Spiny Hatchetfish",
			"Swampfish",
			"Leviathan"
		},
		CustomCondition = function(_, p69) --[[ CustomCondition ]] -- line: 2193
			if not p69.Data.NewFormat.TerrapinExpansion.UnlockedSanctum then
				return false, "The fish ignore you completely... Maybe it's best to get here <b>normally</b>."
			end

			return true
		end
	},
	["The Sanctum Profane Hunt"] = {
		CantBeWormholed = true,
		Priority = 3,
		IsHunt = true,
		Pool = {
			"Cave Angel Fish",
			"Ozark Cavefish",
			"Cave Loach",
			"Stoplight Loosejaw",
			"Scaly Dragonfish",
			"Spiny Hatchetfish",
			"Swampfish",
			"Profane Leviathan"
		},
		CustomCondition = function(_, p71) --[[ CustomCondition ]] -- line: 2221
			if not p71.Data.NewFormat.TerrapinExpansion.UnlockedSanctum then
				return false, "The fish ignore you completely... Maybe it's best to get here <b>normally</b>."
			end

			return true
		end
	},
	["The Sanctum Shamrock Hunt"] = {
		CantBeWormholed = true,
		Priority = 3,
		IsHunt = true,
		Pool = {
			"Cave Angel Fish",
			"Ozark Cavefish",
			"Cave Loach",
			"Stoplight Loosejaw",
			"Scaly Dragonfish",
			"Spiny Hatchetfish",
			"Swampfish",
			"Shamrock Leviathan"
		},
		CustomCondition = function(_, p73) --[[ CustomCondition ]] -- line: 2249
			if not p73.Data.NewFormat.TerrapinExpansion.UnlockedSanctum then
				return false, "The fish ignore you completely... Maybe it's best to get here <b>normally</b>."
			end

			return true
		end
	},
	["Carrot Garden"] = {
		Priority = 102,
		CantBeWormholed = false,
		MutationIndicatorEnabled = true,
		Pool = {
			"Carrot Turtle",
			"Carrot Pufferfish",
			"Carrot Minnow",
			"Carrot Eel",
			"Carrot Salmon",
			"Carrot Goldfish",
			"Carrot Snapper",
			"Carrot Shark"
		}
	},
	["AFK Pool - Trading Plaza"] = {
		CantBeWormholed = true,
		Priority = 3,
		Pool = { "Doubloon" },
		CustomCondition = function(_, _, p76) --[[ CustomCondition ]] -- line: 2304
			local v90 = p76 and p76:FindFirstChild("Stats")

			if not v90 or (not v90:FindFirstChild("realLevel") or v90.realLevel.Value < 25) then
				return false, "You must reach Level 25 before fishing here."
			end

			return true
		end
	},
	["Gilded Arch"] = {
		CantBeWormholed = true,
		Priority = 2,
		Pool = {
			"Squirrelfish",
			"French Grunt",
			"Sergeant Major",
			"Coney Grouper",
			"Doctorfish Tang",
			"Bluehead Wrasse",
			"Islandhopper Butterflyfish",
			"Stoplight Parrotfish",
			"Scrawled Filefish",
			"Spadefish",
			"Ocean Triggerfish",
			"Rock Hind",
			"Rainbow Grouper",
			"Spotted Moray Eel",
			"Great Barracuda",
			"Tilefish",
			"Black Grouper"
		}
	},
	["Castaway Cliffs"] = {
		CantBeWormholed = false,
		Priority = 2,
		Pool = {
			"Clowned Triggerfish",
			"Flamekissed Hawkfish",
			"Mandarinfish",
			"Cobalt Angelfish",
			"Trevally",
			"Warty Frogfish",
			"Hidden Pipefish",
			"Mirage Toadfish",
			"Scalloped Hammerhead",
			"Great Goldcursed Shark",
			"Razorfin"
		}
	},
	["Magician Narwhal - Sea 2"] = {
		CantBeWormholed = true,
		Priority = 5,
		Pool = {
			"Cursed Thread",
			"Hogchoker",
			"Rock Gunnel",
			"Pupfish",
			"Four Eyes Fish",
			"Black Swallower",
			"Warty Angler",
			"Tropical Bait Crate",
			"Lumpclinger",
			"Snipefish",
			"Boarfish",
			"Telescopefish",
			"Fangtooth",
			"Velvet Belly Lanternshark",
			"Snakehead",
			"Sarcastic Fringehead",
			"Knifefish",
			"Tripod Fish",
			"Pelican Eel",
			"Bigfin Squid",
			"X-ray Tetra",
			"Psychedelic Frogfish",
			"Dogefin",
			"Toilet Fish",
			"Magician Narwhal"
		}
	},
	["Magician Narwhal - Sea 1"] = {
		CantBeWormholed = true,
		Priority = 5,
		Pool = {
			"Tire",
			"Boot",
			"Common Crate",
			"Bait Crate",
			"Fish Barrel",
			"Seaweed",
			"Boots",
			"Mackerel",
			"Cod",
			"Amberjack",
			"Nurse Shark",
			"Porgy",
			"Sardine",
			"Halibut",
			"Mullet",
			"Salmon",
			"Yellowfin Tuna",
			"Sea Bass",
			"Chinook Salmon",
			"Haddock",
			"Barracuda",
			"Sea Pickle",
			"Pufferfish",
			"Swordfish",
			"Bluefin Tuna",
			"Sailfish",
			"Stingray",
			"Sawfish",
			"Moonfish",
			"Crown Bass",
			"Dolphin",
			"Flying Fish",
			"Mythic Fish",
			"Long Pike",
			"Mustard",
			"Magician Narwhal"
		}
	},
	["Beluga - Sea 2"] = {
		CantBeWormholed = true,
		Priority = 5,
		Pool = {
			"Cursed Thread",
			"Hogchoker",
			"Rock Gunnel",
			"Pupfish",
			"Four Eyes Fish",
			"Black Swallower",
			"Warty Angler",
			"Tropical Bait Crate",
			"Lumpclinger",
			"Snipefish",
			"Boarfish",
			"Telescopefish",
			"Fangtooth",
			"Velvet Belly Lanternshark",
			"Snakehead",
			"Sarcastic Fringehead",
			"Knifefish",
			"Tripod Fish",
			"Pelican Eel",
			"Bigfin Squid",
			"X-ray Tetra",
			"Psychedelic Frogfish",
			"Dogefin",
			"Toilet Fish",
			"Beluga"
		}
	},
	["Beluga - Sea 1"] = {
		CantBeWormholed = true,
		Priority = 5,
		Pool = {
			"Tire",
			"Boot",
			"Common Crate",
			"Bait Crate",
			"Fish Barrel",
			"Seaweed",
			"Boots",
			"Mackerel",
			"Cod",
			"Amberjack",
			"Nurse Shark",
			"Porgy",
			"Sardine",
			"Halibut",
			"Mullet",
			"Salmon",
			"Yellowfin Tuna",
			"Sea Bass",
			"Chinook Salmon",
			"Haddock",
			"Barracuda",
			"Sea Pickle",
			"Pufferfish",
			"Swordfish",
			"Bluefin Tuna",
			"Sailfish",
			"Stingray",
			"Sawfish",
			"Moonfish",
			"Crown Bass",
			"Dolphin",
			"Flying Fish",
			"Mythic Fish",
			"Long Pike",
			"Mustard",
			"Beluga"
		}
	},
	["Narwhal - Sea 2"] = {
		CantBeWormholed = true,
		Priority = 5,
		Pool = {
			"Cursed Thread",
			"Hogchoker",
			"Rock Gunnel",
			"Pupfish",
			"Four Eyes Fish",
			"Black Swallower",
			"Warty Angler",
			"Tropical Bait Crate",
			"Lumpclinger",
			"Snipefish",
			"Boarfish",
			"Telescopefish",
			"Fangtooth",
			"Velvet Belly Lanternshark",
			"Snakehead",
			"Sarcastic Fringehead",
			"Knifefish",
			"Tripod Fish",
			"Pelican Eel",
			"Bigfin Squid",
			"X-ray Tetra",
			"Psychedelic Frogfish",
			"Dogefin",
			"Toilet Fish",
			"Narwhal"
		}
	},
	["Narwhal - Sea 1"] = {
		CantBeWormholed = true,
		Priority = 5,
		Pool = {
			"Tire",
			"Boot",
			"Common Crate",
			"Bait Crate",
			"Fish Barrel",
			"Seaweed",
			"Boots",
			"Mackerel",
			"Cod",
			"Amberjack",
			"Nurse Shark",
			"Porgy",
			"Sardine",
			"Halibut",
			"Mullet",
			"Salmon",
			"Yellowfin Tuna",
			"Sea Bass",
			"Chinook Salmon",
			"Haddock",
			"Barracuda",
			"Sea Pickle",
			"Pufferfish",
			"Swordfish",
			"Bluefin Tuna",
			"Sailfish",
			"Stingray",
			"Sawfish",
			"Moonfish",
			"Crown Bass",
			"Dolphin",
			"Flying Fish",
			"Mythic Fish",
			"Long Pike",
			"Mustard",
			"Narwhal"
		}
	},
	["Apex Leviathan"] = {
		CantBeWormholed = true,
		Priority = 5,
		Pool = {
			"Cursed Thread",
			"Hogchoker",
			"Rock Gunnel",
			"Pupfish",
			"Four Eyes Fish",
			"Black Swallower",
			"Warty Angler",
			"Tropical Bait Crate",
			"Lumpclinger",
			"Snipefish",
			"Boarfish",
			"Telescopefish",
			"Fangtooth",
			"Velvet Belly Lanternshark",
			"Snakehead",
			"Sarcastic Fringehead",
			"Knifefish",
			"Tripod Fish",
			"Pelican Eel",
			"Bigfin Squid",
			"X-ray Tetra",
			"Psychedelic Frogfish",
			"Dogefin",
			"Toilet Fish",
			"Apex Leviathan"
		}
	},
	Mosslurker = {
		CantBeWormholed = true,
		Priority = 5,
		Pool = {
			"Tire",
			"Boot",
			"Common Crate",
			"Bait Crate",
			"Fish Barrel",
			"Seaweed",
			"Boots",
			"Mackerel",
			"Cod",
			"Amberjack",
			"Nurse Shark",
			"Porgy",
			"Sardine",
			"Halibut",
			"Mullet",
			"Salmon",
			"Yellowfin Tuna",
			"Sea Bass",
			"Chinook Salmon",
			"Haddock",
			"Barracuda",
			"Sea Pickle",
			"Pufferfish",
			"Swordfish",
			"Bluefin Tuna",
			"Sailfish",
			"Stingray",
			"Sawfish",
			"Moonfish",
			"Crown Bass",
			"Dolphin",
			"Flying Fish",
			"Mythic Fish",
			"Long Pike",
			"Mustard",
			"Mosslurker"
		}
	},
	["Bloop Fish"] = {
		CantBeWormholed = true,
		Priority = 5,
		IsHunt = true,
		Pool = {
			"Tire",
			"Boot",
			"Common Crate",
			"Bait Crate",
			"Fish Barrel",
			"Seaweed",
			"Boots",
			"Mackerel",
			"Cod",
			"Amberjack",
			"Nurse Shark",
			"Porgy",
			"Sardine",
			"Halibut",
			"Mullet",
			"Salmon",
			"Yellowfin Tuna",
			"Sea Bass",
			"Chinook Salmon",
			"Haddock",
			"Barracuda",
			"Sea Pickle",
			"Pufferfish",
			"Swordfish",
			"Bluefin Tuna",
			"Sailfish",
			"Stingray",
			"Sawfish",
			"Moonfish",
			"Crown Bass",
			"Dolphin",
			"Flying Fish",
			"Mythic Fish",
			"Long Pike",
			"Mustard",
			"Device Display",
			"Bloop Fish"
		}
	},
	["Baby Bloop Fish"] = {
		CantBeWormholed = true,
		Priority = 4,
		IsHunt = true,
		Pool = {
			"Tire",
			"Boot",
			"Common Crate",
			"Bait Crate",
			"Fish Barrel",
			"Seaweed",
			"Boots",
			"Mackerel",
			"Cod",
			"Amberjack",
			"Nurse Shark",
			"Porgy",
			"Sardine",
			"Halibut",
			"Mullet",
			"Salmon",
			"Yellowfin Tuna",
			"Sea Bass",
			"Chinook Salmon",
			"Haddock",
			"Barracuda",
			"Sea Pickle",
			"Pufferfish",
			"Swordfish",
			"Bluefin Tuna",
			"Sailfish",
			"Stingray",
			"Sawfish",
			"Moonfish",
			"Crown Bass",
			"Dolphin",
			"Flying Fish",
			"Mythic Fish",
			"Long Pike",
			"Mustard",
			"Device Display",
			"Baby Bloop Fish"
		}
	},
	["Shamrock Bloop Fish"] = {
		CantBeWormholed = true,
		Priority = 50,
		IsHunt = true,
		Pool = {
			"Tire",
			"Boot",
			"Common Crate",
			"Bait Crate",
			"Fish Barrel",
			"Seaweed",
			"Boots",
			"Mackerel",
			"Cod",
			"Amberjack",
			"Nurse Shark",
			"Porgy",
			"Sardine",
			"Halibut",
			"Mullet",
			"Salmon",
			"Yellowfin Tuna",
			"Sea Bass",
			"Chinook Salmon",
			"Haddock",
			"Barracuda",
			"Sea Pickle",
			"Pufferfish",
			"Swordfish",
			"Bluefin Tuna",
			"Sailfish",
			"Stingray",
			"Sawfish",
			"Moonfish",
			"Crown Bass",
			"Dolphin",
			"Flying Fish",
			"Mythic Fish",
			"Long Pike",
			"Mustard",
			"Device Display",
			"Shamrock Bloop Fish"
		}
	},
	["Colossal Ethereal Dragon"] = {
		CantBeWormholed = true,
		Priority = 3,
		IsHunt = true,
		Pool = {
			"Rock",
			"Stalactite",
			"Hawaiian Bobtail Squid",
			"Blue Ribbon Eel",
			"Bluelip Batfish",
			"Kitefin Shark",
			"Atolla Jellyfish"
		}
	},
	["Colossal Blue Dragon"] = {
		CantBeWormholed = true,
		Priority = 3,
		IsHunt = true,
		Pool = {
			"Rock",
			"Stalactite",
			"Hawaiian Bobtail Squid",
			"Blue Ribbon Eel",
			"Bluelip Batfish",
			"Kitefin Shark",
			"Atolla Jellyfish"
		}
	},
	["Colossal Ancient Dragon"] = {
		CantBeWormholed = true,
		Priority = 3,
		IsHunt = true,
		Pool = {
			"Rock",
			"Stalactite",
			"Sea Raven",
			"Red Fangtooth",
			"Viperfish",
			"Japanese Dragon Eel",
			"Vampire Squid"
		},
		CustomCondition = function(_, p78) --[[ CustomCondition ]] -- line: 2959
			if not p78.Data.NewFormat.LuminescentCavern.KeystoneData.CrimsonCavernUnlocked then
				return false, "You must unlock the Crimson Cavern before fishing here."
			end

			return true
		end
	},
	["Animal Pool"] = {
		Priority = 102,
		CantBeWormholed = true,
		Pool = {
			"Cluckfin",
			"Zebrafishlet",
			"Piglet Pike",
			"Squirrelray",
			"Duckfin Tuna",
			"Porcufish",
			"Piranhamunk",
			"Salmoose",
			"Mained Lionfish",
			"Seacow"
		}
	},
	["Animal Pool - Second Sea"] = {
		Priority = 102,
		CantBeWormholed = true,
		Pool = {
			"Minnowse",
			"Kittyfish",
			"Parrotfish",
			"Pengwhal",
			"Racuda",
			"Crocokoi",
			"Krabbit",
			"Siren Sheep",
			"Capybass"
		}
	},
	["Octophant Pool Without Elephant"] = {
		Priority = 4,
		CantBeWormholed = true,
		Pool = {
			"Shrimpanzee",
			"Royal Tigerfish",
			"Slurpfloth",
			"Flamangler",
			"Orcanda"
		}
	},
	["Octophant Pool With Elephant"] = {
		Priority = 4,
		CantBeWormholed = true,
		Pool = {
			"Shrimpanzee",
			"Royal Tigerfish",
			"Slurpfloth",
			"Flamangler",
			"Orcanda",
			"Octophant"
		}
	},
	["Sea Leviathan Pool"] = {
		Priority = 4,
		CantBeWormholed = true,
		Pool = {
			"Sea Leviathan",
			"Hogchoker",
			"Rock Gunnel",
			"Pupfish",
			"Four Eyes Fish",
			"Black Swallower",
			"Warty Angler",
			"Tropical Bait Crate",
			"Lumpclinger",
			"Snipefish",
			"Boarfish",
			"Telescopefish",
			"Fangtooth",
			"Velvet Belly Lanternshark",
			"Snakehead",
			"Sarcastic Fringehead",
			"Knifefish",
			"Tripod Fish",
			"Pelican Eel",
			"Bigfin Squid",
			"X-ray Tetra",
			"Psychedelic Frogfish",
			"Dogefin",
			"Toilet Fish"
		}
	},
	["Smurf Pool"] = {
		CantBeWormholed = true,
		ExclusiveRods = {
			{ "Smurf Rod" },
			"<font color=\"rgb(255,0,0)\">You must use the Smurf Rod in this pool!</font>"
		},
		Pool = {
			"Tire",
			"Boot",
			"Common Crate",
			"Bait Crate",
			"Fish Barrel",
			"Seaweed",
			"Boots",
			"Mackerel",
			"Cod",
			"Amberjack",
			"Nurse Shark",
			"Porgy",
			"Sardine",
			"Halibut",
			"Mullet",
			"Salmon",
			"Yellowfin Tuna",
			"Sea Bass",
			"Chinook Salmon",
			"Haddock",
			"Barracuda",
			"Sea Pickle",
			"Pufferfish",
			"Swordfish",
			"Bluefin Tuna",
			"Sailfish",
			"Stingray",
			"Sawfish",
			"Moonfish",
			"Crown Bass",
			"Dolphin",
			"Flying Fish",
			"Mythic Fish",
			"Long Pike",
			"Mustard",
			"Ken",
			"No Name",
			"Moxie",
			"Hefty",
			"Clumsy Smurf",
			"Brainy Smurf",
			"Mama Poot",
			"Vanity",
			"Grouchy Smurf"
		}
	},
	["Smurf Storm Pool"] = {
		CantBeWormholed = true,
		ExclusiveRods = {
			{ "Smurf Rod" },
			"<font color=\"rgb(255,0,0)\">You must use the Smurf Rod in this pool!</font>"
		},
		Pool = {
			"Tire",
			"Boot",
			"Common Crate",
			"Bait Crate",
			"Fish Barrel",
			"Seaweed",
			"Boots",
			"Mackerel",
			"Pufferfish",
			"Swordfish",
			"Sawfish",
			"Moonfish",
			"Mythic Fish",
			"Long Pike",
			"Mustard",
			"Ken",
			"No Name",
			"Moxie",
			"Hefty",
			"Clumsy Smurf",
			"Brainy Smurf",
			"Mama Poot",
			"Vanity",
			"Papa Smurf",
			"Grouchy Smurf"
		}
	},
	["Sunny O'Coin"] = {
		CantBeWormholed = true,
		Priority = 5,
		Pool = {
			"Tire",
			"Boot",
			"Common Crate",
			"Bait Crate",
			"Fish Barrel",
			"Seaweed",
			"Boots",
			"Mackerel",
			"Cod",
			"Amberjack",
			"Nurse Shark",
			"Porgy",
			"Sardine",
			"Halibut",
			"Mullet",
			"Salmon",
			"Yellowfin Tuna",
			"Sea Bass",
			"Chinook Salmon",
			"Haddock",
			"Barracuda",
			"Sea Pickle",
			"Pufferfish",
			"Swordfish",
			"Bluefin Tuna",
			"Sailfish",
			"Stingray",
			"Sawfish",
			"Moonfish",
			"Crown Bass",
			"Dolphin",
			"Flying Fish",
			"Mythic Fish",
			"Long Pike",
			"Mustard",
			"Sunny O'Coin"
		}
	},
	["Rowdy McCharm"] = {
		CantBeWormholed = true,
		Priority = 5,
		Pool = {
			"Tire",
			"Boot",
			"Common Crate",
			"Bait Crate",
			"Fish Barrel",
			"Seaweed",
			"Boots",
			"Mackerel",
			"Cod",
			"Amberjack",
			"Nurse Shark",
			"Porgy",
			"Sardine",
			"Halibut",
			"Mullet",
			"Salmon",
			"Yellowfin Tuna",
			"Sea Bass",
			"Chinook Salmon",
			"Haddock",
			"Barracuda",
			"Sea Pickle",
			"Pufferfish",
			"Swordfish",
			"Bluefin Tuna",
			"Sailfish",
			"Stingray",
			"Sawfish",
			"Moonfish",
			"Crown Bass",
			"Dolphin",
			"Flying Fish",
			"Mythic Fish",
			"Long Pike",
			"Mustard",
			"Rowdy McCharm"
		}
	},
	["Plumrick O'Luck"] = {
		CantBeWormholed = true,
		Priority = 5,
		Pool = {
			"Tire",
			"Boot",
			"Common Crate",
			"Bait Crate",
			"Fish Barrel",
			"Seaweed",
			"Boots",
			"Mackerel",
			"Cod",
			"Amberjack",
			"Nurse Shark",
			"Porgy",
			"Sardine",
			"Halibut",
			"Mullet",
			"Salmon",
			"Yellowfin Tuna",
			"Sea Bass",
			"Chinook Salmon",
			"Haddock",
			"Barracuda",
			"Sea Pickle",
			"Pufferfish",
			"Swordfish",
			"Bluefin Tuna",
			"Sailfish",
			"Stingray",
			"Sawfish",
			"Moonfish",
			"Crown Bass",
			"Dolphin",
			"Flying Fish",
			"Mythic Fish",
			"Long Pike",
			"Mustard",
			"Plumrick O'Luck"
		}
	},
	["O'Mango Goldgrin"] = {
		CantBeWormholed = true,
		Priority = 5,
		Pool = {
			"Tire",
			"Boot",
			"Common Crate",
			"Bait Crate",
			"Fish Barrel",
			"Seaweed",
			"Boots",
			"Mackerel",
			"Cod",
			"Amberjack",
			"Nurse Shark",
			"Porgy",
			"Sardine",
			"Halibut",
			"Mullet",
			"Salmon",
			"Yellowfin Tuna",
			"Sea Bass",
			"Chinook Salmon",
			"Haddock",
			"Barracuda",
			"Sea Pickle",
			"Pufferfish",
			"Swordfish",
			"Bluefin Tuna",
			"Sailfish",
			"Stingray",
			"Sawfish",
			"Moonfish",
			"Crown Bass",
			"Dolphin",
			"Flying Fish",
			"Mythic Fish",
			"Long Pike",
			"Mustard",
			"O'Mango Goldgrin"
		}
	},
	["Clover McRich"] = {
		CantBeWormholed = true,
		Priority = 5,
		Pool = {
			"Tire",
			"Boot",
			"Common Crate",
			"Bait Crate",
			"Fish Barrel",
			"Seaweed",
			"Boots",
			"Mackerel",
			"Cod",
			"Amberjack",
			"Nurse Shark",
			"Porgy",
			"Sardine",
			"Halibut",
			"Mullet",
			"Salmon",
			"Yellowfin Tuna",
			"Sea Bass",
			"Chinook Salmon",
			"Haddock",
			"Barracuda",
			"Sea Pickle",
			"Pufferfish",
			"Swordfish",
			"Bluefin Tuna",
			"Sailfish",
			"Stingray",
			"Sawfish",
			"Moonfish",
			"Crown Bass",
			"Dolphin",
			"Flying Fish",
			"Mythic Fish",
			"Long Pike",
			"Mustard",
			"Clover McRich"
		}
	},
	["Blarney McBreeze"] = {
		CantBeWormholed = true,
		Priority = 5,
		Pool = {
			"Tire",
			"Boot",
			"Common Crate",
			"Bait Crate",
			"Fish Barrel",
			"Seaweed",
			"Boots",
			"Mackerel",
			"Cod",
			"Amberjack",
			"Nurse Shark",
			"Porgy",
			"Sardine",
			"Halibut",
			"Mullet",
			"Salmon",
			"Yellowfin Tuna",
			"Sea Bass",
			"Chinook Salmon",
			"Haddock",
			"Barracuda",
			"Sea Pickle",
			"Pufferfish",
			"Swordfish",
			"Bluefin Tuna",
			"Sailfish",
			"Stingray",
			"Sawfish",
			"Moonfish",
			"Crown Bass",
			"Dolphin",
			"Flying Fish",
			"Mythic Fish",
			"Long Pike",
			"Mustard",
			"Blarney McBreeze"
		}
	},
	["Ashfall Pool"] = {
		CantBeWormholed = true,
		Priority = 1,
		Pool = {
			"Ember Catfish",
			"Blistered Eel",
			"Lava Lamprey",
			"Molten Minnow",
			"Pyro Pike",
			"Cinder Carp",
			"Coelacanth",
			"Scooty Salmon",
			"Burnt Betta",
			"Ashcloud Archerfish"
		}
	},
	["Cults Curse Pool"] = {
		CantBeWormholed = true,
		Priority = 1,
		Pool = {
			"The Whispering One",
			"Profane Ray",
			"Veilborn Parasite",
			"Bloodscript Eel",
			"Abyssal Maw",
			"Eldritch Spineback",
			"Hollow Gazer",
			"Wretched Guppy"
		}
	},
	["Ancient Orcas Pool"] = {
		CantBeWormholed = true,
		Priority = 4,
		Pool = {
			"Ancient Orca",
			"Tire",
			"Boot",
			"Common Crate",
			"Seaweed",
			"Carbon Crate",
			"Quality Bait Crate",
			"Common Crate",
			"Bait Crate",
			"Mackerel",
			"Cod",
			"Amberjack",
			"Sardine",
			"Halibut",
			"Salmon",
			"Mullet",
			"Bluefin Tuna",
			"Yellowfin Tuna",
			"Barracuda",
			"Sea Bass",
			"Chinook Salmon",
			"Sea Pickle",
			"Swordfish",
			"Anglerfish",
			"Coelacanth",
			"Sailfish",
			"Stingray",
			"Sawfish",
			"Moonfish",
			"Dolphin",
			"Flying Fish",
			"Colossal Squid",
			"Oarfish",
			"Crown Bass",
			"Mythic Fish",
			"Long Pike",
			"Mustard"
		}
	},
	["Orcas Pool"] = {
		CantBeWormholed = true,
		Priority = 4,
		Pool = {
			"Orca",
			"Tire",
			"Boot",
			"Common Crate",
			"Seaweed",
			"Carbon Crate",
			"Quality Bait Crate",
			"Common Crate",
			"Bait Crate",
			"Mackerel",
			"Cod",
			"Amberjack",
			"Sardine",
			"Halibut",
			"Salmon",
			"Mullet",
			"Bluefin Tuna",
			"Yellowfin Tuna",
			"Barracuda",
			"Sea Bass",
			"Chinook Salmon",
			"Sea Pickle",
			"Swordfish",
			"Anglerfish",
			"Coelacanth",
			"Sailfish",
			"Stingray",
			"Sawfish",
			"Moonfish",
			"Dolphin",
			"Flying Fish",
			"Colossal Squid",
			"Oarfish",
			"Crown Bass",
			"Mythic Fish",
			"Long Pike",
			"Mustard"
		}
	},
	["Whales Pool"] = {
		Priority = 4,
		CantBeWormholed = true,
		IsHunt = true,
		Pool = {
			"Blue Whale",
			"Tire",
			"Boot",
			"Common Crate",
			"Seaweed",
			"Carbon Crate",
			"Quality Bait Crate",
			"Common Crate",
			"Bait Crate",
			"Mackerel",
			"Cod",
			"Amberjack",
			"Sardine",
			"Halibut",
			"Salmon",
			"Mullet",
			"Bluefin Tuna",
			"Yellowfin Tuna",
			"Barracuda",
			"Sea Bass",
			"Chinook Salmon",
			"Sea Pickle",
			"Swordfish",
			"Anglerfish",
			"Coelacanth",
			"Sailfish",
			"Stingray",
			"Sawfish",
			"Moonfish",
			"Dolphin",
			"Flying Fish",
			"Colossal Squid",
			"Oarfish",
			"Crown Bass",
			"Mythic Fish",
			"Long Pike",
			"Mustard"
		}
	},
	["Notes Island Pool"] = {
		CantBeWormholed = true,
		Priority = 4,
		Pool = {
			"Rotfin Eel",
			"Wraithfin",
			"Siren’s Guppy",
			"Black Veil Ray",
			"Hexeye Snapper",
			"Bone Lanternfish",
			"Harbinger Koi",
			"Slain Maw"
		}
	},
	["The Depths - Serpent"] = {
		Priority = 2,
		Disturbs = "MoonlitMirage",
		Pool = {
			"Destroyed Fossil",
			"Scrap Metal",
			"Deep-sea Dragonfish",
			"Deep-sea Hatchetfish",
			"Frilled Shark",
			"Depth Octopus",
			"Three-eyed Fish",
			"Luminescent Minnow",
			"Goblin Shark",
			"Black Dragon Fish",
			"Spider Crab",
			"Nautilus",
			"Small Spine Chimera",
			"Ancient Eel",
			"Mutated Shark",
			"Barreleye Fish",
			"Sea Snake",
			"Ancient Depth Serpent",
			"Enchant Relic"
		},
		CustomCondition = function(_, _, p81) --[[ CustomCondition ]] -- line: 3752
			if not p81:FindFirstChild("Cache") or not p81.Cache:FindFirstChild("Door.TheDepthsGate") then
				return false, "You must unlock the gate to The Depths before fishing here."
			end

			return true
		end
	},
	["The Depths"] = {
		Priority = 1,
		Pool = {
			"Destroyed Fossil",
			"Scrap Metal",
			"Deep-sea Dragonfish",
			"Deep-sea Hatchetfish",
			"Frilled Shark",
			"Depth Octopus",
			"Three-eyed Fish",
			"Luminescent Minnow",
			"Goblin Shark",
			"Black Dragon Fish",
			"Spider Crab",
			"Nautilus",
			"Small Spine Chimera",
			"Ancient Eel",
			"Mutated Shark",
			"Barreleye Fish",
			"Sea Snake",
			"Enchant Relic"
		},
		Disturbs = {
			"DepthsAbsoluteDarkness",
			"MoonlitMirage"
		},
		CustomCondition = function(_, _, p84) --[[ CustomCondition ]] -- line: 3797
			if not p84:FindFirstChild("Cache") or not p84.Cache:FindFirstChild("Door.TheDepthsGate") then
				return false, "You must unlock the gate to The Depths before fishing here."
			end

			return true
		end
	},
	Shimmer = {
		CantBeWormholed = true,
		Priority = 10000000,
		Pool = { "Sockeye Salmon" },
		Disturbs = {},
		CustomCondition = function(_, _, p87) --[[ CustomCondition ]] -- line: 3818
			if not p87:FindFirstChild("Stats") or p87.Stats.rod.Value ~= "Castbound" then
				return false, "You can only use Castbound for Shimmer."
			end

			return true
		end
	},
	["Mutated Sharky Whirlpool"] = {
		Priority = 10,
		CantBeWormholed = true,
		Pool = {
			"Goblin Shark",
			"Black Dragon Fish",
			"Spider Crab",
			"Nautilus",
			"Small Spine Chimera",
			"Ancient Eel",
			"Mutated Shark",
			"Barreleye Fish",
			"Sea Snake",
			"Enchant Relic"
		},
		CustomCondition = function(_, p89, p90) --[[ CustomCondition ]] -- line: 3860
			if not p90:FindFirstChild("Cache") or not p90.Cache:FindFirstChild("Door.TheDepthsGate") then
				return false, nil
			end

			if p89.Data.NewFormat.Companions.Equipped ~= "Mutated Sharky" then
				return false, nil
			end

			return true
		end
	},
	["Crystal Cove"] = {
		Priority = 1,
		Pool = {
			"Destroyed Fossil",
			"Scrap Metal",
			"Deep-sea Dragonfish",
			"Deep-sea Hatchetfish",
			"Frilled Shark",
			"Depth Octopus",
			"Three-eyed Fish",
			"Luminescent Minnow",
			"Opalescent Catfish",
			"Pufferflute",
			"Stringed Grouper",
			"Crystal Frilled Shark",
			"DJ Spinopus"
		},
		RarityBaseChanceBoosts = {
			Common = 0.25
		},
		CustomCondition = function(_, _, p93) --[[ CustomCondition ]] -- line: 3903
			if not p93:FindFirstChild("Cache") or not p93.Cache:FindFirstChild("Door.TheDepthsGate") then
				return false, "You must unlock the gate to The Depths before fishing here."
			end

			return true
		end
	},
	Fischfest = {
		Priority = 1,
		CantBeWormholed = true,
		Pool = {
			"Sunsquid",
			"Surfboard Ray",
			"Beach Ball Pufferfish",
			"Sandslasher",
			"Tidepopper",
			"Coconut",
			"Shellphone",
			"Popsicle",
			"Message in a Bottle",
			"Tiki Mask"
		}
	},
	["Ocean Greedy"] = {
		Priority = 4,
		CantBeWormholed = true,
		Pool = {
			"Tire",
			"Boot",
			"Common Crate",
			"Bait Crate",
			"Fish Barrel",
			"Seaweed",
			"Mackerel",
			"Cod",
			"Amberjack",
			"Nurse Shark",
			"Porgy",
			"Sardine",
			"Halibut",
			"Mullet",
			"Salmon",
			"Yellowfin Tuna",
			"Sea Bass",
			"Chinook Salmon",
			"Haddock",
			"Barracuda",
			"Sea Pickle",
			"Pufferfish",
			"Swordfish",
			"Bluefin Tuna",
			"Sailfish",
			"Stingray",
			"Sawfish",
			"Moonfish",
			"Crown Bass",
			"Dolphin",
			"Flying Fish",
			"Mythic Fish",
			"Long Pike",
			"Mustard"
		}
	},
	Ocean = {
		Priority = 0,
		Disturbs = "BabyBloopHunt",
		Pool = {
			"Tire",
			"Boot",
			"Common Crate",
			"Bait Crate",
			"Fish Barrel",
			"Seaweed",
			"Boots",
			"Mackerel",
			"Cod",
			"Amberjack",
			"Nurse Shark",
			"Porgy",
			"Sardine",
			"Halibut",
			"Mullet",
			"Salmon",
			"Yellowfin Tuna",
			"Sea Bass",
			"Chinook Salmon",
			"Haddock",
			"Barracuda",
			"Sea Pickle",
			"Pufferfish",
			"Swordfish",
			"Bluefin Tuna",
			"Sailfish",
			"Stingray",
			"Sawfish",
			"Moonfish",
			"Crown Bass",
			"Dolphin",
			"Flying Fish",
			"Mythic Fish",
			"Long Pike",
			"Mustard",
			"Device Display",
			"Tuskmaw"
		}
	},
	["Deep Ocean"] = {
		Priority = 1,
		Disturbs = "BabyBloopHunt",
		Pool = {
			"Tire",
			"Boot",
			"Common Crate",
			"Seaweed",
			"Carbon Crate",
			"Quality Bait Crate",
			"Common Crate",
			"Bait Crate",
			"Mackerel",
			"Cod",
			"Amberjack",
			"Sardine",
			"Halibut",
			"Salmon",
			"Mullet",
			"Bluefin Tuna",
			"Yellowfin Tuna",
			"Barracuda",
			"Sea Bass",
			"Chinook Salmon",
			"Sea Pickle",
			"Swordfish",
			"Anglerfish",
			"Coelacanth",
			"Sailfish",
			"Stingray",
			"Sawfish",
			"Moonfish",
			"Dolphin",
			"Flying Fish",
			"Colossal Squid",
			"Oarfish",
			"Crown Bass",
			"Mythic Fish",
			"Long Pike",
			"Mustard",
			"Blobfish",
			"Device Display",
			"Tuskmaw"
		}
	},
	Earthquake = {
		Priority = 0,
		CantBeWormholed = true,
		Disturbs = "BabyBloopHunt",
		Pool = {
			"Tire",
			"Boot",
			"Common Crate",
			"Bait Crate",
			"Fish Barrel",
			"Seaweed",
			"Boots",
			"Mackerel",
			"Cod",
			"Amberjack",
			"Nurse Shark",
			"Porgy",
			"Sardine",
			"Halibut",
			"Mullet",
			"Salmon",
			"Yellowfin Tuna",
			"Sea Bass",
			"Chinook Salmon",
			"Haddock",
			"Barracuda",
			"Sea Pickle",
			"Pufferfish",
			"Swordfish",
			"Bluefin Tuna",
			"Sailfish",
			"Stingray",
			"Sawfish",
			"Moonfish",
			"Crown Bass",
			"Dolphin",
			"Flying Fish",
			"Mythic Fish",
			"Long Pike",
			"Mustard",
			"Akkorokamui",
			"Lusca",
			"Charybdis",
			"Tuskmaw"
		}
	},
	["Atlantis Ocean"] = {
		Priority = 1,
		CantBeWormholed = true,
		Pool = {
			"Tire",
			"Boot",
			"Common Crate",
			"Seaweed",
			"Carbon Crate",
			"Quality Bait Crate",
			"Common Crate",
			"Bait Crate",
			"Mackerel",
			"Cod",
			"Amberjack",
			"Sardine",
			"Halibut",
			"Salmon",
			"Mullet",
			"Bluefin Tuna",
			"Yellowfin Tuna",
			"Barracuda",
			"Sea Bass",
			"Chinook Salmon",
			"Sea Pickle",
			"Swordfish",
			"Anglerfish",
			"Coelacanth",
			"Sailfish",
			"Stingray",
			"Sawfish",
			"Moonfish",
			"Dolphin",
			"Flying Fish",
			"Colossal Squid",
			"Oarfish",
			"Crown Bass",
			"Mythic Fish",
			"Long Pike",
			"Mustard"
		}
	},
	["Grand Reef"] = {
		Priority = 3,
		Pool = {
			"Tire",
			"Boot",
			"Common Crate",
			"Bait Crate",
			"Fish Barrel",
			"Seaweed",
			"Reef Minnow",
			"Reef Goby",
			"Coral Chromis",
			"Coral Guard",
			"Crystal Wrasse",
			"Reef Parrotfish",
			"Coral Emperor",
			"Grand Reef Guardian"
		}
	},
	["Forsaken Shores"] = {
		Priority = 1,
		Pool = {
			"Tire",
			"Boot",
			"Common Crate",
			"Bait Crate",
			"Fish Barrel",
			"Seaweed",
			"Corsair Grouper",
			"Scurvy Sailfish",
			"Cutlass Fish",
			"Reefrunner Snapper"
		}
	},
	["Forsaken Shores Ocean"] = {
		Priority = 2,
		Pool = {
			"Tire",
			"Boot",
			"Common Crate",
			"Bait Crate",
			"Fish Barrel",
			"Seaweed",
			"Corsair Grouper",
			"Scurvy Sailfish",
			"Cutlass Fish",
			"Reefrunner Snapper",
			"Shortfin Mako Shark",
			"Galleon Goliath",
			"Buccaneer Barracuda",
			"Cursed Eel",
			"Shipwreck Barracuda",
			"Golden Seahorse"
		}
	},
	["Forsaken Shores Pond"] = {
		Priority = 3,
		Pool = {
			"Tire",
			"Boot",
			"Common Crate",
			"Bait Crate",
			"Fish Barrel",
			"Seaweed",
			"Corsair Grouper",
			"Scurvy Sailfish",
			"Cutlass Fish",
			"Reefrunner Snapper",
			"Captain's Goldfish",
			"Pirate Captain's Goldfish"
		}
	},
	["Moosewood Ocean"] = {
		Priority = 1,
		Pool = {
			"Tire",
			"Boot",
			"Common Crate",
			"Bait Crate",
			"Fish Barrel",
			"Seaweed",
			"Trout",
			"Barracuda",
			"Flounder",
			"Yellowfin Tuna",
			"Sockeye Salmon",
			"Red Snapper",
			"Mackerel",
			"Anchovy",
			"Eel",
			"Moonfish",
			"Bull Shark",
			"Cataclysm Carp"
		}
	},
	["Moosewood Ocean Mythical"] = {
		Priority = 4,
		Pool = {
			"Tire",
			"Boot",
			"Common Crate",
			"Bait Crate",
			"Fish Barrel",
			"Seaweed",
			"Trout",
			"Barracuda",
			"Flounder",
			"Yellowfin Tuna",
			"Sockeye Salmon",
			"Red Snapper",
			"Anchovy",
			"Eel",
			"Whisker Bill",
			"Treble Bass",
			"Cataclysm Carp"
		}
	},
	["Moosewood Docks"] = {
		Priority = 2,
		Pool = {
			"Driftwood",
			"Seaweed",
			"Bait Crate",
			"Common Crate",
			"Flounder",
			"Red Snapper",
			"Trout",
			"Snook",
			"Mackerel",
			"Sockeye Salmon",
			"Anchovy",
			"Pike",
			"Cataclysm Carp"
		}
	},
	["Moosewood Pond"] = {
		Priority = 2,
		Pool = {
			"Tire",
			"Driftwood",
			"Common Crate",
			"Largemouth Bass",
			"Trout",
			"Goldfish",
			"Carp",
			"Bream",
			"Pike",
			"Eel",
			"Whiptail Catfish",
			"Cataclysm Carp"
		}
	},
	Lava = {
		Priority = 2,
		RequiredDurability = 100,
		Pool = {
			"Volcanic Geode",
			"Rock",
			"Basalt",
			"Quality Bait Crate",
			"Inferno Wood",
			"Ember Snapper",
			"Pyrogrub",
			"Ember Perch",
			"Magma Tang",
			"Obsidian Salmon",
			"Obsidian Swordfish",
			"Molten Banshee",
			"Molten Ripple"
		}
	},
	Eruption = {
		Priority = 3,
		CantBeWormholed = true,
		RequiredDurability = 100,
		IsHunt = true,
		Pool = {
			"Volcanic Geode",
			"Rock",
			"Basalt",
			"Quality Bait Crate",
			"Inferno Wood",
			"Ember Snapper",
			"Pyrogrub",
			"Ember Perch",
			"Magma Tang",
			"Obsidian Salmon",
			"Obsidian Swordfish",
			"Molten Banshee",
			"Molten Ripple",
			"Ashclaw"
		}
	},
	["Roslit Pond"] = {
		Priority = 2,
		Pool = {
			"Driftwood",
			"Alligator Gar",
			"Perch",
			"Minnow",
			"Pumpkinseed",
			"Chub",
			"Arapaima",
			"Axolotl",
			"Aetherfin"
		}
	},
	["Roslit Pond Seaweed"] = {
		Priority = 3,
		Pool = {
			"Driftwood",
			"Seaweed",
			"Alligator Gar",
			"Perch",
			"Minnow",
			"Pumpkinseed",
			"Trout",
			"Arapaima",
			"Suckermouth Catfish",
			"Axolotl",
			"Aetherfin"
		}
	},
	["Roslit Bay"] = {
		Priority = 3,
		Pool = {
			"Driftwood",
			"Common Crate",
			"Log",
			"Butterflyfish",
			"Angelfish",
			"Clownfish",
			"Blue Tang",
			"Yellow Boxfish",
			"Ribbon Eel",
			"Nurse Shark",
			"Pufferfish",
			"Bull Shark",
			"Crown Bass",
			"Manta Ray",
			"Dumbo Octopus",
			"Translator Core",
			"Aetherfin"
		}
	},
	["Roslit Bay Alien"] = {
		Priority = 8000,
		Pool = {
			"Driftwood",
			"Common Crate",
			"Log",
			"Butterflyfish",
			"Angelfish",
			"Clownfish",
			"Blue Tang",
			"Yellow Boxfish",
			"Ribbon Eel",
			"Nurse Shark",
			"Pufferfish",
			"Bull Shark",
			"Crown Bass",
			"Manta Ray",
			"Dumbo Octopus",
			"Translator Core",
			"Aetherfin"
		}
	},
	["Roslit Bay Ocean"] = {
		Priority = 2,
		Pool = {
			"Driftwood",
			"Common Crate",
			"Log",
			"Mackerel",
			"Cod",
			"Amberjack",
			"Nurse Shark",
			"Sardine",
			"Halibut",
			"Salmon",
			"Sea Bass",
			"Chinook Salmon",
			"Haddock",
			"Mullet",
			"Yellow Boxfish",
			"Pufferfish",
			"Squid",
			"Swordfish",
			"Nurse Shark",
			"Crown Bass",
			"Dumbo Octopus",
			"Flying Fish",
			"Mythic Fish",
			"Manta Ray",
			"Translator Core",
			"Aetherfin"
		}
	},
	["Roslit Bay Clam"] = {
		Priority = 10000,
		Pool = {
			"Clam",
			"Aetherfin"
		}
	},
	["Desolate Deep"] = {
		Priority = 2,
		Pool = {
			"Log",
			"Rock",
			"Common Crate",
			"Stalactite",
			"String",
			"Coral Geode",
			"Slate Tuna",
			"Phantom Ray",
			"Rockstar Hermit Crab",
			"Horseshoe Crab",
			"Banditfish",
			"Cockatoo Squid",
			"Midnight Axolotl",
			"Barbed Shark",
			"Emperor Jellyfish",
			"Lumilotl"
		}
	},
	["Brine Storm"] = {
		Priority = 10,
		RequiredDurability = 200,
		CantBeWormholed = true,
		Pool = {
			"Dissolved Bone",
			"Stormgazer",
			"Brine Sovereign",
			"Caustic Starwyrm"
		},
		FishingStatsMultiply = {
			Lure = 0.5
		}
	},
	["Brine Pool Water"] = {
		Disturbs = "BrineStorm",
		Priority = 2,
		RequiredDurability = 200,
		CantBeWormholed = true,
		Pool = {
			"Rock",
			"Stalactite",
			"Bone",
			"Coral Geode",
			"Common Crate",
			"Stalactite",
			"Gazerfish",
			"Brine Shrimp",
			"Globe Jellyfish",
			"Dweller Catfish",
			"Brine Phantom",
			"Spectral Serpent"
		}
	},
	["Ancient Isle Ocean"] = {
		Disturbs = "MegHunt",
		Priority = 2,
		Pool = {
			"Tire",
			"Carbon Crate",
			"Common Crate",
			"Bait Crate",
			"Fish Barrel",
			"Cod",
			"Sardine",
			"Sea Bass",
			"Mullet",
			"Piranha",
			"Anomalocaris",
			"Starfish",
			"Onychodus",
			"Acanthodii",
			"Xiphactinus",
			"Hyneria",
			"Cobia",
			"Ginsu Shark",
			"Dunkleosteus",
			"Colossal Squid",
			"Helicoprion",
			"Mosasaurus",
			"Banana",
			"Ancient Fragment",
			"Meg's Fang",
			"Meg's Spine"
		},
		RarityLuckFactorBoosts = {
			Legendary = 1.5,
			Mythical = 2
		}
	},
	["Ancient Isle Pond"] = {
		Priority = 3,
		Pool = {
			"Log",
			"Piranha",
			"Cladoselache",
			"Anomalocaris",
			"Xiphactinus",
			"Hyneria",
			"Hallucigenia",
			"Floppy",
			"Banana"
		},
		RarityLuckFactorBoosts = {
			Legendary = 1.5,
			Mythical = 2
		}
	},
	["Ancient Isle Waterfall"] = {
		Priority = 4,
		Pool = {
			"Log",
			"Piranha",
			"Cladoselache",
			"Anomalocaris",
			"Xiphactinus",
			"Hyneria",
			"Hallucigenia",
			"Leedsichthys",
			"Banana"
		},
		RarityLuckFactorBoosts = {
			Legendary = 1.5,
			Mythical = 2
		}
	},
	["Ancient Archives"] = {
		Priority = 1,
		Pool = {
			"Tire",
			"Boot",
			"Common Crate",
			"Bait Crate",
			"Fish Barrel",
			"Seaweed",
			"Palaeoniscum",
			"Birgeria",
			"Phanerorhynchus",
			"Diplurus",
			"Lepidotes",
			"Amblypterus"
		}
	},
	["Terrapin Ocean"] = {
		Priority = 2,
		Pool = {
			"Log",
			"Driftwood",
			"Common Crate",
			"Fish Barrel",
			"Sea Bass",
			"Largemouth Bass",
			"Smallmouth Bass",
			"White Bass",
			"Redeye Bass",
			"Chinook Salmon",
			"Gudgeon",
			"Walleye",
			"Golden Smallmouth Bass",
			"Sea Turtle",
			"Manatee"
		}
	},
	["Terrapin Olm"] = {
		Priority = 3,
		Pool = {
			"Log",
			"Driftwood",
			"Common Crate",
			"Fish Barrel",
			"Sea Bass",
			"Largemouth Bass",
			"Smallmouth Bass",
			"White Bass",
			"Redeye Bass",
			"Chinook Salmon",
			"Gudgeon",
			"Walleye",
			"Olm"
		}
	},
	["Mushgrove Water"] = {
		Priority = 2,
		Pool = {
			"Carbon Crate",
			"Common Crate",
			"Bait Crate",
			"Log",
			"Driftwood",
			"Resin",
			"Swamp Bass",
			"Grey Carp",
			"Bowfin",
			"White Perch",
			"Fungal Cluster",
			"Marsh Gar",
			"Catfish",
			"Alligator",
			"Handfish",
			"RocketFuel"
		}
	},
	Vertigo = {
		Priority = 2,
		Pool = {
			"Carbon Crate",
			"Rock",
			"Quality Bait Crate",
			"Common Crate",
			"Bait Crate",
			"Twilight Eel",
			"Fangborn Gar",
			"Spiderfish",
			"The Depths Key",
			"Abyssacuda",
			"Voidfin Mahi",
			"Rubber Ducky"
		}
	},
	["Snowcap Pond"] = {
		Priority = 2,
		Pool = {
			"Common Crate",
			"Quality Bait Crate",
			"Ice",
			"Boot",
			"Blackfish",
			"Burbot",
			"Grayling",
			"Glacier Pike",
			"Sturgeon",
			"Pond Emperor",
			"Baby Pond Emperor"
		}
	},
	["Snowcap Ocean"] = {
		Priority = 2,
		Pool = {
			"Ice",
			"Tire",
			"Carbon Crate",
			"Common Crate",
			"Bait Crate",
			"Fish Barrel",
			"Moon Wood",
			"Cod",
			"Sardine",
			"Salmon",
			"Sea Bass",
			"Porgy",
			"Arctic Char",
			"Pollock",
			"Red Drum",
			"Herring",
			"Bluegill",
			"Lingcod",
			"Mullet",
			"Skipjack Tuna",
			"Glacierfish",
			"Moonfish",
			"Colossal Squid",
			"Ringle"
		}
	},
	Snowburrow = {
		Priority = 2,
		Pool = {
			"Ice",
			"Stalactite",
			"Freezing Shroom",
			"Cod",
			"Sardine",
			"Salmon",
			"Sea Bass",
			"Porgy",
			"Arctic Char",
			"Pollock",
			"Red Drum",
			"Herring",
			"Bluegill",
			"Lingcod",
			"Mullet",
			"Skipjack Tuna",
			"Glacierfish",
			"Moonfish",
			"Colossal Squid",
			"Ringle",
			"White Sturgeon",
			"Glacial Fragment"
		}
	},
	Sunstone = {
		Priority = 2,
		Pool = {
			"Seaweed",
			"Driftwood",
			"Quality Bait Crate",
			"Ancient Wood",
			"Trumpetfish",
			"Glassfish",
			"Longtail Bass",
			"Sweetfish",
			"Red Tang",
			"Mahi Mahi",
			"Napoleonfish",
			"Chinfish",
			"Sailfish",
			"Sunfish",
			"Wiifish",
			"Voltfish",
			"Tartaruga",
			"Speed Core",
			"Communication Circuit",
			"Crustal Colossus"
		}
	},
	Mineshaft = {
		Priority = 3,
		Pool = {
			"Stalactite",
			"Rock",
			"Boot",
			"Scrap Metal",
			"Common Crate",
			"Carbon Crate",
			"Rusty Bolt",
			"Iron Chunk",
			"Gold Piece",
			"Crystal Geode",
			"Radiant Crystal"
		},
		RarityLuckFactorBoosts = {
			Legendary = 0.75,
			Mythical = 0.5
		},
		CustomCondition = function(_, p95) --[[ CustomCondition ]] -- line: 5131
			if p95.Data.NewFormat.SunstoneExpansion.MerlinQuestProgress < 3 then
				return false, "You must complete Merlin's quest before fishing here."
			end

			return true
		end
	},
	["Sunstone Hidden"] = {
		Priority = 2,
		Pool = {
			"Common Crate",
			"Carbon Crate",
			"Bait Crate",
			"Fish Barrel",
			"Quality Bait Crate",
			"Tire",
			"Seaweed",
			"Driftwood",
			"Boot",
			"Rock"
		}
	},
	["Keepers Altar"] = {
		Priority = 3,
		Pool = {
			"Tire",
			"Boot",
			"Seaweed",
			"Void Wood",
			"Bluefish",
			"Keepers Guardian",
			"Lapisjack",
			"Pale Tang",
			"Umbral Shark",
			"Boulder"
		}
	},
	["Harvesters Spike"] = {
		Priority = 3,
		Pool = {
			"Carbon Crate",
			"Common Crate",
			"Bait Crate",
			"Mackerel",
			"Cod",
			"Amberjack",
			"Nurse Shark",
			"Sardine",
			"Halibut",
			"Salmon",
			"Bluefin Tuna",
			"Sockeye Salmon",
			"Mullet",
			"Barracuda",
			"Sea Bass",
			"Chinook Salmon",
			"Sea Pickle",
			"Pufferfish",
			"Swordfish",
			"Sawfish"
		}
	},
	["The Arch"] = {
		Priority = 3,
		Pool = {
			"Tire",
			"Boot",
			"Common Crate",
			"Bait Crate",
			"Fish Barrel",
			"Seaweed",
			"Mackerel",
			"Cod",
			"Amberjack",
			"Sardine",
			"Halibut",
			"Salmon",
			"Yellowfin Tuna",
			"Mullet",
			"Sea Bass",
			"Chinook Salmon",
			"Haddock",
			"Bluefin Tuna",
			"Barracuda",
			"Sea Pickle",
			"Sailfish",
			"Rabbitfish",
			"Moonfish"
		}
	},
	["Scallop Ocean"] = {
		Priority = 3,
		Pool = {
			"Tire",
			"Boot",
			"Seaweed",
			"Scallop"
		}
	},
	Debug = {
		Priority = 10,
		CantBeWormholed = true,
		Pool = { "Colossal Squid" }
	},
	Relics = {
		Priority = 10,
		CantBeWormholed = true,
		Pool = { "Enchant Relic" }
	},
	ExaltedRelics = {
		Priority = 10,
		CantBeWormholed = true,
		Pool = { "Exalted Relic" }
	},
	CosmicRelic = {
		Priority = 100,
		CantBeWormholed = true,
		Pool = { "Cosmic Relic" }
	},
	EmojiFish = {
		Priority = 10,
		CantBeWormholed = true,
		Pool = {
			"🐟",
			"🦑",
			"🦈",
			"🐋",
			"🐡"
		}
	},
	Him = {
		Priority = 1000,
		CantBeWormholed = true,
		Pool = { "Him" }
	},
	["Lovestorm Eel"] = {
		CantBeWormholed = true,
		Priority = 100,
		IsHunt = true,
		Pool = {
			"Tire",
			"Boot",
			"Common Crate",
			"Seaweed",
			"Carbon Crate",
			"Quality Bait Crate",
			"Common Crate",
			"Bait Crate",
			"Mackerel",
			"Cod",
			"Amberjack",
			"Sardine",
			"Halibut",
			"Salmon",
			"Mullet",
			"Bluefin Tuna",
			"Yellowfin Tuna",
			"Barracuda",
			"Sea Bass",
			"Chinook Salmon",
			"Sea Pickle",
			"Swordfish",
			"Anglerfish",
			"Coelacanth",
			"Sailfish",
			"Stingray",
			"Sawfish",
			"Moonfish",
			"Dolphin",
			"Flying Fish",
			"Colossal Squid",
			"Oarfish",
			"Crown Bass",
			"Mythic Fish",
			"Lovestorm Eel"
		}
	},
	["Lovestorm Eel Supercharged"] = {
		CantBeWormholed = true,
		Priority = 100,
		IsHunt = true,
		Pool = {
			"Tire",
			"Boot",
			"Common Crate",
			"Seaweed",
			"Carbon Crate",
			"Quality Bait Crate",
			"Common Crate",
			"Bait Crate",
			"Mackerel",
			"Cod",
			"Amberjack",
			"Sardine",
			"Halibut",
			"Salmon",
			"Mullet",
			"Bluefin Tuna",
			"Yellowfin Tuna",
			"Barracuda",
			"Sea Bass",
			"Chinook Salmon",
			"Sea Pickle",
			"Swordfish",
			"Anglerfish",
			"Coelacanth",
			"Sailfish",
			"Stingray",
			"Sawfish",
			"Moonfish",
			"Dolphin",
			"Flying Fish",
			"Colossal Squid",
			"Oarfish",
			"Crown Bass",
			"Mythic Fish",
			"Lovestorm Eel Supercharged"
		}
	},
	["Birthday Megalodon"] = {
		CantBeWormholed = true,
		Priority = 100,
		IsHunt = true,
		Pool = {
			"Tire",
			"Boot",
			"Common Crate",
			"Seaweed",
			"Carbon Crate",
			"Quality Bait Crate",
			"Common Crate",
			"Bait Crate",
			"Mackerel",
			"Cod",
			"Amberjack",
			"Sardine",
			"Halibut",
			"Salmon",
			"Mullet",
			"Bluefin Tuna",
			"Yellowfin Tuna",
			"Barracuda",
			"Sea Bass",
			"Chinook Salmon",
			"Sea Pickle",
			"Swordfish",
			"Anglerfish",
			"Coelacanth",
			"Sailfish",
			"Stingray",
			"Sawfish",
			"Moonfish",
			"Dolphin",
			"Flying Fish",
			"Colossal Squid",
			"Oarfish",
			"Crown Bass",
			"Mythic Fish",
			"Birthday Squid",
			"Birthday Dumbo Octopus",
			"Birthday Goldfish",
			"Birthday Megalodon"
		}
	},
	BirthdayCake = {
		Priority = 101,
		CantBeWormholed = true,
		Pool = { "Birthday Cake" },
		StartDate = DateTime.fromUniversalTime(2025, 10, 5, 18, 0, 0),
		InvalidDate = DateTime.fromUniversalTime(2025, 10, 6, 18, 0, 0)
	},
	BabysFirstBalloon = {
		Priority = 101,
		CantBeWormholed = true,
		Pool = { "Baby's First Balloon" },
		StartDate = DateTime.fromUniversalTime(2025, 10, 5, 18, 0, 0),
		InvalidDate = DateTime.fromUniversalTime(2025, 10, 6, 18, 0, 0)
	},
	BirthdayGift = {
		Priority = 101,
		CantBeWormholed = true,
		Pool = { "Birthday Gift" },
		StartDate = DateTime.fromUniversalTime(2025, 10, 5, 18, 0, 0),
		InvalidDate = DateTime.fromUniversalTime(2025, 10, 6, 18, 0, 0)
	},
	["Megalodon Default"] = {
		CantBeWormholed = true,
		Priority = 100,
		IsHunt = true,
		Pool = {
			"Tire",
			"Boot",
			"Common Crate",
			"Seaweed",
			"Carbon Crate",
			"Quality Bait Crate",
			"Common Crate",
			"Bait Crate",
			"Mackerel",
			"Cod",
			"Amberjack",
			"Sardine",
			"Halibut",
			"Salmon",
			"Mullet",
			"Bluefin Tuna",
			"Yellowfin Tuna",
			"Barracuda",
			"Sea Bass",
			"Chinook Salmon",
			"Sea Pickle",
			"Swordfish",
			"Anglerfish",
			"Coelacanth",
			"Sailfish",
			"Stingray",
			"Sawfish",
			"Moonfish",
			"Dolphin",
			"Flying Fish",
			"Colossal Squid",
			"Oarfish",
			"Crown Bass",
			"Mythic Fish",
			"Megalodon",
			"Ancient Megalodon"
		}
	},
	["Megalodon Ancient"] = {
		CantBeWormholed = true,
		Priority = 100,
		IsHunt = true,
		Pool = {
			"Tire",
			"Boot",
			"Common Crate",
			"Seaweed",
			"Carbon Crate",
			"Quality Bait Crate",
			"Common Crate",
			"Bait Crate",
			"Mackerel",
			"Cod",
			"Amberjack",
			"Sardine",
			"Halibut",
			"Salmon",
			"Mullet",
			"Bluefin Tuna",
			"Yellowfin Tuna",
			"Barracuda",
			"Sea Bass",
			"Chinook Salmon",
			"Sea Pickle",
			"Swordfish",
			"Anglerfish",
			"Coelacanth",
			"Sailfish",
			"Stingray",
			"Sawfish",
			"Moonfish",
			"Dolphin",
			"Flying Fish",
			"Colossal Squid",
			"Oarfish",
			"Crown Bass",
			"Mythic Fish",
			"Megalodon",
			"Phantom Megalodon",
			"Ancient Megalodon"
		}
	},
	["Shamrock Megalodon"] = {
		CantBeWormholed = true,
		Priority = 100,
		IsHunt = true,
		Pool = {
			"Tire",
			"Boot",
			"Common Crate",
			"Seaweed",
			"Carbon Crate",
			"Quality Bait Crate",
			"Common Crate",
			"Bait Crate",
			"Mackerel",
			"Cod",
			"Amberjack",
			"Sardine",
			"Halibut",
			"Salmon",
			"Mullet",
			"Bluefin Tuna",
			"Yellowfin Tuna",
			"Barracuda",
			"Sea Bass",
			"Chinook Salmon",
			"Sea Pickle",
			"Swordfish",
			"Anglerfish",
			"Coelacanth",
			"Sailfish",
			"Stingray",
			"Sawfish",
			"Moonfish",
			"Dolphin",
			"Flying Fish",
			"Colossal Squid",
			"Oarfish",
			"Crown Bass",
			"Mythic Fish",
			"Shamrock Megalodon"
		}
	},
	["Great White Shark"] = {
		Priority = 100,
		Pool = {
			"Great White Shark",
			"Mackerel",
			"Cod",
			"Amberjack",
			"Sardine",
			"Sea Bass",
			"Barracuda",
			"Haddock",
			"Sailfish",
			"Porgy",
			"Mullet",
			"Cookiecutter Shark",
			"Driftwood",
			"Common Crate"
		}
	},
	["Great Hammerhead Shark"] = {
		Priority = 100,
		Pool = {
			"Great Hammerhead Shark",
			"Mackerel",
			"Cod",
			"Amberjack",
			"Sardine",
			"Sea Bass",
			"Barracuda",
			"Haddock",
			"Sailfish",
			"Porgy",
			"Mullet",
			"Cookiecutter Shark",
			"Driftwood",
			"Common Crate"
		}
	},
	["Whale Shark"] = {
		Priority = 100,
		Pool = {
			"Whale Shark",
			"Mackerel",
			"Cod",
			"Amberjack",
			"Sardine",
			"Sea Bass",
			"Barracuda",
			"Haddock",
			"Sailfish",
			"Porgy",
			"Mullet",
			"Cookiecutter Shark",
			"Driftwood",
			"Common Crate"
		}
	},
	Isonade = {
		Priority = 101,
		Pool = {
			"Isonade",
			"Tire",
			"Boot",
			"Common Crate",
			"Bait Crate",
			"Fish Barrel",
			"Seaweed",
			"Carbon Crate",
			"Quality Bait Crate",
			"Mackerel",
			"Cod",
			"Amberjack",
			"Sardine",
			"Sea Bass",
			"Barracuda",
			"Haddock",
			"Mullet",
			"Cookiecutter Shark",
			"The Depths Key"
		}
	},
	FischFright24 = {
		Priority = 102,
		CantBeWormholed = true,
		Pool = {
			"Lurkerfish",
			"Skelefish",
			"Candy Fish",
			"Ghoulfish",
			"Zombiefish",
			"Nessie",
			"Tire",
			"Boot",
			"Common Crate",
			"Seaweed",
			"Carbon Crate",
			"Quality Bait Crate",
			"Common Crate",
			"Bait Crate",
			"Mackerel",
			"Cod",
			"Amberjack",
			"Sardine",
			"Halibut",
			"Salmon",
			"Bluefin Tuna",
			"Yellowfin Tuna",
			"Barracuda",
			"Sea Bass",
			"Chinook Salmon",
			"Sea Pickle",
			"Swordfish",
			"Anglerfish",
			"Coelacanth",
			"Sailfish",
			"Stingray"
		}
	},
	FischFright25 = {
		Priority = 102,
		CantBeWormholed = true,
		Pool = {
			"Kelpie",
			"Phantom Jellyfish",
			"Vampire Perch",
			"Spider Salmon",
			"Werewolf Walleye",
			"Tire",
			"Boot",
			"Common Crate",
			"Seaweed",
			"Carbon Crate",
			"Quality Bait Crate",
			"Common Crate",
			"Bait Crate",
			"Mackerel",
			"Cod",
			"Amberjack",
			"Sardine",
			"Halibut",
			"Salmon",
			"Bluefin Tuna",
			"Yellowfin Tuna",
			"Barracuda",
			"Sea Bass",
			"Chinook Salmon",
			"Sea Pickle",
			"Swordfish",
			"Anglerfish",
			"Coelacanth",
			"Sailfish",
			"Stingray"
		}
	},
	FrightfulVillage = {
		Priority = 102,
		CantBeWormholed = true,
		Pool = {
			"Coffin Crab",
			"Pumpkin Pufferfish",
			"Ectoplasm Eel",
			"Frankenshrimp",
			"Ghost Minnow",
			"Potion Perch",
			"Mourning Manta Ray",
			"Candle Carp",
			"Gravestone Stingray",
			"Frightful Crate"
		}
	},
	NessieCatacomb = {
		Priority = 102,
		CantBeWormholed = true,
		Pool = {
			"Skeletal Nessie",
			"Coffin Crab",
			"Pumpkin Pufferfish",
			"Ectoplasm Eel",
			"Frankenshrimp",
			"Ghost Minnow",
			"Potion Perch",
			"Mourning Manta Ray",
			"Candle Carp",
			"Gravestone Stingray"
		}
	},
	Fischgiving = {
		Priority = 103,
		CantBeWormholed = true,
		Pool = { "Turkey" },
		InvalidDate = DateTime.fromUniversalTime(2024, 12, 7, 8)
	},
	SourGummy = {
		Priority = 110,
		CantBeWormholed = true,
		Pool = { "Xtra Sour Gummy Pack" },
		StartDate = DateTime.fromUniversalTime(2024, 11, 1, 16),
		InvalidDate = DateTime.fromUniversalTime(2025, 11, 1, 16)
	},
	Fischmas24 = {
		Priority = 104,
		CantBeWormholed = true,
		Pool = {
			"Icicle",
			"Basic Present",
			"Unique Present",
			"Supreme Present",
			"Festive Bait Crate",
			"Cookie",
			"Candy Cane Carp",
			"Santa Salmon",
			"Gingerbread Fish",
			"Snowflake Flounder",
			"Olmdeer",
			"Santa Pufferfish",
			"Northstar Serpent",
			"Glass of Milk",
			"Ornament Fish"
		}
	},
	["Overgrowth Caves"] = {
		Priority = 2,
		Pool = {
			"Tire",
			"Boot",
			"Common Crate",
			"Bait Crate",
			"Fish Barrel",
			"Seaweed",
			"Ice Anchovy",
			"Icy Salmon",
			"Icy Carp",
			"Frigid Crab",
			"Icy Tuna",
			"Icy Goldfish",
			"Frigid Antlers",
			"Frozen Walnut",
			"Glass Diamond"
		}
	},
	["Frigid Cavern"] = {
		Priority = 2,
		Pool = {
			"Tire",
			"Boot",
			"Common Crate",
			"Bait Crate",
			"Fish Barrel",
			"Seaweed",
			"Ice Eel",
			"Frigid Shrimp",
			"Ice Jellyfish",
			"Ice Octopus",
			"Frigid Taco",
			"Snowfish",
			"Polar Alligator",
			"Frigid Mammoth Tusk",
			"Glass Diamond"
		}
	},
	["Cryogenic Canal"] = {
		Priority = 2,
		Pool = {
			"Tire",
			"Boot",
			"Common Crate",
			"Bait Crate",
			"Fish Barrel",
			"Seaweed",
			"Frost Minnow",
			"Snowflake Smelt",
			"Iced Perch",
			"Snowback Char",
			"Chillfin Herring",
			"Frozen Pike",
			"Icebreaker Haddock",
			"Frostjaw Cod",
			"Aurora Trout",
			"Glacial Sturgeon"
		}
	},
	["Glacial Grotto"] = {
		Priority = 2,
		Pool = {
			"Tire",
			"Boot",
			"Common Crate",
			"Bait Crate",
			"Fish Barrel",
			"Seaweed",
			"Snowgill Dace",
			"Frostling Goby",
			"Chillback Whitefish",
			"Icy Walleye",
			"Shiverfin Haddock",
			"Frostbite Flounder",
			"Glacier Swordfish",
			"Icefang Barracuda",
			"Borealis Snapper",
			"Icebeard Shark"
		}
	},
	["The Summit Ocean"] = {
		Priority = 2,
		CantBeWormholed = true,
		Pool = {
			"Tire",
			"Boot",
			"Common Crate",
			"Bait Crate",
			"Fish Barrel",
			"Seaweed",
			"Mackerel",
			"Cod",
			"Amberjack",
			"Nurse Shark",
			"Porgy",
			"Sardine",
			"Halibut",
			"Mullet",
			"Salmon",
			"Yellowfin Tuna",
			"Sea Bass",
			"Chinook Salmon",
			"Haddock",
			"Barracuda",
			"Sea Pickle",
			"Pufferfish",
			"Swordfish",
			"Bluefin Tuna",
			"Sailfish",
			"Stingray",
			"Sawfish",
			"Moonfish",
			"Crown Bass",
			"Dolphin",
			"Flying Fish",
			"Mythic Fish",
			"Glass Diamond"
		}
	},
	["Forsaken Algae Pool"] = {
		Priority = 100,
		CantBeWormholed = true,
		Pool = {
			"Tire",
			"Boot",
			"Common Crate",
			"Seaweed",
			"Carbon Crate",
			"Quality Bait Crate",
			"Common Crate",
			"Bait Crate",
			"Mackerel",
			"Cod",
			"Amberjack",
			"Sardine",
			"Halibut",
			"Salmon",
			"Mullet",
			"Bluefin Tuna",
			"Yellowfin Tuna",
			"Barracuda",
			"Sea Bass",
			"Chinook Salmon",
			"Sea Pickle",
			"Swordfish",
			"Anglerfish",
			"Coelacanth",
			"Sailfish",
			"Stingray",
			"Sawfish",
			"Moonfish",
			"Dolphin",
			"Flying Fish",
			"Colossal Squid",
			"Oarfish",
			"Crown Bass",
			"Mythic Fish",
			"Forsaken Algae"
		}
	},
	["Ancient Algae Pool"] = {
		Priority = 100,
		CantBeWormholed = true,
		Pool = {
			"Tire",
			"Boot",
			"Common Crate",
			"Seaweed",
			"Carbon Crate",
			"Quality Bait Crate",
			"Common Crate",
			"Bait Crate",
			"Mackerel",
			"Cod",
			"Amberjack",
			"Sardine",
			"Halibut",
			"Salmon",
			"Mullet",
			"Bluefin Tuna",
			"Yellowfin Tuna",
			"Barracuda",
			"Sea Bass",
			"Chinook Salmon",
			"Sea Pickle",
			"Swordfish",
			"Anglerfish",
			"Coelacanth",
			"Sailfish",
			"Stingray",
			"Sawfish",
			"Moonfish",
			"Dolphin",
			"Flying Fish",
			"Colossal Squid",
			"Oarfish",
			"Crown Bass",
			"Mythic Fish",
			"Ancient Algae"
		}
	},
	["Mushgrove Algae Pool"] = {
		Priority = 100,
		CantBeWormholed = true,
		Pool = {
			"Tire",
			"Boot",
			"Common Crate",
			"Seaweed",
			"Carbon Crate",
			"Quality Bait Crate",
			"Common Crate",
			"Bait Crate",
			"Mackerel",
			"Cod",
			"Amberjack",
			"Sardine",
			"Halibut",
			"Salmon",
			"Mullet",
			"Bluefin Tuna",
			"Yellowfin Tuna",
			"Barracuda",
			"Sea Bass",
			"Chinook Salmon",
			"Sea Pickle",
			"Swordfish",
			"Anglerfish",
			"Coelacanth",
			"Sailfish",
			"Stingray",
			"Sawfish",
			"Moonfish",
			"Dolphin",
			"Flying Fish",
			"Colossal Squid",
			"Oarfish",
			"Crown Bass",
			"Mythic Fish",
			"Mushgrove Algae"
		}
	},
	["Snowcap Algae Pool"] = {
		Priority = 100,
		CantBeWormholed = true,
		Pool = {
			"Tire",
			"Boot",
			"Common Crate",
			"Seaweed",
			"Carbon Crate",
			"Quality Bait Crate",
			"Common Crate",
			"Bait Crate",
			"Mackerel",
			"Cod",
			"Amberjack",
			"Sardine",
			"Halibut",
			"Salmon",
			"Mullet",
			"Bluefin Tuna",
			"Yellowfin Tuna",
			"Barracuda",
			"Sea Bass",
			"Chinook Salmon",
			"Sea Pickle",
			"Swordfish",
			"Anglerfish",
			"Coelacanth",
			"Sailfish",
			"Stingray",
			"Sawfish",
			"Moonfish",
			"Dolphin",
			"Flying Fish",
			"Colossal Squid",
			"Oarfish",
			"Crown Bass",
			"Mythic Fish",
			"Snowcap Algae"
		}
	},
	["Golden Tide"] = {
		Priority = 102,
		CantBeWormholed = true,
		Pool = {
			"Confetti Shark",
			"Countdown Perch",
			"Eternal Frostwhale",
			"Hourglass Bass",
			"Tidal Pike",
			"Tire",
			"Boot",
			"Common Crate",
			"Seaweed",
			"Carbon Crate",
			"Quality Bait Crate",
			"Common Crate",
			"Bait Crate",
			"Mackerel",
			"Cod",
			"Amberjack",
			"Sardine",
			"Halibut",
			"Salmon",
			"Bluefin Tuna",
			"Yellowfin Tuna",
			"Barracuda",
			"Sea Bass",
			"Chinook Salmon",
			"Sea Pickle",
			"Swordfish",
			"Anglerfish",
			"Coelacanth",
			"Sailfish",
			"Stingray"
		}
	},
	["Zeus Pool"] = {
		Priority = 1,
		Pool = {
			"Tire",
			"Boot",
			"Common Crate",
			"Seaweed",
			"Carbon Crate",
			"Quality Bait Crate",
			"Common Crate",
			"Bait Crate",
			"Lightning Minnow",
			"Voltfin Carp",
			"Sparkfin Tetra",
			"Static Ray",
			"Lightning Pike",
			"Stormcloud Angelfish",
			"Thunder Bass",
			"Storm Eel",
			"Thunder Serpent",
			"Zeus' Herald"
		},
		CustomCondition = function(_, _, p98) --[[ CustomCondition ]] -- line: 6339
			if not p98:FindFirstChild("Cache") or not p98.Cache:FindFirstChild("Door.ZeusPuzzleDoor") then
				return false, "You must complete the Zeus Trials before fishing here."
			end

			return true
		end
	},
	["Poseidon Pool"] = {
		Priority = 1,
		Pool = {
			"Tire",
			"Boot",
			"Common Crate",
			"Seaweed",
			"Carbon Crate",
			"Quality Bait Crate",
			"Common Crate",
			"Bait Crate",
			"Colossal Carp",
			"Titan Tuna",
			"Giant Manta",
			"Leviathan Bass",
			"Massive Marlin",
			"Titanic Sturgeon",
			"Titanfang Grouper",
			"Deep Emperor",
			"Deep Behemoth",
			"Abyssal Goliath"
		},
		CustomCondition = function(_, _, p101) --[[ CustomCondition ]] -- line: 6390
			if not p101:FindFirstChild("Cache") or not p101.Cache:FindFirstChild("Door.PoseidonPuzzleDoor") then
				return false, "You must complete the Poseidon Trial before fishing here."
			end

			return true
		end
	},
	["Sunken's Depth"] = {
		Priority = 1,
		Pool = {
			"Tire",
			"Boot",
			"Common Crate",
			"Seaweed",
			"Carbon Crate",
			"Quality Bait Crate",
			"Common Crate",
			"Bait Crate",
			"Sunken Silverscale",
			"Atlantean Anchovy",
			"Oracle Minnow",
			"Poseidon's Perch",
			"Marble Maiden",
			"Crystal Chorus",
			"Helios Ray",
			"Philosopher's Fish",
			"Atlantean Guardian",
			"Triton's Herald",
			"Twilight Glowfish",
			"Atlantean Alchemist",
			"Deep Crownfish",
			"Celestial Koi"
		},
		CustomCondition = function(_, _, p104) --[[ CustomCondition ]] -- line: 6446
			if not p104:FindFirstChild("Cache") or not p104.Cache:FindFirstChild("Door.SunkenDepthDoor") then
				return false, "You must unlock the Sunken Depths before fishing here."
			end

			return true
		end
	},
	["Ethereal Abyss"] = {
		Priority = 1,
		Pool = {
			"Tire",
			"Boot",
			"Common Crate",
			"Seaweed",
			"Carbon Crate",
			"Quality Bait Crate",
			"Common Crate",
			"Bait Crate",
			"Column Crawler",
			"Atlantean Sardine",
			"Neptune's Nibbler",
			"Aqua Scribe",
			"Temple Drifter",
			"Mosaic Swimmer",
			"Echo Fisher",
			"Oracle's Eye",
			"Siren Singer",
			"Chronos Deep Swimmer",
			"Voidscale Guppy",
			"Starlit Weaver",
			"Mage Marlin",
			"King Jellyfish"
		},
		CustomCondition = function(_, _, p107) --[[ CustomCondition ]] -- line: 6502
			if not p107:FindFirstChild("Cache") or not p107.Cache:FindFirstChild("Door.EtherealAbyssDoor") then
				return false, "You must unlock the Ethereal Abyss before fishing here."
			end

			return true
		end
	},
	["Kraken Pool"] = {
		Disturbs = "KrakenHunt",
		Priority = 1,
		Pool = {
			"Tire",
			"Boot",
			"Common Crate",
			"Seaweed",
			"Carbon Crate",
			"Quality Bait Crate",
			"Common Crate",
			"Bait Crate",
			"Shadowfang Snapper",
			"Tentacled Horror",
			"Tentacle Eel",
			"Deep One",
			"Eldritch Horror",
			"Kraken's Herald",
			"Abyssal King",
			"Void Emperor",
			"Abyssal Devourer"
		},
		CustomCondition = function(_, _, p110) --[[ CustomCondition ]] -- line: 6552
			if not p110:FindFirstChild("Cache") or not p110.Cache:FindFirstChild("Door.KrakenPuzzleDoor2") then
				return false, "You must unlock the Kraken Pool before fishing here."
			end

			return true
		end
	},
	["The Kraken Pool"] = {
		CantBeWormholed = true,
		Priority = 1,
		IsHunt = true,
		Pool = {
			"Tire",
			"Boot",
			"Common Crate",
			"Seaweed",
			"Carbon Crate",
			"Quality Bait Crate",
			"Common Crate",
			"Bait Crate",
			"Shadowfang Snapper",
			"Tentacled Horror",
			"Tentacle Eel",
			"Deep One",
			"Eldritch Horror",
			"Kraken's Herald",
			"Abyssal King",
			"Void Emperor",
			"Abyssal Devourer",
			"The Kraken"
		},
		CustomCondition = function(_, _, p113) --[[ CustomCondition ]] -- line: 6604
			if not p113:FindFirstChild("Cache") or not p113.Cache:FindFirstChild("Door.KrakenPuzzleDoor2") then
				return false, "You must unlock the Kraken Pool before fishing here."
			end

			return true
		end
	},
	["Ancient Kraken Pool"] = {
		CantBeWormholed = true,
		Priority = 1,
		IsHunt = true,
		Pool = {
			"Tire",
			"Boot",
			"Common Crate",
			"Seaweed",
			"Carbon Crate",
			"Quality Bait Crate",
			"Common Crate",
			"Bait Crate",
			"Shadowfang Snapper",
			"Tentacled Horror",
			"Tentacle Eel",
			"Deep One",
			"Eldritch Horror",
			"Kraken's Herald",
			"Abyssal King",
			"Void Emperor",
			"Abyssal Devourer",
			"Ancient Kraken"
		},
		CustomCondition = function(_, _, p116) --[[ CustomCondition ]] -- line: 6656
			if not p116:FindFirstChild("Cache") or not p116.Cache:FindFirstChild("Door.KrakenPuzzleDoor2") then
				return false, "You must unlock the Kraken Pool before fishing here."
			end

			return true
		end
	},
	["Shamrock Kraken Pool"] = {
		CantBeWormholed = true,
		Priority = 1,
		IsHunt = true,
		Pool = {
			"Tire",
			"Boot",
			"Common Crate",
			"Seaweed",
			"Carbon Crate",
			"Quality Bait Crate",
			"Common Crate",
			"Bait Crate",
			"Shadowfang Snapper",
			"Tentacled Horror",
			"Tentacle Eel",
			"Deep One",
			"Eldritch Horror",
			"Kraken's Herald",
			"Abyssal King",
			"Void Emperor",
			"Abyssal Devourer",
			"Shamrock Kraken"
		},
		CustomCondition = function(_, _, p119) --[[ CustomCondition ]] -- line: 6706
			if not p119:FindFirstChild("Cache") or not p119.Cache:FindFirstChild("Door.KrakenPuzzleDoor2") then
				return false, "You must unlock the Kraken Pool before fishing here."
			end

			return true
		end
	},
	["Volcanic Vents"] = {
		CantBeWormholed = false,
		Priority = 3,
		Pool = {
			"Inferno Hide",
			"Hellfire Haddock",
			"Embertail Eel",
			"Infernal Iguanafish",
			"Smoldering Stingray",
			"Pyrite Pufferfish",
			"Molten Moray",
			"Scalding Swordfish",
			"Blisterback Blenny",
			"Magma Leviathan"
		}
	},
	["Challengers Deep"] = {
		CantBeWormholed = false,
		Priority = 3,
		Pool = {
			"Frozen Leviathan",
			"Frostscale Fangtooth",
			"Subzero Stargazer",
			"Chillshadow Chub",
			"Deep Freeze Devilfish",
			"Iceberg Isopod",
			"Polar Prowler",
			"Chillfin Chimaera",
			"Cryoskin",
			"Cryo Coelacanth"
		}
	},
	["Abyssal Zenith"] = {
		CantBeWormholed = false,
		Priority = 3,
		Pool = {
			"Titanic Black Seadevil",
			"Leviathan Humpback Anglerfish",
			"Abyssal Bearded Seadevil",
			"Colossal Saccopharynx",
			"Radiant Triplewart Seadevil",
			"Deeplight Footballfish",
			"Voidglow Ghostfish",
			"Infant Giant Seadevil",
			"Giant Seadevil",
			"Crowned Anglerfish"
		}
	},
	["Calm Zone"] = {
		CantBeWormholed = false,
		Priority = 3,
		Pool = {
			"Quartzfin Queenfish",
			"Diamond Discus",
			"Emerald Elephantnose",
			"Sapphire Stargazer",
			"Ruby Rasbora",
			"Prismatic Parrotfish",
			"Crystal Corydoras",
			"Shimmering Silverside",
			"Crystallized Seadragon"
		}
	},
	["Forsaken Veil"] = {
		CantBeWormholed = false,
		Priority = 3,
		Disturbs = "ScyllaHunt",
		Pool = {
			"Hydra Haddock",
			"Serpent Surgeonfish",
			"Kraken Koi",
			"Gorgon Grouper",
			"Cyclone Scorpionfish",
			"Siren Sculpin",
			"Typhoon Tailfin",
			"Twilight Tentaclefish"
		},
		CustomCondition = function(_, _, p122) --[[ CustomCondition ]] -- line: 6838
			if not p122:FindFirstChild("Cache") or not p122.Cache:FindFirstChild("ScyllaBossfight") then
				return false, "You must complete the Scylla bossfight to fish here."
			end

			return true
		end
	},
	["Forsaken Veil - Scylla"] = {
		CantBeWormholed = true,
		Priority = 4,
		IsHunt = true,
		Pool = {
			"Hydra Haddock",
			"Serpent Surgeonfish",
			"Kraken Koi",
			"Gorgon Grouper",
			"Cyclone Scorpionfish",
			"Siren Sculpin",
			"Typhoon Tailfin",
			"Twilight Tentaclefish",
			"Scylla"
		},
		CustomCondition = function(_, _, p125) --[[ CustomCondition ]] -- line: 6873
			if not p125:FindFirstChild("Cache") or not p125.Cache:FindFirstChild("ScyllaBossfight") then
				return false, "You must complete the Scylla bossfight to fish here."
			end

			return true
		end
	},
	["Forsaken Veil - Shamrock Scylla"] = {
		CantBeWormholed = true,
		Priority = 4,
		IsHunt = true,
		Pool = {
			"Hydra Haddock",
			"Serpent Surgeonfish",
			"Kraken Koi",
			"Gorgon Grouper",
			"Cyclone Scorpionfish",
			"Siren Sculpin",
			"Typhoon Tailfin",
			"Twilight Tentaclefish",
			"Shamrock Scylla"
		},
		CustomCondition = function(_, _, p128) --[[ CustomCondition ]] -- line: 6908
			if not p128:FindFirstChild("Cache") or not p128.Cache:FindFirstChild("ScyllaBossfight") then
				return false, "You must complete the Scylla bossfight to fish here."
			end

			return true
		end
	},
	Waveborne = {
		CantBeWormholed = true,
		Priority = 2,
		Pool = {
			"Gale Snapper",
			"Drift Claw",
			"Tropical Bait Crate",
			"Foamrunner",
			"Sprayfin",
			"Ripple Spine",
			"Depth Lurker",
			"Surge Pike",
			"Abyss Dart",
			"Breaker Moth",
			"Tide Fang",
			"Wave Piercer",
			"Gust Tail",
			"Vortex Ray",
			"Storm Skipper"
		}
	},
	["Pine Shoal"] = {
		CantBeWormholed = true,
		Priority = 2,
		Pool = {
			"Watching Glowfin",
			"Drifting Gildfin",
			"Blue Foamtail",
			"Tropical Bait Crate",
			"Redwood Duskray",
			"Oak Stripetail",
			"Pine Zephyrfish",
			"Parktail Spinesnapper",
			"Sunray Sunscale",
			"Thornfish"
		}
	},
	Lushgrove = {
		CantBeWormholed = true,
		Priority = 2,
		Pool = {
			"Bogscale",
			"Murkdrifter",
			"Vinefish",
			"Canopy Tetra",
			"Tropical Bait Crate",
			"Hollow Snapper",
			"Fogstripe",
			"Temple Perch",
			"Relic Dart",
			"Echo Koi",
			"Glade Lurker",
			"Jungle Phantom",
			"Idolfish",
			"Primordial Levi"
		}
	},
	Emberreach = {
		CantBeWormholed = true,
		Priority = 2,
		Pool = {
			"Ashscale Minnow",
			"Glowfin Skipper",
			"Moltenstripe",
			"Tropical Bait Crate",
			"Sunflare Tetra",
			"Furnace Leaper",
			"Smolderfang",
			"Volcanic Prowler",
			"Inferno Chaser",
			"Cinder Dart",
			"Scorchray",
			"Brimstone Angler",
			"Obsidian Koi"
		}
	},
	["Emberreach Ponds"] = {
		CantBeWormholed = true,
		Priority = 3,
		Pool = {
			"Pyre Fang",
			"Firecrest",
			"Tropical Bait Crate",
			"Sulfur Snapper",
			"Smogfish",
			"Blazebelly",
			"Cragscale",
			"Tropicspike"
		}
	},
	["Emberreach Lava"] = {
		CantBeWormholed = true,
		Priority = 3,
		RequiredDurability = 100,
		Pool = {
			"Lava Bream",
			"Magma Pike",
			"Hellmaw Eel",
			"Searfin",
			"Basalt Pike",
			"Emberwing",
			"Molten Ripple"
		}
	},
	["Isle of New Beginnings"] = {
		CantBeWormholed = true,
		Priority = 2,
		Pool = {
			"Tidallow",
			"Reefdart",
			"Crestscale",
			"Tropical Bait Crate",
			"Horizon Tetra",
			"Driftfin",
			"Lantern Snapper",
			"Abyss Flicker",
			"Whisper Eel",
			"Phantom Koi",
			"Tartaruga"
		}
	},
	["Cursed Isle"] = {
		CantBeWormholed = false,
		Priority = 2,
		Pool = {
			"Blisterfish",
			"Gloombiter",
			"Rotjaw",
			"Murkslither",
			"Tropical Bait Crate",
			"Split Eye Snapper",
			"Tumor Pike",
			"Hollowfin",
			"Crawling Angler",
			"Veinspawn",
			"Screaming Fluke",
			"Chasm Leech",
			"Dreaming Aberration",
			"Abyssborn Monstrosity"
		}
	},
	["Open Ocean"] = {
		CantBeWormholed = true,
		Priority = 0,
		Pool = {
			"Cursed Thread",
			"Hogchoker",
			"Rock Gunnel",
			"Pupfish",
			"Four Eyes Fish",
			"Black Swallower",
			"Warty Angler",
			"Tropical Bait Crate",
			"Lumpclinger",
			"Snipefish",
			"Boarfish",
			"Telescopefish",
			"Fangtooth",
			"Velvet Belly Lanternshark",
			"Snakehead",
			"Sarcastic Fringehead",
			"Knifefish",
			"Tripod Fish",
			"Pelican Eel",
			"Bigfin Squid",
			"X-ray Tetra",
			"Psychedelic Frogfish",
			"Dogefin",
			"Toilet Fish",
			"Device Display"
		}
	},
	["Azure Lagoon"] = {
		CantBeWormholed = true,
		Priority = 2,
		Pool = {
			"Murkfin",
			"Brackscale",
			"Lagoon Dart",
			"Tropical Bait Crate",
			"Glimmer Guppy",
			"Swampjaw",
			"Algae Lurker",
			"Reed Striker",
			"Azure Prowler",
			"Phantom Brine",
			"Bloomtail",
			"Depth Drifter",
			"Verdant Mirage"
		}
	},
	["Blue Moon - First Sea"] = {
		Priority = 3,
		CantBeWormholed = false,
		Pool = {
			"Moon Arctic Char",
			"Silver Scuttler",
			"Pale Ghost Lumpfish",
			"Frost Ray",
			"Blue Langanose",
			"Starbellied Wolf Fish",
			"Icy Daggerfish",
			"Lunar Monkfish",
			"Moon Idol",
			"Moonveil Killifish",
			"Gloamfin Gar",
			"Lurking Crescent Pike",
			"Moonridge Catfish",
			"Crescent Madtom",
			"Bog Lantern Goby",
			"Tarnished Moongill"
		},
		CustomCondition = function(_, _) --[[ CustomCondition ]] -- line: 7201
			-- upvalues: ReplicatedStorage (copy)
			if ReplicatedStorage:GetAttribute("BlueMoonEvent") ~= true then
				return false, "<font color=\"#D20103\">You can only fish here during a Blue Moon event.</font>"
			end

			return true
		end
	},
	["Jurassic Island Pool"] = {
		Priority = 6,
		CantBeWormholed = true,
		ExclusiveRods = {
			{
				"Zora's Rod",
				"Henry's Rod",
				"Duncan's Rod",
				"Developers Rod",
				"Mission Specialist's Rod",
				"Fixer's Rod",
				"Paleontologist's Rod"
			},
			"<font color=\"rgb(255,0,0)\">You must use a Jurassic World rod in this pool!</font>"
		},
		Pool = {
			"Gillicus",
			"Oreochima",
			"Diplomystus",
			"Giant Lamprey",
			"Edestus",
			"Jurassic Helicoprion",
			"Dasyatis",
			"Rhizodus"
		}
	},
	["Jurassic Island Ocean Pool"] = {
		Priority = 5,
		CantBeWormholed = true,
		ExclusiveRods = {
			{
				"Zora's Rod",
				"Henry's Rod",
				"Duncan's Rod",
				"Developers Rod",
				"Mission Specialist's Rod",
				"Fixer's Rod",
				"Paleontologist's Rod"
			},
			"<font color=\"rgb(255,0,0)\">You must use a Jurassic World rod in this pool!</font>"
		},
		Pool = {
			"Gillicus",
			"Oreochima",
			"Diplomystus",
			"Giant Lamprey",
			"Edestus",
			"Jurassic Helicoprion",
			"Dasyatis",
			"Rhizodus"
		}
	},
	LEGO = {
		Priority = 5,
		CantBeWormholed = true,
		ExclusiveRods = {
			{
				"Brick Built Rod",
				"Developers Rod"
			},
			"<font color=\"rgb(255,0,0)\">You must use the Brick Built Rod in this pool!</font>"
		},
		Pool = {
			"Tentabrick",
			"Studphin",
			"Studling Crab",
			"Stud Shark",
			"Stud Koi",
			"Jellystud",
			"Glow Brick",
			"Crab Stud",
			"Cardinal Studfish",
			"Brickhorse",
			"Stud Turtle",
			"Yellow Studfish",
			"Goldbrick",
			"Clown Brickfish",
			"Azure Studfish"
		}
	},
	["LEGO - Studolodon"] = {
		Priority = 5,
		CantBeWormholed = true,
		ExclusiveRods = {
			{
				"Brick Built Rod",
				"Developers Rod"
			},
			"<font color=\"rgb(255,0,0)\">You must use the Brick Built Rod in this pool!</font>"
		},
		Pool = {
			"Studolodon",
			"Tire",
			"Boot",
			"Common Crate",
			"Seaweed",
			"Carbon Crate",
			"Quality Bait Crate",
			"Common Crate",
			"Bait Crate",
			"Mackerel",
			"Cod",
			"Amberjack",
			"Sardine",
			"Halibut",
			"Salmon",
			"Mullet",
			"Bluefin Tuna",
			"Yellowfin Tuna",
			"Barracuda",
			"Sea Bass",
			"Chinook Salmon",
			"Sea Pickle",
			"Swordfish",
			"Anglerfish",
			"Coelacanth",
			"Sailfish",
			"Stingray",
			"Sawfish",
			"Moonfish",
			"Dolphin",
			"Flying Fish",
			"Colossal Squid",
			"Oarfish",
			"Crown Bass",
			"Mythic Fish",
			"Long Pike",
			"Mustard"
		}
	},
	["Whale Interior"] = {
		CantBeWormholed = true,
		Priority = 2,
		Pool = {
			"Bearded Toadfish",
			"Giant Moray",
			"Gulf Toadfish",
			"Oyster toadfish",
			"Smooth toadfish",
			"Splendid toadfish"
		}
	},
	["Treasure Island"] = {
		CantBeWormholed = false,
		Priority = 2,
		Pool = {
			"Bluegem Angelfish",
			"Coin Triggerfish",
			"Crowned Royal Gramma",
			"Emerald Angelfish",
			"Gemscale Mandarinfish",
			"Gemstone Whale Shark",
			"Goldband Butterflyfish",
			"Golden Dorado",
			"Goldfin Octopus",
			"Hidden Filefish",
			"Net Wolffish",
			"Queen Angelfish",
			"Ruby Lionfish",
			"Coin Piranha",
			"Coin Squid",
			"Gem Anchovy",
			"Gem Blobfish",
			"Gem Dolphin",
			"Gem Eel",
			"Gem Marlin",
			"Gem Salmon"
		}
	},
	["Nectar Den"] = {
		Priority = 1,
		Disturbs = "NectarBloom",
		Pool = {
			"Honey Drifter",
			"Stinger Skipper",
			"Comb Cluster",
			"Combscale Bass",
			"Honey Clump",
			"Bee"
		},
		FishingStats = {
			Lure = -50
		}
	},
	["Nectar Den - Serpent"] = {
		Priority = 2,
		Pool = {
			"Honey Drifter",
			"Stinger Skipper",
			"Comb Cluster",
			"Combscale Bass",
			"Honey Clump",
			"Bee",
			"Queen Bee Serpent"
		},
		FishingStats = {
			Lure = -50
		}
	},
	["Living Garden"] = {
		Priority = 1,
		Disturbs = "FlowerGuardianHunt",
		Pool = {
			"Driftwood",
			"Petal Ray",
			"Garden Snail",
			"Oversized Leaf",
			"Colossal Flower",
			"Thorn Ribbon Eel",
			"Bloomback Turtle",
			"Flower Flounder",
			"Diamond Daisy",
			"Butterfly",
			"Orchid Anglerfish",
			"Leafscale Lemon Shark"
		}
	},
	["Toxic Grove"] = {
		Priority = 1,
		Disturbs = "RotbloomHunt",
		RequiredDurability = 150,
		Pool = {
			"Bone",
			"Spore Lurker",
			"Mire Krakenling",
			"Widow Bloom",
			"Rotcoil Eel",
			"Bog Skulker",
			"Chlorophage",
			"Toxic Jellymass",
			"Blight Idol"
		},
		RarityBaseChanceBoosts = {
			Common = 0.25
		}
	},
	["Basketback Tortoise Hunt"] = {
		Priority = 100,
		IsHunt = true,
		CantBeWormholed = true,
		Pool = {
			"Tire",
			"Boot",
			"Common Crate",
			"Bait Crate",
			"Fish Barrel",
			"Seaweed",
			"Mackerel",
			"Cod",
			"Amberjack",
			"Nurse Shark",
			"Porgy",
			"Sardine",
			"Halibut",
			"Mullet",
			"Salmon",
			"Yellowfin Tuna",
			"Sea Bass",
			"Chinook Salmon",
			"Haddock",
			"Barracuda",
			"Sea Pickle",
			"Pufferfish",
			"Swordfish",
			"Bluefin Tuna",
			"Sailfish",
			"Stingray",
			"Sawfish",
			"Moonfish",
			"Crown Bass",
			"Dolphin",
			"Flying Fish",
			"Mythic Fish",
			"Basketback Tortoise"
		}
	},
	Default = {
		CantBeWormholed = true,
		Priority = 2,
		Pool = {
			"Rock",
			"Log",
			"Seaweed",
			"Tire",
			"Boot"
		}
	}
}
