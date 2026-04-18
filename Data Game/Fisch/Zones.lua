local ReplicatedStorage = game:GetService("ReplicatedStorage")

return {
	DevTest = {
		Pool = { "Scylla" },
		CantBeWormholed = true,
		Priority = 2
	},
	["Bellona's Frenzy of War"] = {
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
		Priority = 3,
		Disturbs = {
			"WarSurge",
			"LegionnaireLampreyHunt"
		}
	},
	["Apollo's Song of Light"] = {
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
		Priority = 3,
		Disturbs = {
			"SolarChorus",
			"HeliosRayHunt"
		},
		CustomCondition = function(_, p2, _) --[[ CustomCondition ]] -- line: 83
			if not p2.Data.NewFormat.WrathOfOlympus.DivineSealsBroken.Bellona then
				return false, "You must break Bellona's seal before fishing here."
			end

			return true
		end
	},
	["Poseidon's Storm of Floods"] = {
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
		Priority = 3,
		Disturbs = {
			"StormFlood",
			"TidecrasherArchonHunt"
		},
		CustomCondition = function(_, p5, _) --[[ CustomCondition ]] -- line: 116
			if not p5.Data.NewFormat.WrathOfOlympus.DivineSealsBroken.Apollo then
				return false, "You must break Apollo's seal before fishing here."
			end

			return true
		end
	},
	["Zeus's Thunder of Chaos"] = {
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
		Priority = 4,
		Disturbs = "KeraunoWyrmHunt",
		CustomCondition = function(_, p8, _) --[[ CustomCondition ]] -- line: 146
			if not p8.Data.NewFormat.WrathOfOlympus.DivineSealsBroken.Poseidon then
				return false, "You must break Poseidon's seal before fishing here."
			end

			return true
		end
	},
	["Hades' Underworld of Indefinite"] = {
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
		Priority = 3,
		CustomCondition = function(_, p11, _) --[[ CustomCondition ]] -- line: 175
			if not p11.Data.NewFormat.WrathOfOlympus.DivineSealsBroken.Zeus then
				return false, "You must break Zeus's seal before fishing here."
			end

			return true
		end
	},
	["Olympian Fissure"] = {
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
		Priority = 3,
		CustomCondition = function(_, p14, _) --[[ CustomCondition ]] -- line: 200
			if not p14.Data.NewFormat.WrathOfOlympus.DivineSealsBroken.Hades then
				return false, "You must break Hades' seal before fishing here."
			end

			return true
		end
	},
	["Tidecrasher Archon Hunt"] = {
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
		Priority = 5,
		CantBeWormholed = true,
		IsHunt = true,
		CustomCondition = function(_, p17, _) --[[ CustomCondition ]] -- line: 251
			if not p17.Data.NewFormat.WrathOfOlympus.DivineSealsBroken.Apollo then
				return false, "You must break Apollo's seal before fishing here."
			end

			return true
		end
	},
	["Soul Pool"] = {
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
		Priority = 3,
		CantBeWormholed = true,
		CustomCondition = function(_, p20, _) --[[ CustomCondition ]] -- line: 282
			if not p20.Data.NewFormat.WrathOfOlympus.DivineSealsBroken.Zeus then
				return false, "You must break Zeus's seal before fishing here."
			end

			return true
		end
	},
	["Helios Sunray Hunt"] = {
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
		Priority = 6,
		CantBeWormholed = true,
		IsHunt = true,
		CustomCondition = function(_, p23, _) --[[ CustomCondition ]] -- line: 316
			if not p23.Data.NewFormat.WrathOfOlympus.DivineSealsBroken.Bellona then
				return false, "You must break Bellona's seal before fishing here."
			end

			return true
		end
	},
	["Styx Angler Hunt"] = {
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
		Priority = 5,
		CantBeWormholed = true,
		IsHunt = true,
		CustomCondition = function(_, p26, _) --[[ CustomCondition ]] -- line: 348
			if not p26.Data.NewFormat.WrathOfOlympus.DivineSealsBroken.Zeus then
				return false, "You must break Zeus's seal before fishing here."
			end

			return true
		end
	},
	["Wisp Haunt"] = {
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
		Priority = 3,
		CantBeWormholed = true,
		CustomCondition = function(_, p29, _) --[[ CustomCondition ]] -- line: 379
			if not p29.Data.NewFormat.WrathOfOlympus.DivineSealsBroken.Zeus then
				return false, "You must break Zeus's seal before fishing here."
			end

			return true
		end
	},
	["Legionnaire Lamprey Hunt"] = {
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
		},
		Priority = 5,
		CantBeWormholed = true,
		IsHunt = true
	},
	["Olympian Devil Hunt"] = {
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
		Priority = 5,
		IsHunt = true,
		CantBeWormholed = true,
		CustomCondition = function(_, p32, _) --[[ CustomCondition ]] -- line: 430
			if not p32.Data.NewFormat.WrathOfOlympus.DivineSealsBroken.Hades then
				return false, "You must break Hades' seal before fishing here."
			end

			return true
		end
	},
	["Atlantean Storm"] = {
		Pool = {
			"Void Angler",
			"Tempest Ray",
			"Abyss Snapper",
			"Whirlpool Marlin",
			"Vortex Barracuda",
			"Typhoon Tuna",
			"Cyclone Mako",
			"Maelstorm Shark"
		},
		Priority = 4
	},
	["Kerauno Wyrm Pool"] = {
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
		IsHunt = true,
		Priority = 10,
		CantBeWormholed = true,
		CustomCondition = function(_, p35, _) --[[ CustomCondition ]] -- line: 476
			if not p35.Data.NewFormat.WrathOfOlympus.DivineSealsBroken.Poseidon then
				return false, "You must break Poseidon's seal before fishing here."
			end

			return true
		end
	},
	["Everturn Forest"] = {
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
		},
		Priority = 2
	},
	["Dreadfin Hunt"] = {
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
		},
		Priority = 5,
		CantBeWormholed = true,
		IsHunt = true
	},
	["Lucky Gold"] = {
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
		Priority = 5,
		CantBeWormholed = true,
		RarityLuckFactorBoosts = {
			Mythical = 2,
			Exotic = 3,
			Secret = 3
		}
	},
	["Rotbloom Hunt"] = {
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
		Priority = 5,
		CantBeWormholed = true,
		IsHunt = true,
		RarityBaseChanceBoosts = {
			Common = 0.25
		}
	},
	["Flower Guardian Hunt"] = {
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
		},
		Priority = 5,
		CantBeWormholed = true,
		IsHunt = true
	},
	["Toxic Boil"] = {
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
		Priority = 100,
		CantBeWormholed = true,
		Disturbs = "RotbloomHunt",
		RequiredDurability = 150,
		RarityBaseChanceBoosts = {
			Common = 0.25
		}
	},
	["Above the Clouds"] = {
		Pool = {
			"Sky Bass",
			"Winged Carp",
			"Flying Pufferfish",
			"Flying Fish",
			"Harmonic Dove"
		},
		CantBeWormholed = true,
		Priority = 1,
		Disturbs = "WyvernHunt",
		RarityLuckFactorBoosts = {
			Mythical = 0.5,
			Exotic = 0.5,
			Secret = 0.5
		},
		CustomCondition = function(_, p38, _) --[[ CustomCondition ]] -- line: 713
			local AboveTheClouds = p38.Data.NewFormat.TimeTrials.AboveTheClouds

			if not AboveTheClouds or (not AboveTheClouds.CompleteCount or AboveTheClouds.CompleteCount < 1) then
				return false, "You must complete the gliding challenge before fishing here."
			end

			return true
		end
	},
	["Wyvern Hunt"] = {
		Pool = {
			"Sky Bass",
			"Winged Carp",
			"Flying Pufferfish",
			"Flying Fish",
			"Harmonic Dove",
			"Wyvern"
		},
		CantBeWormholed = true,
		Priority = 2,
		IsHunt = true,
		RarityLuckFactorBoosts = {
			Mythical = 0.5,
			Secret = 0.5
		},
		CustomCondition = function(_, p41, _) --[[ CustomCondition ]] -- line: 741
			local AboveTheClouds = p41.Data.NewFormat.TimeTrials.AboveTheClouds

			if not AboveTheClouds or (not AboveTheClouds.CompleteCount or AboveTheClouds.CompleteCount < 1) then
				return false, "You must complete the gliding challenge before fishing here."
			end

			return true
		end
	},
	["Skeletal Leviathan Hunt"] = {
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
		},
		Priority = 5,
		CantBeWormholed = true,
		RequiredDurability = 100,
		IsHunt = true
	},
	["Scoria Reach"] = {
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
		},
		Priority = 2,
		RequiredDurability = 100
	},
	["Scoria Reach 2"] = {
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
		},
		Priority = 3,
		RequiredDurability = 200
	},
	["Scoria Reach Volcano"] = {
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
		},
		Disturbs = "SkeletalLeviathanHunt",
		Priority = 4,
		RequiredDurability = 100
	},
	["Scoria Reach Molten Serpent"] = {
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
		},
		Priority = 3,
		RequiredDurability = 100
	},
	["Scoria Reach Cindercoil Eel"] = {
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
		},
		Priority = 3,
		RequiredDurability = 100
	},
	["Scoria Reach Infernal Isonade"] = {
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
		},
		Priority = 3,
		RequiredDurability = 100
	},
	["Scoria Reach Crag-Crab"] = {
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
		},
		Priority = 3,
		RequiredDurability = 100
	},
	["Streamer Hideout"] = {
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
		},
		Priority = 2,
		CantBeWormholed = true
	},
	["Sweet Stream"] = {
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
		},
		Priority = 2,
		CantBeWormholed = true
	},
	["Sweetheart Shores"] = {
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
		Priority = 1,
		CantBeWormholed = true,
		RarityBaseChanceBoosts = {
			Common = 0.3,
			Rare = 0.5
		}
	},
	["Sweetheart Shores Waterfall"] = {
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
		Priority = 2,
		CantBeWormholed = true,
		RarityBaseChanceBoosts = {
			Common = 0.3,
			Rare = 0.5
		}
	},
	["Sweetheart Shores Pond"] = {
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
		Priority = 2,
		CantBeWormholed = true,
		RarityBaseChanceBoosts = {
			Common = 0.3,
			Rare = 0.5
		}
	},
	["Sweetheart Shores Well"] = {
		Pool = {
			"Rock",
			"Log",
			"Seaweed",
			"Tire",
			"Boot",
			"Common Crate",
			"Bait Crate",
			"Quality Bait Crate"
		},
		Priority = 2,
		CantBeWormholed = true
	},
	Lovestorm = {
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
		Priority = 100,
		CantBeWormholed = true,
		IsHunt = true,
		RarityBaseChanceBoosts = {
			Trash = 0.1,
			Common = 0.3,
			Rare = 0.5
		}
	},
	["Supercharged Lovestorm"] = {
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
		Priority = 101,
		CantBeWormholed = true,
		IsHunt = true,
		RarityBaseChanceBoosts = {
			Trash = 0.1,
			Common = 0.3,
			Rare = 0.5
		}
	},
	["Sacred Lovestorm"] = {
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
		Priority = 102,
		CantBeWormholed = true,
		IsHunt = true,
		RarityBaseChanceBoosts = {
			Trash = 0.1,
			Common = 0.3,
			Rare = 0.5
		}
	},
	Tidefall = {
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
		},
		CantBeWormholed = false,
		Priority = 1,
		Disturbs = "TidefallDripstoneCollapse"
	},
	["Tidefall Castle"] = {
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
		CantBeWormholed = true,
		Priority = 1,
		Disturbs = "Plesiosaur",
		CustomCondition = function(_, p44) --[[ CustomCondition ]] -- line: 1308
			if not p44.Data.NewFormat.Tidefall.Obelisks.GateOpen then
				return false, "You have not yet unlocked this area."
			end

			return true
		end
	},
	["Coral Bastion"] = {
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
		},
		Disturbs = "ReefTitan",
		CantBeWormholed = false,
		Priority = 2
	},
	["Sunken Reliquary"] = {
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
		},
		Disturbs = "Omnithal",
		CantBeWormholed = false,
		Priority = 2
	},
	["Collapsed Ruins"] = {
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
		},
		Disturbs = "Pliosaur",
		CantBeWormholed = false,
		Priority = 2
	},
	["Crowned Ruins"] = {
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
		},
		Disturbs = "Goldwraith",
		CantBeWormholed = false,
		Priority = 3
	},
	["Plesiosaur Hunt"] = {
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
		Priority = 4,
		CantBeWormholed = true,
		IsHunt = true,
		CustomCondition = function(_, p46) --[[ CustomCondition ]] -- line: 1447
			if not p46.Data.NewFormat.Tidefall.Obelisks.GateOpen then
				return false, "You have not yet unlocked this area."
			end

			return true
		end
	},
	["Reef Titan Hunt"] = {
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
		},
		Priority = 4,
		CantBeWormholed = true,
		IsHunt = true
	},
	["Omnithal Hunt"] = {
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
		},
		Priority = 4,
		CantBeWormholed = true,
		IsHunt = true
	},
	["Pliosaur Hunt"] = {
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
		},
		Priority = 4,
		CantBeWormholed = true,
		IsHunt = true
	},
	["Goldwraith Hunt"] = {
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
		},
		Priority = 4,
		CantBeWormholed = true,
		IsHunt = true
	},
	["New Years"] = {
		Pool = {
			"Eonshell",
			"Confetti Carp",
			"Party Pufferfish",
			"Party Popperfish",
			"Sparkler Sardine",
			"Sparkling Corkfin"
		},
		CantBeWormholed = true,
		Priority = 5
	},
	["Glacial Ridge"] = {
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
		},
		Priority = 104,
		CantBeWormholed = true
	},
	["Northstar Village"] = {
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
		},
		Priority = 105,
		CantBeWormholed = true
	},
	["Cryoshock Serpent"] = {
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
		Priority = 106,
		CantBeWormholed = true,
		CustomCondition = function(p47, p48, p49) --[[ CustomCondition ]] -- line: 1702
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
		},
		CantBeWormholed = true,
		Priority = 2
	},
	HallOfWhispers = {
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
		CantBeWormholed = true,
		Priority = 2,
		CustomCondition = function(_, p51) --[[ CustomCondition ]] -- line: 1795
			if not p51.Data.NewFormat.TerrapinExpansion.HasUnlockedInitialHiddenArea then
				return false, "The fish ignore you completely... Maybe it's best to get here <b>normally</b>."
			end

			return true
		end
	},
	PassageOfOaths = {
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
		CantBeWormholed = true,
		Priority = 2,
		CustomCondition = function(_, p53) --[[ CustomCondition ]] -- line: 1821
			for _, v61 in p53.Data.NewFormat.TerrapinExpansion.HallOfWhispers.PassageRequirements do
				if not v61 then
					return false, "The fish ignore you completely... Maybe it's best to get here <b>normally</b>."
				end
			end

			return true
		end
	},
	MossjawHunt = {
		Pool = {
			"Bronze Corydoras",
			"Neon Tetra",
			"Cardinal Tetra",
			"Redeye Piranha",
			"Black Ghost Knifefish",
			"Electric Eel",
			"Pirarucu"
		},
		CantBeWormholed = true,
		Priority = 4,
		IsHunt = true,
		CustomCondition = function(_, p55) --[[ CustomCondition ]] -- line: 1846
			local v64 = 0

			for _, v66 in p55.Data.NewFormat.LostJungle.Runes.Placed do
				if v66 then
					v64 += 1
				end
			end

			if v64 < 5 then
				return false, "You must place all 5 runes before fishing here."
			end

			return true
		end
	},
	["Frostwyrm Hunt"] = {
		Pool = {
			"Ice",
			"Bone",
			"Stalactite",
			"Antarctic Icefish",
			"Saffron Cod",
			"Greenland Halibut",
			"Glacial Squid"
		},
		Priority = 4,
		CantBeWormholed = true,
		IsHunt = true,
		CustomCondition = function(_, _) --[[ CustomCondition ]] -- line: 1876
			return true
		end
	},
	["Boreal Pines"] = {
		Pool = {
			"Ice",
			"Antarctic Icefish",
			"Saffron Cod",
			"Greenland Halibut"
		},
		CantBeWormholed = false,
		Priority = 1
	},
	["Boreal Pines - Ice Fishing"] = {
		Pool = {
			"Ice",
			"Antarctic Icefish",
			"Saffron Cod",
			"Greenland Halibut",
			"Eelpout",
			"Fourhorn Sculpin"
		},
		CantBeWormholed = false,
		Priority = 2
	},
	["Boreal Pines - Cave"] = {
		Pool = {
			"Ice",
			"Bone",
			"Stalactite",
			"Antarctic Icefish",
			"Saffron Cod",
			"Greenland Halibut",
			"Glacial Squid"
		},
		Disturbs = "FrostwyrmHunt",
		CantBeWormholed = false,
		Priority = 2
	},
	["Boreal Pines - Peak"] = {
		Pool = {
			"Ice",
			"Antarctic Icefish",
			"Polar Cod",
			"Saffron Cod",
			"Greenland Halibut",
			"Lake Whitefish"
		},
		CantBeWormholed = false,
		Priority = 2
	},
	["Luminescent Cavern"] = {
		Pool = {
			"Rock",
			"Stalactite",
			"Hawaiian Bobtail Squid",
			"Blue Ribbon Eel",
			"Bluelip Batfish",
			"Kitefin Shark",
			"Atolla Jellyfish"
		},
		CantBeWormholed = false,
		Priority = 2,
		Disturbs = {
			"ColossalEtherealDragon",
			"ColossalBlueDragon"
		}
	},
	["Lost Jungle"] = {
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
		},
		CantBeWormholed = false,
		Priority = 2
	},
	["Mossjaw Rest"] = {
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
		},
		Disturbs = "MossjawHunt",
		CantBeWormholed = false,
		Priority = 3
	},
	["Crimson Cavern"] = {
		Pool = {
			"Rock",
			"Stalactite",
			"Sea Raven",
			"Red Fangtooth",
			"Viperfish",
			"Japanese Dragon Eel",
			"Vampire Squid"
		},
		CantBeWormholed = false,
		Priority = 2,
		Disturbs = {
			"ColossalAncientDragon",
			"ColossalEtherealDragon"
		},
		CustomCondition = function(_, p59) --[[ CustomCondition ]] -- line: 2035
			if not p59.Data.NewFormat.LuminescentCavern.KeystoneData.CrimsonCavernUnlocked then
				return false, "You must unlock the Crimson Cavern before fishing here."
			end

			return true
		end
	},
	["Cultist Lair"] = {
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
		CantBeWormholed = false,
		Priority = 2,
		CustomCondition = function(_, p61) --[[ CustomCondition ]] -- line: 2065
			if not p61.Data.NewFormat.TerrapinExpansion.HasUnlockedInitialHiddenArea then
				return false, "The fish ignore you completely... Maybe it's best to get here <b>normally</b>."
			end

			return true
		end
	},
	["Hall of Whispers"] = {
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
		CantBeWormholed = false,
		Priority = 2,
		CustomCondition = function(_, p63) --[[ CustomCondition ]] -- line: 2091
			if not p63.Data.NewFormat.TerrapinExpansion.HasUnlockedInitialHiddenArea then
				return false, "The fish ignore you completely... Maybe it's best to get here <b>normally</b>."
			end

			return true
		end
	},
	["Passage of Oaths"] = {
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
		CantBeWormholed = false,
		Priority = 2,
		CustomCondition = function(_, p65) --[[ CustomCondition ]] -- line: 2116
			for _, v78 in p65.Data.NewFormat.TerrapinExpansion.HallOfWhispers.PassageRequirements do
				if not v78 then
					return false, "The fish ignore you completely... Maybe it's best to get here <b>normally</b>."
				end
			end

			return true
		end
	},
	["The Sanctum"] = {
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
		CantBeWormholed = false,
		Priority = 2,
		Disturbs = "The Sanctum Hunt",
		CustomCondition = function(_, p67) --[[ CustomCondition ]] -- line: 2146
			if not p67.Data.NewFormat.TerrapinExpansion.UnlockedSanctum then
				return false, "The fish ignore you completely... Maybe it's best to get here <b>normally</b>."
			end

			return true
		end
	},
	["The Sanctum Hunt"] = {
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
		CantBeWormholed = true,
		Priority = 3,
		IsHunt = true,
		CustomCondition = function(_, p69) --[[ CustomCondition ]] -- line: 2174
			if not p69.Data.NewFormat.TerrapinExpansion.UnlockedSanctum then
				return false, "The fish ignore you completely... Maybe it's best to get here <b>normally</b>."
			end

			return true
		end
	},
	["The Sanctum Profane Hunt"] = {
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
		CantBeWormholed = true,
		Priority = 3,
		IsHunt = true,
		CustomCondition = function(_, p71) --[[ CustomCondition ]] -- line: 2202
			if not p71.Data.NewFormat.TerrapinExpansion.UnlockedSanctum then
				return false, "The fish ignore you completely... Maybe it's best to get here <b>normally</b>."
			end

			return true
		end
	},
	["The Sanctum Shamrock Hunt"] = {
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
		CantBeWormholed = true,
		Priority = 3,
		IsHunt = true,
		CustomCondition = function(_, p73) --[[ CustomCondition ]] -- line: 2230
			if not p73.Data.NewFormat.TerrapinExpansion.UnlockedSanctum then
				return false, "The fish ignore you completely... Maybe it's best to get here <b>normally</b>."
			end

			return true
		end
	},
	["Carrot Garden"] = {
		Pool = {
			"Carrot Turtle",
			"Carrot Pufferfish",
			"Carrot Minnow",
			"Carrot Eel",
			"Carrot Salmon",
			"Carrot Goldfish",
			"Carrot Snapper",
			"Carrot Shark"
		},
		Priority = 102,
		CantBeWormholed = false
	},
	["AFK Pool - Trading Plaza"] = {
		Pool = { "Doubloon" },
		CantBeWormholed = true,
		Priority = 3,
		CustomCondition = function(_, _, p76) --[[ CustomCondition ]] -- line: 2284
			local v90 = p76 and p76:FindFirstChild("Stats")

			if not v90 or (not v90:FindFirstChild("realLevel") or v90.realLevel.Value < 25) then
				return false, "You must reach Level 25 before fishing here."
			end

			return true
		end
	},
	["Gilded Arch"] = {
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
		},
		CantBeWormholed = true,
		Priority = 2
	},
	["Castaway Cliffs"] = {
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
		},
		CantBeWormholed = false,
		Priority = 2
	},
	["Magician Narwhal - Sea 2"] = {
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
		},
		CantBeWormholed = true,
		Priority = 5
	},
	["Magician Narwhal - Sea 1"] = {
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
		},
		CantBeWormholed = true,
		Priority = 5
	},
	["Beluga - Sea 2"] = {
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
		},
		CantBeWormholed = true,
		Priority = 5
	},
	["Beluga - Sea 1"] = {
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
		},
		CantBeWormholed = true,
		Priority = 5
	},
	["Narwhal - Sea 2"] = {
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
		},
		CantBeWormholed = true,
		Priority = 5
	},
	["Narwhal - Sea 1"] = {
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
		},
		CantBeWormholed = true,
		Priority = 5
	},
	["Apex Leviathan"] = {
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
		},
		CantBeWormholed = true,
		Priority = 5
	},
	Mosslurker = {
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
		},
		CantBeWormholed = true,
		Priority = 5
	},
	["Bloop Fish"] = {
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
		},
		CantBeWormholed = true,
		Priority = 5,
		IsHunt = true
	},
	["Baby Bloop Fish"] = {
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
		},
		CantBeWormholed = true,
		Priority = 4,
		IsHunt = true
	},
	["Shamrock Bloop Fish"] = {
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
		},
		CantBeWormholed = true,
		Priority = 50,
		IsHunt = true
	},
	["Colossal Ethereal Dragon"] = {
		Pool = {
			"Rock",
			"Stalactite",
			"Hawaiian Bobtail Squid",
			"Blue Ribbon Eel",
			"Bluelip Batfish",
			"Kitefin Shark",
			"Atolla Jellyfish"
		},
		CantBeWormholed = true,
		Priority = 3,
		IsHunt = true
	},
	["Colossal Blue Dragon"] = {
		Pool = {
			"Rock",
			"Stalactite",
			"Hawaiian Bobtail Squid",
			"Blue Ribbon Eel",
			"Bluelip Batfish",
			"Kitefin Shark",
			"Atolla Jellyfish"
		},
		CantBeWormholed = true,
		Priority = 3,
		IsHunt = true
	},
	["Colossal Ancient Dragon"] = {
		Pool = {
			"Rock",
			"Stalactite",
			"Sea Raven",
			"Red Fangtooth",
			"Viperfish",
			"Japanese Dragon Eel",
			"Vampire Squid"
		},
		CantBeWormholed = true,
		Priority = 3,
		IsHunt = true,
		CustomCondition = function(_, p78) --[[ CustomCondition ]] -- line: 2939
			if not p78.Data.NewFormat.LuminescentCavern.KeystoneData.CrimsonCavernUnlocked then
				return false, "You must unlock the Crimson Cavern before fishing here."
			end

			return true
		end
	},
	["Animal Pool"] = {
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
		},
		Priority = 102,
		CantBeWormholed = true
	},
	["Animal Pool - Second Sea"] = {
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
		},
		Priority = 102,
		CantBeWormholed = true
	},
	["Octophant Pool Without Elephant"] = {
		Pool = {
			"Shrimpanzee",
			"Royal Tigerfish",
			"Slurpfloth",
			"Flamangler",
			"Orcanda"
		},
		Priority = 4,
		CantBeWormholed = true
	},
	["Octophant Pool With Elephant"] = {
		Pool = {
			"Shrimpanzee",
			"Royal Tigerfish",
			"Slurpfloth",
			"Flamangler",
			"Orcanda",
			"Octophant"
		},
		Priority = 4,
		CantBeWormholed = true
	},
	["Sea Leviathan Pool"] = {
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
		},
		Priority = 4,
		CantBeWormholed = true
	},
	["Smurf Pool"] = {
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
		},
		CantBeWormholed = true
	},
	["Smurf Storm Pool"] = {
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
		},
		CantBeWormholed = true
	},
	["Sunny O'Coin"] = {
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
		},
		CantBeWormholed = true,
		Priority = 5
	},
	["Rowdy McCharm"] = {
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
		},
		CantBeWormholed = true,
		Priority = 5
	},
	["Plumrick O'Luck"] = {
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
		},
		CantBeWormholed = true,
		Priority = 5
	},
	["O'Mango Goldgrin"] = {
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
		},
		CantBeWormholed = true,
		Priority = 5
	},
	["Clover McRich"] = {
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
		},
		CantBeWormholed = true,
		Priority = 5
	},
	["Blarney McBreeze"] = {
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
		},
		CantBeWormholed = true,
		Priority = 5
	},
	["Ashfall Pool"] = {
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
		},
		CantBeWormholed = true,
		Priority = 1
	},
	["Cults Curse Pool"] = {
		Pool = {
			"The Whispering One",
			"Profane Ray",
			"Veilborn Parasite",
			"Bloodscript Eel",
			"Abyssal Maw",
			"Eldritch Spineback",
			"Hollow Gazer",
			"Wretched Guppy"
		},
		CantBeWormholed = true,
		Priority = 1
	},
	["Ancient Orcas Pool"] = {
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
		},
		CantBeWormholed = true,
		Priority = 4
	},
	["Orcas Pool"] = {
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
		},
		CantBeWormholed = true,
		Priority = 4
	},
	["Whales Pool"] = {
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
		},
		Priority = 4,
		CantBeWormholed = true,
		IsHunt = true
	},
	["Notes Island Pool"] = {
		Pool = {
			"Rotfin Eel",
			"Wraithfin",
			"Siren’s Guppy",
			"Black Veil Ray",
			"Hexeye Snapper",
			"Bone Lanternfish",
			"Harbinger Koi",
			"Slain Maw"
		},
		CantBeWormholed = true,
		Priority = 4
	},
	["The Depths - Serpent"] = {
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
		Priority = 2,
		Disturbs = "MoonlitMirage",
		CustomCondition = function(_, _, p81) --[[ CustomCondition ]] -- line: 3732
			if not p81:FindFirstChild("Cache") or not p81.Cache:FindFirstChild("Door.TheDepthsGate") then
				return false, "You must unlock the gate to The Depths before fishing here."
			end

			return true
		end
	},
	["The Depths"] = {
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
		Priority = 1,
		Disturbs = {
			"DepthsAbsoluteDarkness",
			"MoonlitMirage"
		},
		CustomCondition = function(_, _, p84) --[[ CustomCondition ]] -- line: 3777
			if not p84:FindFirstChild("Cache") or not p84.Cache:FindFirstChild("Door.TheDepthsGate") then
				return false, "You must unlock the gate to The Depths before fishing here."
			end

			return true
		end
	},
	["Crystal Cove"] = {
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
		Priority = 1,
		RarityBaseChanceBoosts = {
			Common = 0.25
		},
		CustomCondition = function(_, _, p87) --[[ CustomCondition ]] -- line: 3816
			if not p87:FindFirstChild("Cache") or not p87.Cache:FindFirstChild("Door.TheDepthsGate") then
				return false, "You must unlock the gate to The Depths before fishing here."
			end

			return true
		end
	},
	Fischfest = {
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
		},
		Priority = 1,
		CantBeWormholed = true
	},
	["Ocean Greedy"] = {
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
		},
		Priority = 4,
		CantBeWormholed = true
	},
	Ocean = {
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
		},
		Priority = 0,
		Disturbs = "BabyBloopHunt"
	},
	["Deep Ocean"] = {
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
		},
		Priority = 1,
		Disturbs = "BabyBloopHunt"
	},
	Earthquake = {
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
		},
		Priority = 0,
		CantBeWormholed = true,
		Disturbs = "BabyBloopHunt"
	},
	["Atlantis Ocean"] = {
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
		},
		Priority = 1,
		CantBeWormholed = true
	},
	["Grand Reef"] = {
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
		},
		Priority = 3
	},
	["Forsaken Shores"] = {
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
		},
		Priority = 1
	},
	["Forsaken Shores Ocean"] = {
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
		},
		Priority = 2
	},
	["Forsaken Shores Pond"] = {
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
		},
		Priority = 3
	},
	["Moosewood Ocean"] = {
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
		},
		Priority = 1
	},
	["Moosewood Ocean Mythical"] = {
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
		},
		Priority = 4
	},
	["Moosewood Docks"] = {
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
		},
		Priority = 2
	},
	["Moosewood Pond"] = {
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
		},
		Priority = 2
	},
	Lava = {
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
		},
		Priority = 2,
		RequiredDurability = 100
	},
	Eruption = {
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
		},
		Priority = 3,
		CantBeWormholed = true,
		RequiredDurability = 100,
		IsHunt = true
	},
	["Roslit Pond"] = {
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
		},
		Priority = 2
	},
	["Roslit Pond Seaweed"] = {
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
		},
		Priority = 3
	},
	["Roslit Bay"] = {
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
		},
		Priority = 3
	},
	["Roslit Bay Alien"] = {
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
		},
		Priority = 8000
	},
	["Roslit Bay Ocean"] = {
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
		},
		Priority = 2
	},
	["Roslit Bay Clam"] = {
		Pool = {
			"Clam",
			"Aetherfin"
		},
		Priority = 10000
	},
	["Desolate Deep"] = {
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
		},
		Priority = 2
	},
	["Brine Storm"] = {
		Pool = {
			"Dissolved Bone",
			"Stormgazer",
			"Brine Sovereign",
			"Caustic Starwyrm"
		},
		Priority = 10,
		RequiredDurability = 200,
		CantBeWormholed = true,
		FishingStatsMultiply = {
			Lure = 0.5
		}
	},
	["Brine Pool Water"] = {
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
		},
		Disturbs = "BrineStorm",
		Priority = 2,
		RequiredDurability = 200,
		CantBeWormholed = true
	},
	["Ancient Isle Ocean"] = {
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
		Disturbs = "MegHunt",
		Priority = 2,
		RarityLuckFactorBoosts = {
			Legendary = 1.5,
			Mythical = 2
		}
	},
	["Ancient Isle Pond"] = {
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
		Priority = 3,
		RarityLuckFactorBoosts = {
			Legendary = 1.5,
			Mythical = 2
		}
	},
	["Ancient Isle Waterfall"] = {
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
		Priority = 4,
		RarityLuckFactorBoosts = {
			Legendary = 1.5,
			Mythical = 2
		}
	},
	["Ancient Archives"] = {
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
		},
		Priority = 1
	},
	["Terrapin Ocean"] = {
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
		},
		Priority = 2
	},
	["Terrapin Olm"] = {
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
		},
		Priority = 3
	},
	["Mushgrove Water"] = {
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
		},
		Priority = 2
	},
	Vertigo = {
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
		},
		Priority = 2
	},
	["Snowcap Pond"] = {
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
		},
		Priority = 2
	},
	["Snowcap Ocean"] = {
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
		},
		Priority = 2
	},
	Snowburrow = {
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
		},
		Priority = 2
	},
	Sunstone = {
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
		},
		Priority = 2
	},
	Mineshaft = {
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
		Priority = 3,
		RarityLuckFactorBoosts = {
			Legendary = 0.75,
			Mythical = 0.5
		},
		CustomCondition = function(_, p89) --[[ CustomCondition ]] -- line: 5044
			if p89.Data.NewFormat.SunstoneExpansion.MerlinQuestProgress < 3 then
				return false, "You must complete Merlin's quest before fishing here."
			end

			return true
		end
	},
	["Sunstone Hidden"] = {
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
		},
		Priority = 2
	},
	["Keepers Altar"] = {
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
		},
		Priority = 3
	},
	["Harvesters Spike"] = {
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
		},
		Priority = 3
	},
	["The Arch"] = {
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
		},
		Priority = 3
	},
	["Scallop Ocean"] = {
		Pool = {
			"Tire",
			"Boot",
			"Seaweed",
			"Scallop"
		},
		Priority = 3
	},
	Debug = {
		Pool = { "Colossal Squid" },
		Priority = 10,
		CantBeWormholed = true
	},
	Relics = {
		Pool = { "Enchant Relic" },
		Priority = 10,
		CantBeWormholed = true
	},
	ExaltedRelics = {
		Pool = { "Exalted Relic" },
		Priority = 10,
		CantBeWormholed = true
	},
	CosmicRelic = {
		Pool = { "Cosmic Relic" },
		Priority = 100,
		CantBeWormholed = true
	},
	EmojiFish = {
		Pool = {
			"🐟",
			"🦑",
			"🦈",
			"🐋",
			"🐡"
		},
		Priority = 10,
		CantBeWormholed = true
	},
	Him = {
		Pool = { "Him" },
		Priority = 1000,
		CantBeWormholed = true
	},
	["Lovestorm Eel"] = {
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
		},
		CantBeWormholed = true,
		Priority = 100,
		IsHunt = true
	},
	["Lovestorm Eel Supercharged"] = {
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
		},
		CantBeWormholed = true,
		Priority = 100,
		IsHunt = true
	},
	["Birthday Megalodon"] = {
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
		},
		CantBeWormholed = true,
		Priority = 100,
		IsHunt = true
	},
	BirthdayCake = {
		Pool = { "Birthday Cake" },
		Priority = 101,
		CantBeWormholed = true,
		StartDate = DateTime.fromUniversalTime(2025, 10, 5, 18, 0, 0),
		InvalidDate = DateTime.fromUniversalTime(2025, 10, 6, 18, 0, 0)
	},
	BabysFirstBalloon = {
		Pool = { "Baby's First Balloon" },
		Priority = 101,
		CantBeWormholed = true,
		StartDate = DateTime.fromUniversalTime(2025, 10, 5, 18, 0, 0),
		InvalidDate = DateTime.fromUniversalTime(2025, 10, 6, 18, 0, 0)
	},
	BirthdayGift = {
		Pool = { "Birthday Gift" },
		Priority = 101,
		CantBeWormholed = true,
		StartDate = DateTime.fromUniversalTime(2025, 10, 5, 18, 0, 0),
		InvalidDate = DateTime.fromUniversalTime(2025, 10, 6, 18, 0, 0)
	},
	["Megalodon Default"] = {
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
		},
		CantBeWormholed = true,
		Priority = 100,
		IsHunt = true
	},
	["Megalodon Ancient"] = {
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
		},
		CantBeWormholed = true,
		Priority = 100,
		IsHunt = true
	},
	["Shamrock Megalodon"] = {
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
		},
		CantBeWormholed = true,
		Priority = 100,
		IsHunt = true
	},
	["Great White Shark"] = {
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
		},
		Priority = 100
	},
	["Great Hammerhead Shark"] = {
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
		},
		Priority = 100
	},
	["Whale Shark"] = {
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
		},
		Priority = 100
	},
	Isonade = {
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
		},
		Priority = 101
	},
	FischFright24 = {
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
		},
		Priority = 102,
		CantBeWormholed = true
	},
	FischFright25 = {
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
		},
		Priority = 102,
		CantBeWormholed = true
	},
	FrightfulVillage = {
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
		},
		Priority = 102,
		CantBeWormholed = true
	},
	NessieCatacomb = {
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
		},
		Priority = 102,
		CantBeWormholed = true
	},
	Fischgiving = {
		Pool = { "Turkey" },
		Priority = 103,
		CantBeWormholed = true,
		InvalidDate = DateTime.fromUniversalTime(2024, 12, 7, 8)
	},
	SourGummy = {
		Pool = { "Xtra Sour Gummy Pack" },
		Priority = 110,
		CantBeWormholed = true,
		StartDate = DateTime.fromUniversalTime(2024, 11, 1, 16),
		InvalidDate = DateTime.fromUniversalTime(2025, 11, 1, 16)
	},
	Fischmas24 = {
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
		},
		Priority = 104,
		CantBeWormholed = true
	},
	["Overgrowth Caves"] = {
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
		},
		Priority = 2
	},
	["Frigid Cavern"] = {
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
		},
		Priority = 2
	},
	["Cryogenic Canal"] = {
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
		},
		Priority = 2
	},
	["Glacial Grotto"] = {
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
		},
		Priority = 2
	},
	["The Summit Ocean"] = {
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
		},
		Priority = 2,
		CantBeWormholed = true
	},
	["Forsaken Algae Pool"] = {
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
		},
		Priority = 100,
		CantBeWormholed = true
	},
	["Ancient Algae Pool"] = {
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
		},
		Priority = 100,
		CantBeWormholed = true
	},
	["Mushgrove Algae Pool"] = {
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
		},
		Priority = 100,
		CantBeWormholed = true
	},
	["Snowcap Algae Pool"] = {
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
		},
		Priority = 100,
		CantBeWormholed = true
	},
	["Golden Tide"] = {
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
		},
		Priority = 102,
		CantBeWormholed = true
	},
	["Zeus Pool"] = {
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
		Priority = 1,
		CustomCondition = function(_, _, p92) --[[ CustomCondition ]] -- line: 6252
			if not p92:FindFirstChild("Cache") or not p92.Cache:FindFirstChild("Door.ZeusPuzzleDoor") then
				return false, "You must complete the Zeus Trials before fishing here."
			end

			return true
		end
	},
	["Poseidon Pool"] = {
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
		Priority = 1,
		CustomCondition = function(_, _, p95) --[[ CustomCondition ]] -- line: 6303
			if not p95:FindFirstChild("Cache") or not p95.Cache:FindFirstChild("Door.PoseidonPuzzleDoor") then
				return false, "You must complete the Poseidon Trial before fishing here."
			end

			return true
		end
	},
	["Sunken's Depth"] = {
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
		Priority = 1,
		CustomCondition = function(_, _, p98) --[[ CustomCondition ]] -- line: 6359
			if not p98:FindFirstChild("Cache") or not p98.Cache:FindFirstChild("Door.SunkenDepthDoor") then
				return false, "You must unlock the Sunken Depths before fishing here."
			end

			return true
		end
	},
	["Ethereal Abyss"] = {
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
		Priority = 1,
		CustomCondition = function(_, _, p101) --[[ CustomCondition ]] -- line: 6415
			if not p101:FindFirstChild("Cache") or not p101.Cache:FindFirstChild("Door.EtherealAbyssDoor") then
				return false, "You must unlock the Ethereal Abyss before fishing here."
			end

			return true
		end
	},
	["Kraken Pool"] = {
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
		Disturbs = "KrakenHunt",
		Priority = 1,
		CustomCondition = function(_, _, p104) --[[ CustomCondition ]] -- line: 6465
			if not p104:FindFirstChild("Cache") or not p104.Cache:FindFirstChild("Door.KrakenPuzzleDoor2") then
				return false, "You must unlock the Kraken Pool before fishing here."
			end

			return true
		end
	},
	["The Kraken Pool"] = {
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
		CantBeWormholed = true,
		Priority = 1,
		IsHunt = true,
		CustomCondition = function(_, _, p107) --[[ CustomCondition ]] -- line: 6517
			if not p107:FindFirstChild("Cache") or not p107.Cache:FindFirstChild("Door.KrakenPuzzleDoor2") then
				return false, "You must unlock the Kraken Pool before fishing here."
			end

			return true
		end
	},
	["Ancient Kraken Pool"] = {
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
		CantBeWormholed = true,
		Priority = 1,
		IsHunt = true,
		CustomCondition = function(_, _, p110) --[[ CustomCondition ]] -- line: 6569
			if not p110:FindFirstChild("Cache") or not p110.Cache:FindFirstChild("Door.KrakenPuzzleDoor2") then
				return false, "You must unlock the Kraken Pool before fishing here."
			end

			return true
		end
	},
	["Shamrock Kraken Pool"] = {
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
		CantBeWormholed = true,
		Priority = 1,
		IsHunt = true,
		CustomCondition = function(_, _, p113) --[[ CustomCondition ]] -- line: 6619
			if not p113:FindFirstChild("Cache") or not p113.Cache:FindFirstChild("Door.KrakenPuzzleDoor2") then
				return false, "You must unlock the Kraken Pool before fishing here."
			end

			return true
		end
	},
	["Volcanic Vents"] = {
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
		},
		CantBeWormholed = false,
		Priority = 3
	},
	["Challengers Deep"] = {
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
		},
		CantBeWormholed = false,
		Priority = 3
	},
	["Abyssal Zenith"] = {
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
		},
		CantBeWormholed = false,
		Priority = 3
	},
	["Calm Zone"] = {
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
		},
		CantBeWormholed = false,
		Priority = 3
	},
	["Forsaken Veil"] = {
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
		CantBeWormholed = false,
		Priority = 3,
		Disturbs = "ScyllaHunt",
		CustomCondition = function(_, _, p116) --[[ CustomCondition ]] -- line: 6751
			if not p116:FindFirstChild("Cache") or not p116.Cache:FindFirstChild("ScyllaBossfight") then
				return false, "You must complete the Scylla bossfight to fish here."
			end

			return true
		end
	},
	["Forsaken Veil - Scylla"] = {
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
		CantBeWormholed = true,
		Priority = 4,
		IsHunt = true,
		CustomCondition = function(_, _, p119) --[[ CustomCondition ]] -- line: 6786
			if not p119:FindFirstChild("Cache") or not p119.Cache:FindFirstChild("ScyllaBossfight") then
				return false, "You must complete the Scylla bossfight to fish here."
			end

			return true
		end
	},
	["Forsaken Veil - Shamrock Scylla"] = {
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
		CantBeWormholed = true,
		Priority = 4,
		IsHunt = true,
		CustomCondition = function(_, _, p122) --[[ CustomCondition ]] -- line: 6821
			if not p122:FindFirstChild("Cache") or not p122.Cache:FindFirstChild("ScyllaBossfight") then
				return false, "You must complete the Scylla bossfight to fish here."
			end

			return true
		end
	},
	Waveborne = {
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
		},
		CantBeWormholed = true,
		Priority = 2
	},
	["Pine Shoal"] = {
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
		},
		CantBeWormholed = true,
		Priority = 2
	},
	Lushgrove = {
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
		},
		CantBeWormholed = true,
		Priority = 2
	},
	Emberreach = {
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
		},
		CantBeWormholed = true,
		Priority = 2
	},
	["Emberreach Ponds"] = {
		Pool = {
			"Pyre Fang",
			"Firecrest",
			"Tropical Bait Crate",
			"Sulfur Snapper",
			"Smogfish",
			"Blazebelly",
			"Cragscale",
			"Tropicspike"
		},
		CantBeWormholed = true,
		Priority = 3
	},
	["Emberreach Lava"] = {
		Pool = {
			"Lava Bream",
			"Magma Pike",
			"Hellmaw Eel",
			"Searfin",
			"Basalt Pike",
			"Emberwing",
			"Molten Ripple"
		},
		CantBeWormholed = true,
		Priority = 3,
		RequiredDurability = 100
	},
	["Isle of New Beginnings"] = {
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
		},
		CantBeWormholed = true,
		Priority = 2
	},
	["Cursed Isle"] = {
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
		},
		CantBeWormholed = false,
		Priority = 2
	},
	["Open Ocean"] = {
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
		},
		CantBeWormholed = true,
		Priority = 0
	},
	["Azure Lagoon"] = {
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
		},
		CantBeWormholed = true,
		Priority = 2
	},
	["Blue Moon - First Sea"] = {
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
		Priority = 3,
		CantBeWormholed = false,
		CustomCondition = function(_, _) --[[ CustomCondition ]] -- line: 7114
			-- upvalues: ReplicatedStorage (copy)
			if ReplicatedStorage:GetAttribute("BlueMoonEvent") ~= true then
				return false, "<font color=\"#D20103\">You can only fish here during a Blue Moon event.</font>"
			end

			return true
		end
	},
	["Jurassic Island Pool"] = {
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
		},
		Priority = 6,
		CantBeWormholed = true
	},
	["Jurassic Island Ocean Pool"] = {
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
		},
		Priority = 5,
		CantBeWormholed = true
	},
	LEGO = {
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
		},
		Priority = 5,
		CantBeWormholed = true
	},
	["LEGO - Studolodon"] = {
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
		},
		Priority = 5,
		CantBeWormholed = true
	},
	["Whale Interior"] = {
		Pool = {
			"Bearded Toadfish",
			"Giant Moray",
			"Gulf Toadfish",
			"Oyster toadfish",
			"Smooth toadfish",
			"Splendid toadfish"
		},
		CantBeWormholed = true,
		Priority = 2
	},
	["Treasure Island"] = {
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
		},
		CantBeWormholed = false,
		Priority = 2
	},
	["Nectar Den"] = {
		Pool = {
			"Honey Drifter",
			"Stinger Skipper",
			"Comb Cluster",
			"Combscale Bass",
			"Honey Clump",
			"Bee"
		},
		Priority = 1,
		Disturbs = "NectarBloom",
		FishingStats = {
			Lure = -50
		}
	},
	["Nectar Den - Serpent"] = {
		Pool = {
			"Honey Drifter",
			"Stinger Skipper",
			"Comb Cluster",
			"Combscale Bass",
			"Honey Clump",
			"Bee",
			"Queen Bee Serpent"
		},
		Priority = 2,
		FishingStats = {
			Lure = -50
		}
	},
	["Living Garden"] = {
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
		},
		Priority = 1,
		Disturbs = "FlowerGuardianHunt"
	},
	["Toxic Grove"] = {
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
		Priority = 1,
		Disturbs = "RotbloomHunt",
		RequiredDurability = 150,
		RarityBaseChanceBoosts = {
			Common = 0.25
		}
	},
	["Basketback Tortoise Hunt"] = {
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
		},
		Priority = 100,
		IsHunt = true,
		CantBeWormholed = true
	},
	Default = {
		Pool = {
			"Rock",
			"Log",
			"Seaweed",
			"Tire",
			"Boot"
		},
		CantBeWormholed = true,
		Priority = 2
	}
}
