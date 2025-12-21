local v_u_1 = game:GetService("ReplicatedStorage")
local v3 = {}
local v4 = {}
local v5 = {
    ["Description"] = "<$Mutations.1.Chance$>% chance for <$Mutations.1.Name$> mutation, increases Lure Speed by <$LureBoost$>%, & increases Progress Speed by <$ProgressSpeedBoost$>%",
    ["Color"] = Color3.fromRGB(22, 131, 26),
    ["StrokeColor"] = Color3.fromRGB(3, 44, 0),
    ["Display"] = "Merry",
    ["LureBoost"] = 35,
    ["ProgressSpeedBoost"] = 35,
    ["Mutations"] = {
        {
            ["Name"] = "Merry",
            ["Chance"] = 10
        }
    },
    ["RelicGroup"] = "Festive"
}
v4.Merry = v5
local v6 = {
    ["Description"] = "<$Mutations.1.Chance$>% chance for <$Mutations.1.Name$> mutation, rod has a high chance to lightly stab fish while reeling, & increases Luck by <$LuckBoost$>%",
    ["Color"] = Color3.fromRGB(255, 0, 0),
    ["StrokeColor"] = Color3.fromRGB(255, 255, 255),
    ["Display"] = "Peppermint",
    ["LuckBoost"] = 25,
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
v4.Peppermint = v6
local v7 = {
    ["Description"] = "<$Mutations.1.Chance$>% chance for <$Mutations.1.Name$> mutation, increases fish size by <$WeightBoost$>%, & increases Progress Speed by <$ProgressSpeedBoost$>%",
    ["Color"] = Color3.fromRGB(140, 70, 43),
    ["StrokeColor"] = Color3.fromRGB(35, 0, 0),
    ["Display"] = "Gingerbread",
    ["WeightBoost"] = 40,
    ["ProgressSpeedBoost"] = 10,
    ["Mutations"] = {
        {
            ["Name"] = "Gingerbread",
            ["Chance"] = 10
        }
    },
    ["RelicGroup"] = "Festive"
}
v4.Gingerbread = v7
v4.Rage = {
    ["Description"] = "Slashes fish with unmatched force, Decreases Luck by <$LuckBoost$>%, & Decreases Resilience by <$ResilienceBoost$>%",
    ["Color"] = Color3.fromRGB(209, 17, 17),
    ["StrokeColor"] = Color3.fromRGB(36, 17, 17),
    ["Display"] = "Rage",
    ["StatIncrease"] = 0,
    ["LuckBoost"] = -50,
    ["ResilienceBoost"] = -20,
    ["SlashChance"] = 25,
    ["SlashDamage"] = 8,
    ["RelicGroup"] = "Twisted"
}
v4.Greed = {
    ["Description"] = "Makes fish <$WeightBoost$>% bigger, Decreases Lure Speed by <$LureBoost$>%, & Decreases Progress Speed by <$ProgressSpeedBoost$>%",
    ["Color"] = Color3.fromRGB(255, 191, 0),
    ["StrokeColor"] = Color3.fromRGB(90, 57, 17),
    ["Display"] = "Greed",
    ["StatIncrease"] = 0,
    ["ProgressSpeedBoost"] = -5,
    ["LureBoost"] = -30,
    ["WeightBoost"] = 50,
    ["RelicGroup"] = "Twisted"
}
v4.Fractured = {
    ["Description"] = "Increases Progress Speed by <$ProgressSpeedBoost$>%, & Decreases Control by <$ControlBoost$>",
    ["Color"] = Color3.fromRGB(213, 207, 185),
    ["StrokeColor"] = Color3.fromRGB(102, 99, 88),
    ["Display"] = "Fractured",
    ["StatIncrease"] = 50,
    ["ProgressSpeedBoost"] = 50,
    ["ControlBoost"] = -0.1,
    ["RelicGroup"] = "Twisted"
}
v4["Blessed Song"] = {
    ["Description"] = "Increases Progress Speed by <$ProgressSpeedBoost$>%",
    ["Color"] = Color3.fromRGB(0, 170, 255),
    ["StrokeColor"] = Color3.fromRGB(0, 60, 90),
    ["Display"] = "Blessed Song",
    ["StatIncrease"] = 40,
    ["ProgressSpeedBoost"] = 40,
    ["RelicGroup"] = "SongOfTheDeep"
}
local v8 = {
    ["Description"] = "<$Mutations.1.Chance$>% chance for <$Mutations.1.Name$> mutation, increases Progress Speed by <$ProgressSpeedBoost$>%, & decreases Resilience by <$ResilienceBoost$>%",
    ["Color"] = Color3.fromRGB(123, 104, 165),
    ["StrokeColor"] = Color3.fromRGB(44, 37, 50),
    ["Display"] = "Frightful",
    ["StatIncrease"] = 0,
    ["ResilienceBoost"] = -20,
    ["ProgressSpeedBoost"] = 50,
    ["Mutations"] = {
        {
            ["Name"] = "Frightful",
            ["Chance"] = 10
        }
    },
    ["RelicGroup"] = "Frightful"
}
v4.Frightful = v8
local v9 = {
    ["Description"] = "<$Mutations.1.Chance$>% chance for <$Mutations.1.Name$> mutation, increases Control by <$ControlBoost$>, & rapid Slashes",
    ["Color"] = Color3.fromRGB(220, 151, 81),
    ["StrokeColor"] = Color3.fromRGB(50, 39, 28),
    ["Display"] = "Spooky",
    ["StatIncrease"] = 0,
    ["ControlBoost"] = 0.1,
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
v4.Spooky = v9
local v10 = {
    ["Description"] = "<$Mutations.1.Chance$>% chance for <$Mutations.1.Name$> mutation, increases fish size by <$WeightBoost$>%, & increases Progress Speed by <$ProgressSpeedBoost$>%",
    ["Color"] = Color3.fromRGB(84, 211, 114),
    ["StrokeColor"] = Color3.fromRGB(67, 84, 72),
    ["Display"] = "Eerie",
    ["StatIncrease"] = 10,
    ["WeightBoost"] = 10,
    ["ProgressSpeedBoost"] = 10,
    ["Mutations"] = {
        {
            ["Name"] = "Eerie",
            ["Chance"] = 10
        }
    },
    ["Secondary"] = true,
    ["RelicGroup"] = "Eerie"
}
v4.Eerie = v10
v4["Sea King"] = {
    ["Description"] = "Makes fish <$WeightBoost$>% bigger",
    ["Color"] = Color3.fromRGB(53, 77, 211),
    ["StrokeColor"] = Color3.fromRGB(9, 13, 35),
    ["Display"] = "Sea King",
    ["StatIncrease"] = 30,
    ["WeightBoost"] = 30,
    ["RelicGroup"] = "Default"
}
v4.Swift = {
    ["Description"] = "Increases Lure Speed by <$LureBoost$>%, & Progress Speed by <$ProgressSpeedBoost$>%",
    ["Color"] = Color3.fromRGB(181, 227, 229),
    ["StrokeColor"] = Color3.fromRGB(40, 50, 50),
    ["Display"] = "Swift",
    ["StatIncrease"] = 30,
    ["ProgressSpeedBoost"] = 10,
    ["LureBoost"] = 30,
    ["RelicGroup"] = "Default"
}
v4.Long = {
    ["Description"] = "Increases Line Distance by <$LineDistanceBoost$> studs, Resilience by <$ResilienceBoost$>%, & Progress Speed by <$ProgressSpeedBoost$>%",
    ["Color"] = Color3.fromRGB(223, 165, 64),
    ["StrokeColor"] = Color3.fromRGB(33, 25, 14),
    ["Display"] = "Long",
    ["StatIncrease"] = 50,
    ["LineDistanceBoost"] = 50,
    ["ProgressSpeedBoost"] = 15,
    ["ResilienceBoost"] = 35,
    ["RelicGroup"] = "Default"
}
local v11 = {
    ["Description"] = "All caught fish become <$Mutations.1.Name$>, with a <$DuplicateChance$>% chance to double caught fish",
    ["Color"] = Color3.fromRGB(129, 223, 173),
    ["StrokeColor"] = Color3.fromRGB(46, 79, 61),
    ["Display"] = "Ghastly",
    ["StatIncrease"] = 100,
    ["DuplicateChance"] = 10,
    ["DuplicateMutation"] = "Transclucent",
    ["Mutations"] = {
        {
            ["Name"] = "Translucent",
            ["Chance"] = 100
        }
    },
    ["RelicGroup"] = "Default"
}
v4.Ghastly = v11
v4.Lucky = {
    ["Description"] = "Increases Luck by <$LuckBoost$>%, Lure Speed by <$LureBoost$>%, & natural Mutation chances by <$NaturalMutationChance$>%",
    ["Color"] = Color3.fromRGB(126, 229, 164),
    ["StrokeColor"] = Color3.fromRGB(25, 45, 32),
    ["Display"] = "Lucky",
    ["StatIncrease"] = 25,
    ["LuckBoost"] = 25,
    ["LureBoost"] = 15,
    ["NaturalMutationChance"] = 50,
    ["RelicGroup"] = "Default"
}
v4.Divine = {
    ["Description"] = "Increases luck by <$LuckBoost$>%, Resilience by <$ResilienceBoost$>%, & Lure Speed by <$LureBoost$>%",
    ["Color"] = Color3.fromRGB(198, 229, 220),
    ["StrokeColor"] = Color3.fromRGB(118, 135, 132),
    ["Display"] = "Divine",
    ["StatIncrease"] = 50,
    ["LuckBoost"] = 50,
    ["LureBoost"] = 25,
    ["ResilienceBoost"] = 20,
    ["RelicGroup"] = "Default"
}
v4.Mutated = {
    ["Description"] = "Increases natural Mutation chances by <$NaturalMutationChance$>%",
    ["Color"] = Color3.fromRGB(147, 229, 112),
    ["StrokeColor"] = Color3.fromRGB(45, 58, 39),
    ["Display"] = "Mutated",
    ["StatIncrease"] = 90,
    ["NaturalMutationChance"] = 90,
    ["RelicGroup"] = "Default"
}
v4.Unbreakable = {
    ["Description"] = "Increases Strength by <$StrengthBoost$>kg, & Control by <$ControlBoost$>",
    ["Color"] = Color3.fromRGB(225, 179, 229),
    ["StrokeColor"] = Color3.fromRGB(16, 13, 16),
    ["Display"] = "Unbreakable",
    ["StatIncrease"] = 10000,
    ["StrengthBoost"] = 10000,
    ["ControlBoost"] = 0.1,
    ["RelicGroup"] = "Default"
}
v4.Steady = {
    ["Description"] = "Increases Progress Speed by <$ProgressSpeedBoost$>%, & Control by <$ControlBoost$>",
    ["Color"] = Color3.fromRGB(229, 207, 191),
    ["StrokeColor"] = Color3.fromRGB(21, 19, 18),
    ["Display"] = "Steady",
    ["StatIncrease"] = 20,
    ["ProgressSpeedBoost"] = 20,
    ["ControlBoost"] = 0.05,
    ["RelicGroup"] = "Default"
}
v4.Blessed = {
    ["Description"] = "Increases Shiny & Sparkling chances by <$ShinyChance$>%, Lure Speed by <$LureBoost$>%, & Progress Speed by <$ProgressSpeedBoost$>%",
    ["Color"] = Color3.fromRGB(255, 79, 164),
    ["StrokeColor"] = Color3.fromRGB(42, 20, 34),
    ["Display"] = "Blessed",
    ["StatIncrease"] = 5,
    ["LureBoost"] = 5,
    ["ShinyChance"] = 5,
    ["SparklingChance"] = 5,
    ["ProgressSpeedBoost"] = 5,
    ["RelicGroup"] = "Default"
}
v4.Wormhole = {
    ["Description"] = "<$StatIncrease$>% chance to catch a fish from a random place",
    ["Color"] = Color3.fromRGB(145, 90, 255),
    ["StrokeColor"] = Color3.fromRGB(13, 8, 22),
    ["Display"] = "Wormhole",
    ["StatIncrease"] = 80,
    ["RelicGroup"] = "Default"
}
v4.Resilient = {
    ["Description"] = "Increases Resilience by <$ResilienceBoost$>%, & Fish Size by <$WeightBoost$>%",
    ["Color"] = Color3.fromRGB(106, 255, 198),
    ["StrokeColor"] = Color3.fromRGB(17, 29, 25),
    ["Display"] = "Resilient",
    ["StatIncrease"] = 35,
    ["WeightBoost"] = 10,
    ["ResilienceBoost"] = 35,
    ["RelicGroup"] = "Default"
}
v4.Controlled = {
    ["Description"] = "Increases Control by <$ControlBoost$>",
    ["Color"] = Color3.fromRGB(175, 155, 255),
    ["StrokeColor"] = Color3.fromRGB(32, 28, 39),
    ["Display"] = "Controlled",
    ["StatIncrease"] = 0.15,
    ["ControlBoost"] = 0.15,
    ["RelicGroup"] = "Default"
}
local v14 = {
    ["Description"] = "Increases Luck by <$LuckBoost$>%, Lure Speed by <$LureBoost$>%, & <$Mutations.1.Chance$>% chance for <$Mutations.1.Name$> mutation [Doubled during Rainy weather]",
    ["Color"] = Color3.fromRGB(255, 236, 131),
    ["StrokeColor"] = Color3.fromRGB(36, 36, 24),
    ["Display"] = "Storming",
    ["StatIncrease"] = 100,
    ["LuckBoost"] = 50,
    ["LureBoost"] = 25,
    ["Mutations"] = {
        {
            ["Name"] = "Electric",
            ["Chance"] = 25
        }
    },
    ["ConditionalBoosts"] = function(p12, _)
        -- upvalues: (copy) v_u_1
        if v_u_1.world.weather.Value == "Rain" then
            local v13 = {
                ["LuckBoost"] = p12.LuckBoost * 2,
                ["LureBoost"] = p12.LureBoost * 2,
                ["Mutations"] = {
                    {
                        ["Name"] = p12.Mutations[1].Name,
                        ["Chance"] = p12.Mutations[1].Chance * 2
                    }
                }
            }
            return v13
        end
    end,
    ["RelicGroup"] = "Default"
}
v4.Storming = v14
v4.Scrapper = {
    ["Description"] = "<$BaitPreserveChance$>% chance to not consume Bait",
    ["Color"] = Color3.fromRGB(255, 155, 83),
    ["StrokeColor"] = Color3.fromRGB(36, 23, 13),
    ["Display"] = "Scrapper",
    ["StatIncrease"] = 60,
    ["BaitPreserveChance"] = 60,
    ["RelicGroup"] = "Default"
}
v4.Breezed = {
    ["Description"] = "Increases Luck by <$LuckBoost$>%, Lure Speed by <$LureBoost$>%, & Progress Speed by <$ProgressSpeedBoost$>% [Doubled during Windy weather]",
    ["Color"] = Color3.fromRGB(188, 208, 255),
    ["StrokeColor"] = Color3.fromRGB(28, 30, 36),
    ["Display"] = "Breezed",
    ["StatIncrease"] = 100,
    ["LuckBoost"] = 50,
    ["LureBoost"] = 20,
    ["ProgressSpeedBoost"] = 10,
    ["ConditionalBoosts"] = function(p15, _)
        -- upvalues: (copy) v_u_1
        if v_u_1.world.weather.Value == "Windy" then
            return {
                ["LuckBoost"] = p15.LuckBoost * 2,
                ["LureBoost"] = p15.LureBoost * 2,
                ["ProgressSpeedBoost"] = p15.ProgressSpeedBoost * 2
            }
        end
    end,
    ["RelicGroup"] = "Default"
}
local v16 = {
    ["Description"] = "<$XpMultiply$>\195\151 XP after catching a fish, Lure Speed increased by <$LureBoost$>%, & grants a <$Mutations.1.Chance$>% chance to Purify caught fish",
    ["Color"] = Color3.fromRGB(128, 255, 114),
    ["StrokeColor"] = Color3.fromRGB(29, 36, 27),
    ["Display"] = "Insight",
    ["StatIncrease"] = 1.5,
    ["XpMultiply"] = 1.5,
    ["LureBoost"] = 30,
    ["Mutations"] = {
        {
            ["Name"] = "Purified",
            ["Chance"] = 30
        }
    },
    ["RelicGroup"] = "Default"
}
v4.Insight = v16
v4.Clever = {
    ["Description"] = "<$XpMultiply$>\195\151 XP after catching a fish",
    ["Color"] = Color3.fromRGB(255, 110, 166),
    ["StrokeColor"] = Color3.fromRGB(36, 18, 24),
    ["Display"] = "Clever",
    ["StatIncrease"] = 2.25,
    ["XpMultiply"] = 2.25,
    ["RelicGroup"] = "Default"
}
local v17 = {
    ["Description"] = "Caught fish will be Albino or Darkened, with a <$WeightBoost$>% size boost",
    ["Color"] = Color3.fromRGB(255, 255, 255),
    ["StrokeColor"] = Color3.fromRGB(0, 0, 0),
    ["Display"] = "Noir",
    ["StatIncrease"] = 100,
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
v4.Noir = v17
v4.Hasty = {
    ["Description"] = "Increases Lure Speed by <$LureBoost$>%",
    ["Color"] = Color3.fromRGB(229, 209, 92),
    ["StrokeColor"] = Color3.fromRGB(50, 42, 12),
    ["Display"] = "Hasty",
    ["StatIncrease"] = 55,
    ["LureBoost"] = 55,
    ["RelicGroup"] = "Default"
}
v4.Quality = {
    ["Description"] = "Increases Luck by <$LuckBoost$>%, Resilience by <$ResilienceBoost$>%, Lure Speed by <$LureBoost$>%, & Progress Speed by <$ProgressSpeedBoost$>%",
    ["Color"] = Color3.fromRGB(158, 255, 55),
    ["StrokeColor"] = Color3.fromRGB(56, 90, 19),
    ["Display"] = "Quality",
    ["StatIncrease"] = 0,
    ["LuckBoost"] = 20,
    ["LureBoost"] = 20,
    ["ProgressSpeedBoost"] = 5,
    ["ResilienceBoost"] = 10,
    ["RelicGroup"] = "Default"
}
local v18 = {
    ["Description"] = "Caught fish have a <$Mutations.1.Chance$>% chance to be <$Mutations.1.Name$>, & a chance to be larger, or a low chance to be notably smaller",
    ["Color"] = Color3.fromRGB(39, 57, 173),
    ["StrokeColor"] = Color3.fromRGB(83, 41, 173),
    ["Display"] = "Abyssal",
    ["StatIncrease"] = 20,
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
v4.Abyssal = v18
v4.Herculean = {
    ["Description"] = "Increases Strength by <$StrengthBoost$>kg, Control by <$ControlBoost$>, & Progress Speed by <$ProgressSpeedBoost$>%",
    ["Color"] = Color3.fromRGB(255, 234, 0),
    ["StrokeColor"] = Color3.fromRGB(48, 43, 0),
    ["Display"] = "Herculean",
    ["StatIncrease"] = 25000,
    ["StrengthBoost"] = 25000,
    ["ProgressSpeedBoost"] = 10,
    ["ControlBoost"] = 0.2,
    ["RelicGroup"] = "Exalted"
}
v4.Mystical = {
    ["Description"] = "Increases Luck by <$LuckBoost$>%, Resilience by <$ResilienceBoost$>%, Lure Speed by <$LureBoost$>%, & Progress Speed by <$ProgressSpeedBoost$>%",
    ["Color"] = Color3.fromRGB(194, 223, 255),
    ["StrokeColor"] = Color3.fromRGB(43, 50, 57),
    ["Display"] = "Mystical",
    ["StatIncrease"] = 45,
    ["LuckBoost"] = 25,
    ["LureBoost"] = 15,
    ["ProgressSpeedBoost"] = 10,
    ["ResilienceBoost"] = 45,
    ["RelicGroup"] = "Exalted"
}
local v19 = {
    ["Description"] = "Caught fish have a <$Mutations.1.Chance$>% chance to be <$Mutations.1.Name$>, & increased Resilience by <$ResilienceBoost$>%",
    ["Color"] = Color3.fromRGB(255, 0, 179),
    ["StrokeColor"] = Color3.fromRGB(49, 0, 36),
    ["Display"] = "Quantum",
    ["StatIncrease"] = 25,
    ["ResilienceBoost"] = 25,
    ["Mutations"] = {
        {
            ["Name"] = "Subspace",
            ["Chance"] = 25
        }
    },
    ["RelicGroup"] = "Exalted"
}
v4.Quantum = v19
v4.Invincible = {
    ["Description"] = "Grants infinite Strength, & allows fishing in any body of liquid",
    ["Color"] = Color3.fromRGB(255, 98, 25),
    ["StrokeColor"] = Color3.fromRGB(35, 13, 3),
    ["Display"] = "Invincible",
    ["StatIncrease"] = (1 / 0),
    ["StrengthBoost"] = (1 / 0),
    ["DurabilityBoost"] = 200,
    ["RelicGroup"] = "Exalted"
}
v4.Piercing = {
    ["Description"] = "Rod has a chance to stab fish while reeling, & increases Progress Speed by <$ProgressSpeedBoost$>%",
    ["Color"] = Color3.fromRGB(13, 167, 141),
    ["StrokeColor"] = Color3.fromRGB(3, 40, 33),
    ["Display"] = "Piercing",
    ["StatIncrease"] = 0,
    ["ProgressSpeedBoost"] = 15,
    ["SlashChance"] = 30,
    ["SlashDamage"] = 6,
    ["RelicGroup"] = "Exalted"
}
v4.Anomalous = {
    ["Description"] = "Caught fish have a <$DuplicateChance$>% chance to be duplicated & <$DuplicateMutation$>",
    ["Color"] = Color3.fromRGB(255, 29, 29),
    ["StrokeColor"] = Color3.fromRGB(35, 4, 4),
    ["Display"] = "Anomalous",
    ["StatIncrease"] = 0,
    ["DuplicateChance"] = 20,
    ["DuplicateMutation"] = "Anomalous",
    ["RelicGroup"] = "Exalted"
}
v4["Sea Overlord"] = {
    ["Description"] = "Makes fish <$WeightBoost$>% bigger",
    ["Color"] = Color3.fromRGB(51, 168, 211),
    ["StrokeColor"] = Color3.fromRGB(9, 29, 35),
    ["Display"] = "Sea Overlord",
    ["StatIncrease"] = 40,
    ["WeightBoost"] = 40,
    ["RelicGroup"] = "Exalted"
}
v4.Immortal = {
    ["Description"] = "Increases Luck by <$LuckBoost$>%, & Progress Speed by <$ProgressSpeedBoost$>%",
    ["Color"] = Color3.fromRGB(232, 217, 255),
    ["StrokeColor"] = Color3.fromRGB(69, 65, 76),
    ["Display"] = "Immortal",
    ["StatIncrease"] = 75,
    ["LuckBoost"] = 75,
    ["ProgressSpeedBoost"] = 30,
    ["RelicGroup"] = "Exalted"
}
v4.Flashline = {
    ["Description"] = "A small chance of majorly boosted Progress Speed",
    ["Color"] = Color3.fromRGB(255, 255, 255),
    ["StrokeColor"] = Color3.fromRGB(49, 49, 49),
    ["Display"] = "Flashline",
    ["StatIncrease"] = 0,
    ["ProgressSpeedBoost"] = 15,
    ["ConditionalBoosts"] = function(_, _)
        if math.random(1, 4) == 1 then
            return {
                ["ProgressSpeedBoost"] = 100
            }
        end
    end,
    ["RelicGroup"] = "Default"
}
v4.Scavenger = {
    ["Description"] = "Raised chances for utility catches",
    ["Color"] = Color3.fromRGB(255, 191, 102),
    ["StrokeColor"] = Color3.fromRGB(56, 39, 13),
    ["Display"] = "Scavenger",
    ["StatIncrease"] = 0,
    ["RelicGroup"] = "Default"
}
local v20 = {
    ["Description"] = "Unleash pure chaos with every cast. Slashes fish with an 8% chance to awaken the Chaotic mutation",
    ["Color"] = Color3.fromRGB(20, 19, 22),
    ["StrokeColor"] = Color3.fromRGB(255, 255, 255),
    ["Display"] = "Chaotic",
    ["StatIncrease"] = 8,
    ["SlashChance"] = 15,
    ["SlashDamage"] = 6,
    ["Mutations"] = {
        {
            ["Name"] = "Chaotic",
            ["Chance"] = 25
        }
    },
    ["RelicGroup"] = "Default"
}
v4.Chaotic = v20
v4["Blood Reckoning"] = {
    ["Description"] = "Sacrifice health for a health-dependent chance to apply the Sanguine mutation",
    ["Color"] = Color3.fromRGB(74, 8, 8),
    ["StrokeColor"] = Color3.fromRGB(163, 17, 17),
    ["Display"] = "Blood Reckoning",
    ["StatIncrease"] = 0,
    ["HealthCost"] = 30,
    ["RelicGroup"] = "Default"
}
v4.Chronos = {
    ["Description"] = "Occasionally freeze fish in place",
    ["Color"] = Color3.fromRGB(29, 84, 211),
    ["StrokeColor"] = Color3.fromRGB(11, 13, 35),
    ["Display"] = "Chronos",
    ["StatIncrease"] = 0,
    ["RelicGroup"] = "Default"
}
v4.Momentum = {
    ["Description"] = "Perfect Catches increase Lure, Resilience & Progress Speed incrementally",
    ["Color"] = Color3.fromRGB(211, 179, 128),
    ["StrokeColor"] = Color3.fromRGB(35, 27, 18),
    ["Display"] = "Momentum",
    ["StatIncrease"] = 0,
    ["ProgressSpeedBoost"] = 0,
    ["RelicGroup"] = "Default",
    ["ConditionalBoosts"] = function(_, p21)
        return {
            ["ProgressSpeedBoost"] = p21:GetAttribute("CurrentMomentumBoost") or 0,
            ["LureBoost"] = p21:GetAttribute("CurrentMomentumBoost") or 0,
            ["ResilienceBoost"] = p21:GetAttribute("CurrentMomentumBoost") or 0
        }
    end
}
v4.Overclocked = {
    ["Description"] = "Increases Progress Speed by <$ForcedProgressSpeedBoost$>% for any fish",
    ["Color"] = Color3.fromRGB(0, 255, 204),
    ["StrokeColor"] = Color3.fromRGB(11, 35, 28),
    ["Display"] = "Overclocked",
    ["StatIncrease"] = 0,
    ["ForcedProgressSpeedBoost"] = 5,
    ["Secondary"] = true,
    ["RelicGroup"] = "Cosmic"
}
v4.Tenacity = {
    ["Description"] = "Increases Progress Speed by 20% for every reel snapped in a row",
    ["Color"] = Color3.fromRGB(255, 248, 171),
    ["StrokeColor"] = Color3.fromRGB(71, 70, 54),
    ["Display"] = "Tenacity",
    ["StatIncrease"] = 0,
    ["Secondary"] = true,
    ["RelicGroup"] = "Cosmic",
    ["ConditionalBoosts"] = function(_, p22)
        return {
            ["ProgressSpeedBoost"] = p22:GetAttribute("TenacityBoost")
        }
    end
}
v4.Tryhard = {
    ["Description"] = "Increases Progress Speed by <$ProgressSpeedBoost$>%, & decreases Control by <$ControlBoost$>",
    ["Color"] = Color3.fromRGB(255, 0, 0),
    ["StrokeColor"] = Color3.fromRGB(49, 35, 35),
    ["Display"] = "Tryhard",
    ["StatIncrease"] = 0,
    ["ControlBoost"] = -0.1,
    ["ProgressSpeedBoost"] = 30,
    ["Secondary"] = true,
    ["RelicGroup"] = "Cosmic"
}
v4.Wise = {
    ["Description"] = "<$XpMultiply$>\195\151 XP after catching a fish",
    ["Color"] = Color3.fromRGB(200, 105, 255),
    ["StrokeColor"] = Color3.fromRGB(42, 36, 49),
    ["Display"] = "Wise",
    ["StatIncrease"] = 1.2,
    ["XpMultiply"] = 1.2,
    ["Secondary"] = true,
    ["RelicGroup"] = "Cosmic"
}
v4.Cryogenic = {
    ["Description"] = "A small chance to fully freeze a lured fish",
    ["Color"] = Color3.fromRGB(148, 235, 255),
    ["StrokeColor"] = Color3.fromRGB(21, 43, 49),
    ["Display"] = "Cryogenic",
    ["StatIncrease"] = 0,
    ["Secondary"] = true,
    ["RelicGroup"] = "Cosmic"
}
v4["Sea Prince"] = {
    ["Description"] = "Makes fish <$WeightBoost$>% bigger",
    ["Color"] = Color3.fromRGB(84, 118, 211),
    ["StrokeColor"] = Color3.fromRGB(18, 23, 35),
    ["Display"] = "Sea Prince",
    ["StatIncrease"] = 15,
    ["WeightBoost"] = 15,
    ["Secondary"] = true,
    ["RelicGroup"] = "Cosmic"
}
v4.Glittered = {
    ["Description"] = "Increases Shiny & Sparkling chances by <$ShinyChance$>%",
    ["Color"] = Color3.fromRGB(255, 241, 160),
    ["StrokeColor"] = Color3.fromRGB(42, 42, 29),
    ["Display"] = "Glittered",
    ["StatIncrease"] = 3,
    ["ShinyChance"] = 3,
    ["SparklingChance"] = 3,
    ["Secondary"] = true,
    ["RelicGroup"] = "Cosmic"
}
v4.Weak = {
    ["Description"] = "Decreased Strength by <$StrengthBoostPercent$>%",
    ["Color"] = Color3.fromRGB(134, 134, 134),
    ["StrokeColor"] = Color3.fromRGB(9, 9, 9),
    ["Display"] = "Weak",
    ["StatIncrease"] = 10,
    ["StrengthBoostPercent"] = -10,
    ["RelicGroup"] = "Twisted"
}
local v23 = {
    ["Description"] = "Decreased Luck by <$LuckBoost$>%",
    ["Color"] = Color3.fromRGB(67, 88, 49),
    ["StrokeColor"] = Color3.fromRGB(9, 12, 7),
    ["Display"] = "Putrid",
    ["StatIncrease"] = 10,
    ["LuckBoost"] = -10,
    ["Mutations"] = {
        {
            ["Name"] = "Putrid",
            ["Chance"] = 2
        }
    },
    ["RelicGroup"] = "Twisted"
}
v4.Putrid = v23
local v24 = {
    ["Description"] = "Caught fish have a <$Mutations.1.Chance$>% chance to be <$Mutations.1.Name$>",
    ["Color"] = Color3.fromRGB(156, 139, 105),
    ["StrokeColor"] = Color3.fromRGB(40, 36, 27),
    ["Display"] = "Pharaohs Curse",
    ["StatIncrease"] = 25,
    ["Mutations"] = {
        {
            ["Name"] = "Sandy",
            ["Chance"] = 25
        }
    },
    ["RelicGroup"] = "Twisted"
}
v4["Pharaohs Curse"] = v24
v4.Wobbly = {
    ["Description"] = "Decreases Control by <$ControlBoost$>",
    ["Color"] = Color3.fromRGB(86, 91, 112),
    ["StrokeColor"] = Color3.fromRGB(20, 21, 24),
    ["Display"] = "Wobbly",
    ["StatIncrease"] = -0.05,
    ["ControlBoost"] = -0.05,
    ["RelicGroup"] = "Twisted"
}
v3.Enchants = v4
return v3
