local v3 = {}
local v4 = {}
local v5 = {
    ["Description"] = "30% chance for a Fischmas mutation, increases fish size by <$WeightBoost$>%, & increases Progress Speed by <$ProgressSpeed$>%",
    ["Color"] = Color3.fromRGB(234, 57, 57),
    ["StrokeColor"] = Color3.fromRGB(231, 231, 231),
    ["Display"] = "Santa",
    ["WeightBoost"] = 30,
    ["ProgressSpeed"] = 30,
    ["Mutations"] = {
        {
            ["Name"] = "Santa",
            ["Chance"] = 6
        },
        {
            ["Name"] = "Jingle Bell",
            ["Chance"] = 6
        },
        {
            ["Name"] = "Merry",
            ["Chance"] = 6
        },
        {
            ["Name"] = "Peppermint",
            ["Chance"] = 6
        },
        {
            ["Name"] = "Gingerbread",
            ["Chance"] = 6
        }
    },
    ["RelicGroup"] = "Santa"
}
v4.Santa = v5
local v6 = {
    ["Description"] = "<$Mutations.1.Chance$>% chance for <$Mutations.1.Name$> mutation, increases Lure Speed by <$Lure$>%, & increases Progress Speed by <$ProgressSpeed$>%",
    ["Color"] = Color3.fromRGB(22, 131, 26),
    ["StrokeColor"] = Color3.fromRGB(3, 44, 0),
    ["Display"] = "Merry",
    ["Lure"] = 35,
    ["ProgressSpeed"] = 35,
    ["Mutations"] = {
        {
            ["Name"] = "Merry",
            ["Chance"] = 10
        }
    },
    ["RelicGroup"] = "Festive"
}
v4.Merry = v6
local v7 = {
    ["Description"] = "<$Mutations.1.Chance$>% chance for <$Mutations.1.Name$> mutation, rod has a high chance to lightly stab fish while reeling, & increases Luck by <$Luck$>%",
    ["Color"] = Color3.fromRGB(255, 0, 0),
    ["StrokeColor"] = Color3.fromRGB(255, 255, 255),
    ["Display"] = "Peppermint",
    ["Luck"] = 25,
    ["SlashChance"] = 40,
    ["SlashDamage"] = 1,
    ["Mutations"] = {
        {
            ["Name"] = "Peppermint",
            ["Chance"] = 10
        }
    },
    ["Secondary"] = true,
    ["RelicGroup"] = "Festive"
}
v4.Peppermint = v7
local v8 = {
    ["Description"] = "<$Mutations.1.Chance$>% chance for <$Mutations.1.Name$> mutation, increases fish size by <$WeightBoost$>%, & increases Progress Speed by <$ProgressSpeed$>%",
    ["Color"] = Color3.fromRGB(140, 70, 43),
    ["StrokeColor"] = Color3.fromRGB(35, 0, 0),
    ["Display"] = "Gingerbread",
    ["WeightBoost"] = 40,
    ["ProgressSpeed"] = 10,
    ["Mutations"] = {
        {
            ["Name"] = "Gingerbread",
            ["Chance"] = 10
        }
    },
    ["RelicGroup"] = "Festive"
}
v4.Gingerbread = v8
v4.Rage = {
    ["Description"] = "Slashes fish with unmatched force, Decreases Luck by <$Luck$>%, & Decreases Resilience by <$Resilience$>%",
    ["Color"] = Color3.fromRGB(209, 17, 17),
    ["StrokeColor"] = Color3.fromRGB(36, 17, 17),
    ["Display"] = "Rage",
    ["Luck"] = -50,
    ["Resilience"] = -20,
    ["SlashChance"] = 25,
    ["SlashDamage"] = 8,
    ["RelicGroup"] = "Twisted"
}
v4.Greed = {
    ["Description"] = "Makes fish <$WeightBoost$>% bigger, Decreases Lure Speed by <$Lure$>%, & Decreases Progress Speed by <$ProgressSpeed$>%",
    ["Color"] = Color3.fromRGB(255, 191, 0),
    ["StrokeColor"] = Color3.fromRGB(90, 57, 17),
    ["Display"] = "Greed",
    ["ProgressSpeed"] = -5,
    ["Lure"] = -30,
    ["WeightBoost"] = 50,
    ["RelicGroup"] = "Twisted"
}
v4.Fractured = {
    ["Description"] = "Increases Progress Speed by <$ProgressSpeed$>%, & Decreases Control by <$Control$>",
    ["Color"] = Color3.fromRGB(213, 207, 185),
    ["StrokeColor"] = Color3.fromRGB(102, 99, 88),
    ["Display"] = "Fractured",
    ["ProgressSpeed"] = 50,
    ["Control"] = -0.1,
    ["RelicGroup"] = "Twisted"
}
v4["Blessed Song"] = {
    ["Description"] = "Increases Progress Speed by <$ProgressSpeed$>%",
    ["Color"] = Color3.fromRGB(0, 170, 255),
    ["StrokeColor"] = Color3.fromRGB(0, 60, 90),
    ["Display"] = "Blessed Song",
    ["ProgressSpeed"] = 40,
    ["RelicGroup"] = "SongOfTheDeep"
}
local v9 = {
    ["Description"] = "<$Mutations.1.Chance$>% chance for <$Mutations.1.Name$> mutation, increases Progress Speed by <$ProgressSpeed$>%, & decreases Resilience by <$Resilience$>%",
    ["Color"] = Color3.fromRGB(123, 104, 165),
    ["StrokeColor"] = Color3.fromRGB(44, 37, 50),
    ["Display"] = "Frightful",
    ["Resilience"] = -20,
    ["ProgressSpeed"] = 50,
    ["Mutations"] = {
        {
            ["Name"] = "Frightful",
            ["Chance"] = 10
        }
    },
    ["RelicGroup"] = "Frightful"
}
v4.Frightful = v9
local v10 = {
    ["Description"] = "<$Mutations.1.Chance$>% chance for <$Mutations.1.Name$> mutation, increases Control by <$Control$>, & rapid Slashes",
    ["Color"] = Color3.fromRGB(220, 151, 81),
    ["StrokeColor"] = Color3.fromRGB(50, 39, 28),
    ["Display"] = "Spooky",
    ["Control"] = 0.1,
    ["SlashChance"] = 30,
    ["SlashDamage"] = 3,
    ["Mutations"] = {
        {
            ["Name"] = "Spooky",
            ["Chance"] = 10
        }
    },
    ["RelicGroup"] = "Spooky"
}
v4.Spooky = v10
local v11 = {
    ["Description"] = "<$Mutations.1.Chance$>% chance for <$Mutations.1.Name$> mutation, increases fish size by <$WeightBoost$>%, & increases Progress Speed by <$ProgressSpeed$>%",
    ["Color"] = Color3.fromRGB(84, 211, 114),
    ["StrokeColor"] = Color3.fromRGB(67, 84, 72),
    ["Display"] = "Eerie",
    ["WeightBoost"] = 10,
    ["ProgressSpeed"] = 10,
    ["Mutations"] = {
        {
            ["Name"] = "Eerie",
            ["Chance"] = 10
        }
    },
    ["Secondary"] = true,
    ["RelicGroup"] = "Eerie"
}
v4.Eerie = v11
v4["Sea King"] = {
    ["Description"] = "Makes fish <$WeightBoost$>% bigger",
    ["Color"] = Color3.fromRGB(53, 77, 211),
    ["StrokeColor"] = Color3.fromRGB(9, 13, 35),
    ["Display"] = "Sea King",
    ["WeightBoost"] = 30,
    ["RelicGroup"] = "Default"
}
v4.Swift = {
    ["Description"] = "Increases Lure Speed by <$Lure$>%, & Progress Speed by <$ProgressSpeed$>%",
    ["Color"] = Color3.fromRGB(181, 227, 229),
    ["StrokeColor"] = Color3.fromRGB(40, 50, 50),
    ["Display"] = "Swift",
    ["ProgressSpeed"] = 10,
    ["Lure"] = 30,
    ["RelicGroup"] = "Default"
}
v4.Long = {
    ["Description"] = "Increases Line Distance by <$LineDistance$> studs, Resilience by <$Resilience$>%, & Progress Speed by <$ProgressSpeed$>%",
    ["Color"] = Color3.fromRGB(223, 165, 64),
    ["StrokeColor"] = Color3.fromRGB(33, 25, 14),
    ["Display"] = "Long",
    ["LineDistance"] = 50,
    ["ProgressSpeed"] = 15,
    ["Resilience"] = 35,
    ["RelicGroup"] = "Default"
}
local v12 = {
    ["Description"] = "All caught fish become <$Mutations.1.Name$>, with a <$FishingPassives.Generic_DuplicateFish.DuplicateChance$>% chance to double caught fish",
    ["Color"] = Color3.fromRGB(129, 223, 173),
    ["StrokeColor"] = Color3.fromRGB(46, 79, 61),
    ["Display"] = "Ghastly"
}
local v13 = {
    ["Generic_DuplicateFish"] = {
        ["DuplicateChance"] = 10,
        ["DuplicateMutation"] = "Translucent"
    }
}
v12.FishingPassives = v13
v12.Mutations = {
    {
        ["Name"] = "Translucent",
        ["Chance"] = 100
    }
}
v12.RelicGroup = "Default"
v4.Ghastly = v12
v4.Lucky = {
    ["Description"] = "Increases Luck by <$Luck$>%, Lure Speed by <$Lure$>%, & natural Mutation chances by <$NaturalMutationChance$>%",
    ["Color"] = Color3.fromRGB(126, 229, 164),
    ["StrokeColor"] = Color3.fromRGB(25, 45, 32),
    ["Display"] = "Lucky",
    ["Luck"] = 25,
    ["Lure"] = 15,
    ["NaturalMutationChance"] = 50,
    ["RelicGroup"] = "Default"
}
v4.Divine = {
    ["Description"] = "Increases luck by <$Luck$>%, Resilience by <$Resilience$>%, & Lure Speed by <$Lure$>%",
    ["Color"] = Color3.fromRGB(198, 229, 220),
    ["StrokeColor"] = Color3.fromRGB(118, 135, 132),
    ["Display"] = "Divine",
    ["Luck"] = 50,
    ["Lure"] = 25,
    ["Resilience"] = 20,
    ["RelicGroup"] = "Default"
}
v4.Mutated = {
    ["Description"] = "Increases natural Mutation chances by <$NaturalMutationChance$>%",
    ["Color"] = Color3.fromRGB(147, 229, 112),
    ["StrokeColor"] = Color3.fromRGB(45, 58, 39),
    ["Display"] = "Mutated",
    ["NaturalMutationChance"] = 90,
    ["RelicGroup"] = "Default"
}
v4.Unbreakable = {
    ["Description"] = "Increases Strength by <$Strength$>kg, & Control by <$Control$>",
    ["Color"] = Color3.fromRGB(225, 179, 229),
    ["StrokeColor"] = Color3.fromRGB(16, 13, 16),
    ["Display"] = "Unbreakable",
    ["Strength"] = 10000,
    ["Control"] = 0.1,
    ["RelicGroup"] = "Default"
}
v4.Steady = {
    ["Description"] = "Increases Progress Speed by <$ProgressSpeed$>%, & Control by <$Control$>",
    ["Color"] = Color3.fromRGB(229, 207, 191),
    ["StrokeColor"] = Color3.fromRGB(21, 19, 18),
    ["Display"] = "Steady",
    ["ProgressSpeed"] = 20,
    ["Control"] = 0.05,
    ["RelicGroup"] = "Default"
}
v4.Blessed = {
    ["Description"] = "Increases Shiny & Sparkling chances by <$ShinyChance$>%, Lure Speed by <$Lure$>%, & Progress Speed by <$ProgressSpeed$>%",
    ["Color"] = Color3.fromRGB(255, 79, 164),
    ["StrokeColor"] = Color3.fromRGB(42, 20, 34),
    ["Display"] = "Blessed",
    ["Lure"] = 5,
    ["ShinyChance"] = 5,
    ["SparklingChance"] = 5,
    ["ProgressSpeed"] = 5,
    ["RelicGroup"] = "Default"
}
local v14 = {
    ["Description"] = "<$FishingPassives.WormholeEnchant.ActivateChance$>% chance to catch a fish from a random place",
    ["Color"] = Color3.fromRGB(145, 90, 255),
    ["StrokeColor"] = Color3.fromRGB(13, 8, 22),
    ["Display"] = "Wormhole"
}
local v15 = {
    ["WormholeEnchant"] = {
        ["ActivateChance"] = 80
    }
}
v14.FishingPassives = v15
v14.RelicGroup = "Default"
v4.Wormhole = v14
v4.Resilient = {
    ["Description"] = "Increases Resilience by <$Resilience$>%, & Fish Size by <$WeightBoost$>%",
    ["Color"] = Color3.fromRGB(106, 255, 198),
    ["StrokeColor"] = Color3.fromRGB(17, 29, 25),
    ["Display"] = "Resilient",
    ["WeightBoost"] = 10,
    ["Resilience"] = 35,
    ["RelicGroup"] = "Default"
}
v4.Controlled = {
    ["Description"] = "Increases Control by <$Control$>",
    ["Color"] = Color3.fromRGB(175, 155, 255),
    ["StrokeColor"] = Color3.fromRGB(32, 28, 39),
    ["Display"] = "Controlled",
    ["Control"] = 0.15,
    ["RelicGroup"] = "Default"
}
local v18 = {
    ["Description"] = "Increases Luck by <$Luck$>%, Lure Speed by <$Lure$>%, & <$Mutations.1.Chance$>% chance for <$Mutations.1.Name$> mutation [Doubled during Rainy weather]",
    ["Color"] = Color3.fromRGB(255, 236, 131),
    ["StrokeColor"] = Color3.fromRGB(36, 36, 24),
    ["Display"] = "Storming",
    ["Luck"] = 50,
    ["Lure"] = 25,
    ["Mutations"] = {
        {
            ["Name"] = "Electric",
            ["Chance"] = 25
        }
    },
    ["ConditionalBoosts"] = function(p16, _)
        -- upvalues: (copy) v_u_1
        if v_u_1.world.weather.Value == "Rain" then
            local v17 = {
                ["Luck"] = p16.Luck * 2,
                ["Lure"] = p16.Lure * 2,
                ["Mutations"] = {
                    {
                        ["Name"] = p16.Mutations[1].Name,
                        ["Chance"] = p16.Mutations[1].Chance * 2
                    }
                }
            }
            return v17
        end
    end,
    ["RelicGroup"] = "Default"
}
v4.Storming = v18
v4.Scrapper = {
    ["Description"] = "<$BaitPreserveChance$>% chance to not consume Bait",
    ["Color"] = Color3.fromRGB(255, 155, 83),
    ["StrokeColor"] = Color3.fromRGB(36, 23, 13),
    ["Display"] = "Scrapper",
    ["BaitPreserveChance"] = 60,
    ["RelicGroup"] = "Default"
}
v4.Breezed = {
    ["Description"] = "Increases Luck by <$Luck$>%, Lure Speed by <$Lure$>%, & Progress Speed by <$ProgressSpeed$>% [Doubled during Windy weather]",
    ["Color"] = Color3.fromRGB(188, 208, 255),
    ["StrokeColor"] = Color3.fromRGB(28, 30, 36),
    ["Display"] = "Breezed",
    ["Luck"] = 50,
    ["Lure"] = 20,
    ["ProgressSpeed"] = 10,
    ["ConditionalBoosts"] = function(p19, _)
        -- upvalues: (copy) v_u_1
        if v_u_1.world.weather.Value == "Windy" then
            return {
                ["Luck"] = p19.Luck * 2,
                ["Lure"] = p19.Lure * 2,
                ["ProgressSpeed"] = p19.ProgressSpeed * 2
            }
        end
    end,
    ["RelicGroup"] = "Default"
}
local v20 = {
    ["Description"] = "<$XpMultiply$>\195\151 XP after catching a fish, Lure Speed increased by <$Lure$>%, & grants a <$Mutations.1.Chance$>% chance to Purify caught fish",
    ["Color"] = Color3.fromRGB(128, 255, 114),
    ["StrokeColor"] = Color3.fromRGB(29, 36, 27),
    ["Display"] = "Insight",
    ["XpMultiply"] = 1.5,
    ["Lure"] = 30,
    ["Mutations"] = {
        {
            ["Name"] = "Purified",
            ["Chance"] = 30
        }
    },
    ["RelicGroup"] = "Default"
}
v4.Insight = v20
v4.Clever = {
    ["Description"] = "<$XpMultiply$>\195\151 XP after catching a fish",
    ["Color"] = Color3.fromRGB(255, 110, 166),
    ["StrokeColor"] = Color3.fromRGB(36, 18, 24),
    ["Display"] = "Clever",
    ["XpMultiply"] = 2.25,
    ["RelicGroup"] = "Default"
}
local v21 = {
    ["Description"] = "Caught fish will be Albino or Darkened, with a <$WeightBoost$>% size boost",
    ["Color"] = Color3.fromRGB(255, 255, 255),
    ["StrokeColor"] = Color3.fromRGB(0, 0, 0),
    ["Display"] = "Noir",
    ["WeightBoost"] = 20,
    ["Mutations"] = {
        {
            ["Name"] = "Albino",
            ["Chance"] = 50
        },
        {
            ["Name"] = "Darkened",
            ["Chance"] = 50
        }
    },
    ["RelicGroup"] = "Default"
}
v4.Noir = v21
v4.Hasty = {
    ["Description"] = "Increases Lure Speed by <$Lure$>%",
    ["Color"] = Color3.fromRGB(229, 209, 92),
    ["StrokeColor"] = Color3.fromRGB(50, 42, 12),
    ["Display"] = "Hasty",
    ["Lure"] = 55,
    ["RelicGroup"] = "Default"
}
v4.Quality = {
    ["Description"] = "Increases Luck by <$Luck$>%, Resilience by <$Resilience$>%, Lure Speed by <$Lure$>%, & Progress Speed by <$ProgressSpeed$>%",
    ["Color"] = Color3.fromRGB(158, 255, 55),
    ["StrokeColor"] = Color3.fromRGB(56, 90, 19),
    ["Display"] = "Quality",
    ["Luck"] = 20,
    ["Lure"] = 20,
    ["ProgressSpeed"] = 5,
    ["Resilience"] = 10,
    ["RelicGroup"] = "Default"
}
local v22 = {
    ["Description"] = "Caught fish have a <$Mutations.1.Chance$>% chance to be <$Mutations.1.Name$>, & a chance to be larger, or a low chance to be notably smaller",
    ["Color"] = Color3.fromRGB(39, 57, 173),
    ["StrokeColor"] = Color3.fromRGB(83, 41, 173),
    ["Display"] = "Abyssal",
    ["WeightBoost"] = 30,
    ["Mutations"] = {
        {
            ["Name"] = "Abyssal",
            ["Chance"] = 20
        }
    },
    ["ConditionalBoosts"] = function(_, _)
        if math.random() <= 0.2 then
            return {
                ["WeightBoost"] = -40
            }
        end
    end,
    ["RelicGroup"] = "Default"
}
v4.Abyssal = v22
v4.Herculean = {
    ["Description"] = "Increases Strength by <$Strength$>kg, Control by <$Control$>, & Progress Speed by <$ProgressSpeed$>%",
    ["Color"] = Color3.fromRGB(255, 234, 0),
    ["StrokeColor"] = Color3.fromRGB(48, 43, 0),
    ["Display"] = "Herculean",
    ["Strength"] = 25000,
    ["ProgressSpeed"] = 10,
    ["Control"] = 0.2,
    ["RelicGroup"] = "Exalted"
}
v4.Mystical = {
    ["Description"] = "Increases Luck by <$Luck$>%, Resilience by <$Resilience$>%, Lure Speed by <$Lure$>%, & Progress Speed by <$ProgressSpeed$>%",
    ["Color"] = Color3.fromRGB(194, 223, 255),
    ["StrokeColor"] = Color3.fromRGB(43, 50, 57),
    ["Display"] = "Mystical",
    ["Luck"] = 25,
    ["Lure"] = 15,
    ["ProgressSpeed"] = 10,
    ["Resilience"] = 45,
    ["RelicGroup"] = "Exalted"
}
local v23 = {
    ["Description"] = "Caught fish have a <$Mutations.1.Chance$>% chance to be <$Mutations.1.Name$>, & increased Resilience by <$Resilience$>%",
    ["Color"] = Color3.fromRGB(255, 0, 179),
    ["StrokeColor"] = Color3.fromRGB(49, 0, 36),
    ["Display"] = "Quantum",
    ["Resilience"] = 25,
    ["Mutations"] = {
        {
            ["Name"] = "Subspace",
            ["Chance"] = 25
        }
    },
    ["RelicGroup"] = "Exalted"
}
v4.Quantum = v23
v4.Invincible = {
    ["Description"] = "Grants infinite Strength, & allows fishing in any body of liquid",
    ["Color"] = Color3.fromRGB(255, 98, 25),
    ["StrokeColor"] = Color3.fromRGB(35, 13, 3),
    ["Display"] = "Invincible",
    ["Strength"] = (1 / 0),
    ["Durability"] = 200,
    ["RelicGroup"] = "Exalted"
}
v4.Piercing = {
    ["Description"] = "Rod has a chance to stab fish while reeling, & increases Progress Speed by <$ProgressSpeed$>%",
    ["Color"] = Color3.fromRGB(13, 167, 141),
    ["StrokeColor"] = Color3.fromRGB(3, 40, 33),
    ["Display"] = "Piercing",
    ["ProgressSpeed"] = 15,
    ["SlashChance"] = 30,
    ["SlashDamage"] = 6,
    ["RelicGroup"] = "Exalted"
}
local v24 = {
    ["Description"] = "Caught fish have a <$FishingPassives.Generic_DuplicateFish.DuplicateChance$>% chance to be duplicated & <$FishingPassives.Generic_DuplicateFish.DuplicateMutation$>",
    ["Color"] = Color3.fromRGB(255, 29, 29),
    ["StrokeColor"] = Color3.fromRGB(35, 4, 4),
    ["Display"] = "Anomalous"
}
local v25 = {
    ["Generic_DuplicateFish"] = {
        ["DuplicateChance"] = 20,
        ["DuplicateMutation"] = "Anomalous"
    }
}
v24.FishingPassives = v25
v24.RelicGroup = "Exalted"
v4.Anomalous = v24
v4["Sea Overlord"] = {
    ["Description"] = "Makes fish <$WeightBoost$>% bigger",
    ["Color"] = Color3.fromRGB(51, 168, 211),
    ["StrokeColor"] = Color3.fromRGB(9, 29, 35),
    ["Display"] = "Sea Overlord",
    ["WeightBoost"] = 40,
    ["RelicGroup"] = "Exalted"
}
v4.Immortal = {
    ["Description"] = "Increases Luck by <$Luck$>%, & Progress Speed by <$ProgressSpeed$>%",
    ["Color"] = Color3.fromRGB(232, 217, 255),
    ["StrokeColor"] = Color3.fromRGB(69, 65, 76),
    ["Display"] = "Immortal",
    ["Luck"] = 75,
    ["ProgressSpeed"] = 30,
    ["RelicGroup"] = "Exalted"
}
v4.Flashline = {
    ["Description"] = "A small chance of majorly boosted Progress Speed",
    ["Color"] = Color3.fromRGB(255, 255, 255),
    ["StrokeColor"] = Color3.fromRGB(49, 49, 49),
    ["Display"] = "Flashline",
    ["ProgressSpeed"] = 15,
    ["ConditionalBoosts"] = function(_, _)
        if math.random(1, 4) == 1 then
            return {
                ["ProgressSpeed"] = 100
            }
        end
    end,
    ["RelicGroup"] = "Default"
}
local v26 = {
    ["Description"] = "Raised chances for utility catches",
    ["Color"] = Color3.fromRGB(255, 191, 102),
    ["StrokeColor"] = Color3.fromRGB(56, 39, 13),
    ["Display"] = "Scavenger"
}
local v27 = {}
local v28 = {
    ["Multiply"] = {
        ["Exalted Relic"] = 1.75,
        ["Enchant Relic"] = 3
    }
}
v27.Generic_BoostFishChances = v28
v26.FishingPassives = v27
v26.RelicGroup = "Default"
v4.Scavenger = v26
local v29 = {
    ["Description"] = "Unleash pure chaos with every cast. Slashes fish with an 8% chance to awaken the Chaotic mutation",
    ["Color"] = Color3.fromRGB(20, 19, 22),
    ["StrokeColor"] = Color3.fromRGB(255, 255, 255),
    ["Display"] = "Chaotic",
    ["SlashChance"] = 15,
    ["SlashDamage"] = 6,
    ["Mutations"] = {
        {
            ["Name"] = "Chaotic",
            ["Chance"] = 8
        }
    },
    ["RelicGroup"] = "Default"
}
v4.Chaotic = v29
local v30 = {
    ["Description"] = "Sacrifice health for a health-dependent chance to apply the Sanguine mutation",
    ["Color"] = Color3.fromRGB(74, 8, 8),
    ["StrokeColor"] = Color3.fromRGB(163, 17, 17),
    ["Display"] = "Blood Reckoning"
}
local v31 = {
    ["BloodReckoning"] = {
        ["HealthCost"] = 30,
        ["HealthChanceRatio"] = 1,
        ["MutationName"] = "Sanguine"
    }
}
v30.FishingPassives = v31
v30.RelicGroup = "Default"
v4["Blood Reckoning"] = v30
local v32 = {
    ["Description"] = "Occasionally freeze fish in place",
    ["Color"] = Color3.fromRGB(29, 84, 211),
    ["StrokeColor"] = Color3.fromRGB(11, 13, 35),
    ["Display"] = "Chronos"
}
local v33 = {
    ["Chronos"] = {
        ["FreezeChance"] = 50,
        ["FreezeCooldown"] = 2.5,
        ["FreezeDuration"] = 3
    }
}
v32.ClientFishingPassives = v33
v32.RelicGroup = "Default"
v4.Chronos = v32
v4.Momentum = {
    ["Description"] = "Perfect Catches increase Lure, Resilience & Progress Speed incrementally",
    ["Color"] = Color3.fromRGB(211, 179, 128),
    ["StrokeColor"] = Color3.fromRGB(35, 27, 18),
    ["Display"] = "Momentum",
    ["ProgressSpeed"] = 0,
    ["RelicGroup"] = "Default",
    ["ConditionalBoosts"] = function(_, p34)
        return {
            ["ProgressSpeed"] = p34:GetAttribute("CurrentMomentumBoost") or 0,
            ["Lure"] = p34:GetAttribute("CurrentMomentumBoost") or 0,
            ["Resilience"] = p34:GetAttribute("CurrentMomentumBoost") or 0
        }
    end
}
v4.Overclocked = {
    ["Description"] = "Increases Progress Speed by <$ForcedProgressSpeed$>% for any fish",
    ["Color"] = Color3.fromRGB(0, 255, 204),
    ["StrokeColor"] = Color3.fromRGB(11, 35, 28),
    ["Display"] = "Overclocked",
    ["ForcedProgressSpeed"] = 5,
    ["Secondary"] = true,
    ["RelicGroup"] = "Cosmic"
}
v4.Tenacity = {
    ["Description"] = "Increases Progress Speed by 20% for every reel snapped in a row",
    ["Color"] = Color3.fromRGB(255, 248, 171),
    ["StrokeColor"] = Color3.fromRGB(71, 70, 54),
    ["Display"] = "Tenacity",
    ["Secondary"] = true,
    ["RelicGroup"] = "Cosmic",
    ["ConditionalBoosts"] = function(_, p35)
        return {
            ["ProgressSpeed"] = p35:GetAttribute("TenacityBoost")
        }
    end
}
v4.Tryhard = {
    ["Description"] = "Increases Progress Speed by <$ProgressSpeed$>%, & decreases Control by <$Control$>",
    ["Color"] = Color3.fromRGB(255, 0, 0),
    ["StrokeColor"] = Color3.fromRGB(49, 35, 35),
    ["Display"] = "Tryhard",
    ["Control"] = -0.1,
    ["ProgressSpeed"] = 30,
    ["Secondary"] = true,
    ["RelicGroup"] = "Cosmic"
}
v4.Wise = {
    ["Description"] = "<$XpMultiply$>\195\151 XP after catching a fish",
    ["Color"] = Color3.fromRGB(200, 105, 255),
    ["StrokeColor"] = Color3.fromRGB(42, 36, 49),
    ["Display"] = "Wise",
    ["XpMultiply"] = 1.2,
    ["Secondary"] = true,
    ["RelicGroup"] = "Cosmic"
}
local v36 = {
    ["Description"] = "<$ClientFishingPassives.Cryogenic.FreezeChance$>% chance to fully freeze a lured fish",
    ["Color"] = Color3.fromRGB(148, 235, 255),
    ["StrokeColor"] = Color3.fromRGB(21, 43, 49),
    ["Display"] = "Cryogenic"
}
local v37 = {
    ["Cryogenic"] = {
        ["AttemptDelay"] = 1,
        ["FreezeChance"] = 20,
        ["FreezeDuration"] = (1 / 0)
    }
}
v36.ClientFishingPassives = v37
v36.Secondary = true
v36.RelicGroup = "Cosmic"
v4.Cryogenic = v36
v4["Sea Prince"] = {
    ["Description"] = "Makes fish <$WeightBoost$>% bigger",
    ["Color"] = Color3.fromRGB(84, 118, 211),
    ["StrokeColor"] = Color3.fromRGB(18, 23, 35),
    ["Display"] = "Sea Prince",
    ["WeightBoost"] = 15,
    ["Secondary"] = true,
    ["RelicGroup"] = "Cosmic"
}
v4.Glittered = {
    ["Description"] = "Increases Shiny & Sparkling chances by <$ShinyChance$>%",
    ["Color"] = Color3.fromRGB(255, 241, 160),
    ["StrokeColor"] = Color3.fromRGB(42, 42, 29),
    ["Display"] = "Glittered",
    ["ShinyChance"] = 3,
    ["SparklingChance"] = 3,
    ["Secondary"] = true,
    ["RelicGroup"] = "Cosmic"
}
v4.Weak = {
    ["Description"] = "Decreased Strength by <$StrengthPercent$>%",
    ["Color"] = Color3.fromRGB(134, 134, 134),
    ["StrokeColor"] = Color3.fromRGB(9, 9, 9),
    ["Display"] = "Weak",
    ["StrengthPercent"] = -10,
    ["RelicGroup"] = "Twisted"
}
local v38 = {
    ["Description"] = "Decreased Luck by <$Luck$>%",
    ["Color"] = Color3.fromRGB(67, 88, 49),
    ["StrokeColor"] = Color3.fromRGB(9, 12, 7),
    ["Display"] = "Putrid",
    ["Luck"] = -10,
    ["Mutations"] = {
        {
            ["Name"] = "Putrid",
            ["Chance"] = 2
        }
    },
    ["RelicGroup"] = "Twisted"
}
v4.Putrid = v38
local v39 = {
    ["Description"] = "Caught fish have a <$Mutations.1.Chance$>% chance to be <$Mutations.1.Name$>",
    ["Color"] = Color3.fromRGB(156, 139, 105),
    ["StrokeColor"] = Color3.fromRGB(40, 36, 27),
    ["Display"] = "Pharaohs Curse",
    ["Mutations"] = {
        {
            ["Name"] = "Sandy",
            ["Chance"] = 25
        }
    },
    ["RelicGroup"] = "Twisted"
}
v4["Pharaohs Curse"] = v39
v4.Wobbly = {
    ["Description"] = "Decreases Control by <$Control$>",
    ["Color"] = Color3.fromRGB(86, 91, 112),
    ["StrokeColor"] = Color3.fromRGB(20, 21, 24),
    ["Display"] = "Wobbly",
    ["Control"] = -0.05,
    ["RelicGroup"] = "Twisted"
}
v3.Enchants = v4

return v3
