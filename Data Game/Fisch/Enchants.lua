return {
	Enchants = {
		Cupid = {
			Description = "10% chance for the Sweet mutation, increases Lure Speed by <$Lure$>%, & increases Progress Speed by <$ProgressSpeed$>%",
			ForceStroke = true,
			Display = "Cupid",
			Lure = 25,
			ProgressSpeed = 30,
			RelicGroup = "Cupid",
			CanSelectFromAdmin = false,
			Color = Color3.fromRGB(253, 255, 221),
			StrokeColor = Color3.fromRGB(226, 175, 231),
			Mutations = {{
				Name = "Sweet",
				Chance = 10
			}}
		},
		["Valentine's"] = {
			Description = "45% chance for a random Valentine's mutation, increases Resilience by <$Resilience$>%, & increases Progress Speed by <$ProgressSpeed$>%",
			Display = "Valentine's",
			Resilience = 10,
			ProgressSpeed = 30,
			RelicGroup = "Valentine",
			CanSelectFromAdmin = false,
			Color = Color3.fromRGB(234, 151, 202),
			StrokeColor = Color3.fromRGB(200, 70, 105),
			Mutations = {
				{
					Name = "Sweet",
					Chance = 15
				},
				{
					Name = "Lovely",
					Chance = 15
				},
				{
					Name = "Candy",
					Chance = 15
				}
			}
		},
		Hunter = {
			Description = "Increases Disturbance by +<$Disturbance$>",
			Display = "Hunter",
			Disturbance = 2,
			RelicGroup = "Default",
			CanSelectFromAdmin = true,
			Color = Color3.fromRGB(86, 30, 229),
			StrokeColor = Color3.fromRGB(23, 16, 45)
		},
		Ferocious = {
			Description = "Increases Disturbance by +<$Disturbance$>",
			Display = "Ferocious",
			Disturbance = 4,
			RelicGroup = "Exalted",
			CanSelectFromAdmin = true,
			Color = Color3.fromRGB(144, 21, 24),
			StrokeColor = Color3.fromRGB(85, 12, 15)
		},
		Santa = {
			Description = "30% chance for a Fischmas mutation, increases fish size by <$WeightBoost$>%, & increases Progress Speed by <$ProgressSpeed$>%",
			ForceStroke = true,
			Display = "Santa",
			WeightBoost = 30,
			ProgressSpeed = 30,
			RelicGroup = "Santa",
			CanSelectFromAdmin = false,
			Color = Color3.fromRGB(234, 57, 57),
			StrokeColor = Color3.fromRGB(231, 231, 231),
			Mutations = {
				{
					Name = "Santa",
					Chance = 6
				},
				{
					Name = "Jingle Bell",
					Chance = 6
				},
				{
					Name = "Merry",
					Chance = 6
				},
				{
					Name = "Peppermint",
					Chance = 6
				},
				{
					Name = "Gingerbread",
					Chance = 6
				}
			}
		},
		Merry = {
			Description = "<$Mutations.1.Chance$>% chance for <$Mutations.1.Name$> mutation, increases Lure Speed by <$Lure$>%, & increases Progress Speed by <$ProgressSpeed$>%",
			Display = "Merry",
			Lure = 35,
			ProgressSpeed = 35,
			RelicGroup = "Festive",
			CanSelectFromAdmin = false,
			Color = Color3.fromRGB(22, 131, 26),
			StrokeColor = Color3.fromRGB(3, 44, 0),
			Mutations = {{
				Name = "Merry",
				Chance = 10
			}}
		},
		Peppermint = {
			Description = "<$Mutations.1.Chance$>% chance for <$Mutations.1.Name$> mutation, rod has a high chance to lightly stab fish while reeling, & increases Luck by <$Luck$>%",
			ForceStroke = true,
			Display = "Peppermint",
			Luck = 25,
			Secondary = true,
			RelicGroup = "Festive",
			CanSelectFromAdmin = false,
			Color = Color3.fromRGB(255, 0, 0),
			StrokeColor = Color3.fromRGB(255, 255, 255),
			ClientFishingPassives = {
				Generic_Slashes = {
					TriggerMode = "FishMove",
					SlashChance = 40,
					SlashDamage = 1,
					StunTime = 0.1,
					SourceType = "secondaryEnchant",
					SourceName = "Peppermint",
					SoundName = "stabbystab",
					IconName = "Default",
					IconColor = Color3.fromRGB(255, 0, 0),
					GradientColor = Color3.fromRGB(255, 0, 0)
				}
			},
			Mutations = {{
				Name = "Peppermint",
				Chance = 10
			}}
		},
		Gingerbread = {
			Description = "<$Mutations.1.Chance$>% chance for <$Mutations.1.Name$> mutation, increases fish size by <$WeightBoost$>%, & increases Progress Speed by <$ProgressSpeed$>%",
			Display = "Gingerbread",
			WeightBoost = 40,
			ProgressSpeed = 10,
			RelicGroup = "Festive",
			CanSelectFromAdmin = false,
			Color = Color3.fromRGB(140, 70, 43),
			StrokeColor = Color3.fromRGB(35, 0, 0),
			Mutations = {{
				Name = "Gingerbread",
				Chance = 10
			}}
		},
		Rage = {
			Description = "Slashes fish with unmatched force, Decreases Luck by <$Luck$>%, & Decreases Resilience by <$Resilience$>%",
			Display = "Rage",
			Luck = -50,
			Resilience = -20,
			RelicGroup = "Twisted",
			CanSelectFromAdmin = true,
			Color = Color3.fromRGB(209, 17, 17),
			StrokeColor = Color3.fromRGB(36, 17, 17),
			ClientFishingPassives = {
				Generic_Slashes = {
					TriggerMode = "FishMove",
					SlashChance = 25,
					SlashDamage = 8,
					StunTime = 0.25,
					SourceType = "enchant",
					SourceName = "Rage",
					SoundName = "stabbystab",
					IconName = "Default",
					IconColor = Color3.fromRGB(209, 17, 17),
					GradientColor = Color3.fromRGB(209, 17, 17)
				}
			}
		},
		Greed = {
			Description = "Makes fish <$WeightBoost$>% bigger, Decreases Lure Speed by <$Lure$>%, & Decreases Progress Speed by <$ProgressSpeed$>%",
			Display = "Greed",
			ProgressSpeed = -5,
			Lure = -30,
			WeightBoost = 50,
			RelicGroup = "Twisted",
			CanSelectFromAdmin = true,
			Color = Color3.fromRGB(255, 191, 0),
			StrokeColor = Color3.fromRGB(90, 57, 17)
		},
		Fractured = {
			Description = "Increases Progress Speed by <$ProgressSpeed$>%, & Decreases Control by <$Control$>",
			Display = "Fractured",
			ProgressSpeed = 50,
			Control = -0.1,
			RelicGroup = "Twisted",
			CanSelectFromAdmin = true,
			Color = Color3.fromRGB(213, 207, 185),
			StrokeColor = Color3.fromRGB(102, 99, 88)
		},
		["Blessed Song"] = {
			Description = "Increases Progress Speed by <$ProgressSpeed$>% and True Progress Speed by <$TrueProgressSpeed$>%",
			Display = "Blessed Song",
			ProgressSpeed = 20,
			TrueProgressSpeed = 20,
			RelicGroup = "SongOfTheDeep",
			CanSelectFromAdmin = true,
			Color = Color3.fromRGB(0, 170, 255),
			StrokeColor = Color3.fromRGB(0, 60, 90)
		},
		Frightful = {
			Description = "<$Mutations.1.Chance$>% chance for <$Mutations.1.Name$> mutation, increases Progress Speed by <$ProgressSpeed$>%, & decreases Resilience by <$Resilience$>%",
			Display = "Frightful",
			Resilience = -20,
			ProgressSpeed = 50,
			RelicGroup = "Frightful",
			CanSelectFromAdmin = false,
			Color = Color3.fromRGB(123, 104, 165),
			StrokeColor = Color3.fromRGB(44, 37, 50),
			Mutations = {{
				Name = "Frightful",
				Chance = 10
			}}
		},
		Spooky = {
			Description = "<$Mutations.1.Chance$>% chance for <$Mutations.1.Name$> mutation, increases Control by <$Control$>, & rapid Slashes",
			Display = "Spooky",
			Control = 0.1,
			RelicGroup = "Spooky",
			CanSelectFromAdmin = false,
			Color = Color3.fromRGB(220, 151, 81),
			StrokeColor = Color3.fromRGB(50, 39, 28),
			ClientFishingPassives = {
				Generic_Slashes = {
					TriggerMode = "FishMove",
					SlashChance = 30,
					SlashDamage = 3,
					StunTime = 0.25,
					SourceType = "enchant",
					SourceName = "Spooky",
					SoundName = "stabbystab",
					IconName = "Default",
					IconColor = Color3.fromRGB(220, 151, 81),
					GradientColor = Color3.fromRGB(220, 151, 81)
				}
			},
			Mutations = {{
				Name = "Spooky",
				Chance = 10
			}}
		},
		Eerie = {
			Description = "<$Mutations.1.Chance$>% chance for <$Mutations.1.Name$> mutation, increases fish size by <$WeightBoost$>%, & increases Progress Speed by <$ProgressSpeed$>%",
			Display = "Eerie",
			WeightBoost = 10,
			ProgressSpeed = 10,
			Secondary = true,
			RelicGroup = "Eerie",
			CanSelectFromAdmin = false,
			Color = Color3.fromRGB(84, 211, 114),
			StrokeColor = Color3.fromRGB(67, 84, 72),
			Mutations = {{
				Name = "Eerie",
				Chance = 10
			}}
		},
		["Sea King"] = {
			Description = "Makes fish <$WeightBoost$>% bigger",
			Display = "Sea King",
			WeightBoost = 30,
			RelicGroup = "Default",
			CanSelectFromAdmin = true,
			Color = Color3.fromRGB(53, 77, 211),
			StrokeColor = Color3.fromRGB(9, 13, 35)
		},
		Swift = {
			Description = "Increases Lure Speed by <$Lure$>%, & Progress Speed by <$ProgressSpeed$>%",
			Display = "Swift",
			ProgressSpeed = 10,
			Lure = 30,
			RelicGroup = "Default",
			CanSelectFromAdmin = true,
			Color = Color3.fromRGB(181, 227, 229),
			StrokeColor = Color3.fromRGB(40, 50, 50)
		},
		Long = {
			Description = "Increases Line Distance by <$LineDistance$> studs, Resilience by <$Resilience$>%, & Progress Speed by <$ProgressSpeed$>%",
			Display = "Long",
			LineDistance = 150,
			ProgressSpeed = 15,
			Resilience = 35,
			RelicGroup = "Default",
			CanSelectFromAdmin = true,
			Color = Color3.fromRGB(223, 165, 64),
			StrokeColor = Color3.fromRGB(33, 25, 14)
		},
		Ghastly = {
			Description = "All caught fish become <$Mutations.1.Name$>, with a <$FishingPassives.Generic_DuplicateFish.DuplicateChance$>% chance to double caught fish",
			Display = "Ghastly",
			RelicGroup = "Default",
			CanSelectFromAdmin = true,
			Color = Color3.fromRGB(129, 223, 173),
			StrokeColor = Color3.fromRGB(46, 79, 61),
			FishingPassives = {
				Generic_DuplicateFish = {
					DuplicateChance = 10,
					DuplicateMutation = "Translucent"
				}
			},
			Mutations = {{
				Name = "Translucent",
				Chance = 100
			}}
		},
		Lucky = {
			Description = "Increases Luck by <$Luck$>%, Lure Speed by <$Lure$>%, & natural Mutation chances by <$NaturalMutationChance$>%",
			Display = "Lucky",
			Luck = 25,
			Lure = 15,
			NaturalMutationChance = 50,
			RelicGroup = "Default",
			CanSelectFromAdmin = true,
			Color = Color3.fromRGB(126, 229, 164),
			StrokeColor = Color3.fromRGB(25, 45, 32)
		},
		Divine = {
			Description = "Increases luck by <$Luck$>%, Resilience by <$Resilience$>%, & Lure Speed by <$Lure$>%",
			Display = "Divine",
			Luck = 50,
			Lure = 25,
			Resilience = 20,
			RelicGroup = "Default",
			CanSelectFromAdmin = true,
			Color = Color3.fromRGB(198, 229, 220),
			StrokeColor = Color3.fromRGB(118, 135, 132)
		},
		Mutated = {
			Description = "Increases natural Mutation chances by <$NaturalMutationChance$>%",
			Display = "Mutated",
			NaturalMutationChance = 90,
			RelicGroup = "Default",
			CanSelectFromAdmin = true,
			Color = Color3.fromRGB(147, 229, 112),
			StrokeColor = Color3.fromRGB(45, 58, 39)
		},
		Unbreakable = {
			Description = "Increases Strength by <$Strength$>kg, & Control by <$Control$>",
			Display = "Unbreakable",
			Strength = 10000,
			Control = 0.1,
			RelicGroup = "Default",
			CanSelectFromAdmin = true,
			Color = Color3.fromRGB(225, 179, 229),
			StrokeColor = Color3.fromRGB(16, 13, 16)
		},
		Steady = {
			Description = "Increases Progress Speed by <$ProgressSpeed$>%, & Control by <$Control$>",
			Display = "Steady",
			ProgressSpeed = 20,
			Control = 0.05,
			RelicGroup = "Default",
			CanSelectFromAdmin = true,
			Color = Color3.fromRGB(229, 207, 191),
			StrokeColor = Color3.fromRGB(21, 19, 18)
		},
		Blessed = {
			Description = "Increases Shiny & Sparkling chances by <$ShinyChance$>%, Lure Speed by <$Lure$>%, & Progress Speed by <$ProgressSpeed$>%",
			Display = "Blessed",
			Lure = 5,
			ShinyChance = 5,
			SparklingChance = 5,
			ProgressSpeed = 5,
			RelicGroup = "Default",
			CanSelectFromAdmin = true,
			Color = Color3.fromRGB(255, 79, 164),
			StrokeColor = Color3.fromRGB(42, 20, 34)
		},
		Wormhole = {
			Description = "<$FishingPassives.WormholeEnchant.ActivateChance$>% chance to catch a fish and mutation from a random place",
			Display = "Wormhole",
			RelicGroup = "Default",
			CanSelectFromAdmin = true,
			Color = Color3.fromRGB(145, 90, 255),
			StrokeColor = Color3.fromRGB(13, 8, 22),
			FishingPassives = {
				WormholeEnchant = {
					ActivateChance = 80
				}
			}
		},
		Resilient = {
			Description = "Increases Resilience by <$Resilience$>%, & Fish Size by <$WeightBoost$>%",
			Display = "Resilient",
			WeightBoost = 10,
			Resilience = 35,
			RelicGroup = "Default",
			CanSelectFromAdmin = true,
			Color = Color3.fromRGB(106, 255, 198),
			StrokeColor = Color3.fromRGB(17, 29, 25)
		},
		Controlled = {
			Description = "Increases Control by <$Control$>",
			Display = "Controlled",
			Control = 0.15,
			RelicGroup = "Default",
			CanSelectFromAdmin = true,
			Color = Color3.fromRGB(175, 155, 255),
			StrokeColor = Color3.fromRGB(32, 28, 39)
		},
		Storming = {
			Description = "Increases Luck by <$Luck$>%, Lure Speed by <$Lure$>%, & <$Mutations.1.Chance$>% chance for <$Mutations.1.Name$> mutation [Doubled during Rain, Tripled during Storms]",
			Display = "Storming",
			Luck = 50,
			Lure = 25,
			RelicGroup = "Default",
			CanSelectFromAdmin = true,
			Color = Color3.fromRGB(255, 236, 131),
			StrokeColor = Color3.fromRGB(36, 36, 24),
			Mutations = {{
				Name = "Electric",
				Chance = 25
			}},
			ConditionalBoosts = function(p1, _) --[[ ConditionalBoosts ]] -- line: 582
				-- upvalues: ReplicatedStorage (copy)
				local v8 = if ReplicatedStorage.world.weather.Value ~= "Rain" then if ReplicatedStorage.world.weather.Value ~= "Stormy" then nil else 3 else 2

				if v8 then
					return {
						Luck = p1.Luck * v8,
						Lure = p1.Lure * v8,
						Mutations = {{
							Name = p1.Mutations[1].Name,
							Chance = p1.Mutations[1].Chance * v8
						}}
					}
				end
			end
		},
		Scrapper = {
			Description = "<$BaitPreserveChance$>% chance to not consume Bait",
			Display = "Scrapper",
			BaitPreserveChance = 60,
			RelicGroup = "Default",
			CanSelectFromAdmin = true,
			Color = Color3.fromRGB(255, 155, 83),
			StrokeColor = Color3.fromRGB(36, 23, 13)
		},
		Breezed = {
			Description = "Increases Luck by <$Luck$>%, Lure Speed by <$Lure$>%, & Progress Speed by <$ProgressSpeed$>% [Doubled during Windy weather]",
			Display = "Breezed",
			Luck = 50,
			Lure = 20,
			ProgressSpeed = 10,
			RelicGroup = "Default",
			CanSelectFromAdmin = true,
			Color = Color3.fromRGB(188, 208, 255),
			StrokeColor = Color3.fromRGB(28, 30, 36),
			ConditionalBoosts = function(p3, _) --[[ ConditionalBoosts ]] -- line: 627
				-- upvalues: ReplicatedStorage (copy)
				if ReplicatedStorage.world.weather.Value == "Windy" then
					return {
						Luck = p3.Luck * 2,
						Lure = p3.Lure * 2,
						ProgressSpeed = p3.ProgressSpeed * 2
					}
				end
			end
		},
		Insight = {
			Description = "<$XpMultiply$>× XP after catching a fish, Lure Speed increased by <$Lure$>%, & grants a <$Mutations.1.Chance$>% chance to Purify caught fish",
			Display = "Insight",
			XpMultiply = 1.5,
			Lure = 30,
			RelicGroup = "Default",
			CanSelectFromAdmin = true,
			Color = Color3.fromRGB(128, 255, 114),
			StrokeColor = Color3.fromRGB(29, 36, 27),
			Mutations = {{
				Name = "Purified",
				Chance = 30
			}}
		},
		Clever = {
			Description = "<$XpMultiply$>× XP after catching a fish",
			Display = "Clever",
			XpMultiply = 2.25,
			RelicGroup = "Default",
			CanSelectFromAdmin = true,
			Color = Color3.fromRGB(255, 110, 166),
			StrokeColor = Color3.fromRGB(36, 18, 24)
		},
		Noir = {
			Description = "Caught fish will be Albino or Darkened, with a <$WeightBoost$>% size boost",
			Display = "Noir",
			WeightBoost = 20,
			RelicGroup = "Default",
			CanSelectFromAdmin = true,
			Color = Color3.fromRGB(255, 255, 255),
			StrokeColor = Color3.fromRGB(0, 0, 0),
			Mutations = {
				{
					Name = "Albino",
					Chance = 50
				},
				{
					Name = "Darkened",
					Chance = 50
				}
			}
		},
		Hasty = {
			Description = "Increases Lure Speed by <$Lure$>%",
			Display = "Hasty",
			Lure = 55,
			RelicGroup = "Default",
			CanSelectFromAdmin = true,
			Color = Color3.fromRGB(229, 209, 92),
			StrokeColor = Color3.fromRGB(50, 42, 12)
		},
		Quality = {
			Description = "Increases Luck by <$Luck$>%, Resilience by <$Resilience$>%, Lure Speed by <$Lure$>%, & Progress Speed by <$ProgressSpeed$>%",
			Display = "Quality",
			Luck = 20,
			Lure = 20,
			ProgressSpeed = 5,
			Resilience = 10,
			RelicGroup = "Default",
			CanSelectFromAdmin = true,
			Color = Color3.fromRGB(158, 255, 55),
			StrokeColor = Color3.fromRGB(56, 90, 19)
		},
		Abyssal = {
			Description = "Caught fish have a <$Mutations.1.Chance$>% chance to be <$Mutations.1.Name$>, & a chance to be larger, or a low chance to be notably smaller",
			Display = "Abyssal",
			WeightBoost = 30,
			RelicGroup = "Default",
			CanSelectFromAdmin = true,
			Color = Color3.fromRGB(39, 57, 173),
			StrokeColor = Color3.fromRGB(83, 41, 173),
			Mutations = {{
				Name = "Abyssal",
				Chance = 20
			}},
			ConditionalBoosts = function(_, _) --[[ ConditionalBoosts ]] -- line: 732
				if math.random() <= 0.2 then
					return {
						WeightBoost = -40
					}
				end
			end
		},
		Herculean = {
			Description = "Increases Strength by <$Strength$>kg, Control by <$Control$>, & Progress Speed by <$ProgressSpeed$>%",
			Display = "Herculean",
			Strength = 25000,
			ProgressSpeed = 10,
			Control = 0.2,
			RelicGroup = "Exalted",
			CanSelectFromAdmin = true,
			Color = Color3.fromRGB(255, 234, 0),
			StrokeColor = Color3.fromRGB(48, 43, 0)
		},
		Mystical = {
			Description = "Increases Luck by <$Luck$>%, Resilience by <$Resilience$>%, Lure Speed by <$Lure$>%, & Progress Speed by <$ProgressSpeed$>%",
			Display = "Mystical",
			Luck = 25,
			Lure = 15,
			ProgressSpeed = 10,
			Resilience = 45,
			RelicGroup = "Exalted",
			CanSelectFromAdmin = true,
			Color = Color3.fromRGB(194, 223, 255),
			StrokeColor = Color3.fromRGB(43, 50, 57)
		},
		Quantum = {
			Description = "Caught fish have a <$Mutations.1.Chance$>% chance to be <$Mutations.1.Name$>, & increased Resilience by <$Resilience$>%; Increases with Perfect Cast",
			Display = "Quantum",
			Resilience = 15,
			RelicGroup = "Exalted",
			CanSelectFromAdmin = true,
			Color = Color3.fromRGB(255, 0, 179),
			StrokeColor = Color3.fromRGB(49, 0, 36),
			Mutations = {{
				Name = "Subspace",
				Chance = 25
			}},
			FishingPassives = {
				Quantum = {
					MUTATION = "Subspace",
					PERFECT_CAST_PROGRESS_BONUS = 10,
					PERFECT_CAST_MUTATION_CHANCE_BONUS = 10
				}
			}
		},
		Invincible = {
			Description = "Grants infinite Strength and +<$Durability$> Durability",
			Display = "Invincible",
			Strength = 1e999,
			Durability = 200,
			Secondary = true,
			RelicGroup = "Invincible",
			CanSelectFromAdmin = true,
			Color = Color3.fromRGB(255, 98, 25),
			StrokeColor = Color3.fromRGB(35, 13, 3)
		},
		Piercing = {
			Description = "Rod has a chance to stab fish while reeling, & increases Progress Speed by <$ProgressSpeed$>%",
			Display = "Piercing",
			ProgressSpeed = 15,
			RelicGroup = "Exalted",
			CanSelectFromAdmin = true,
			Color = Color3.fromRGB(13, 167, 141),
			StrokeColor = Color3.fromRGB(3, 40, 33),
			ClientFishingPassives = {
				Generic_Slashes = {
					TriggerMode = "FishMove",
					SlashChance = 30,
					SlashDamage = 6,
					StunTime = 0.35,
					SourceType = "enchant",
					SourceName = "Piercing",
					SoundName = "stabbystab",
					IconName = "Default",
					IconColor = Color3.fromRGB(13, 167, 141),
					GradientColor = Color3.fromRGB(13, 167, 141)
				}
			}
		},
		Anomalous = {
			Description = "Caught fish have a <$FishingPassives.Generic_DuplicateFish.DuplicateChance$>% chance to be duplicated & <$FishingPassives.Generic_DuplicateFish.DuplicateMutation$>",
			Display = "Anomalous",
			RelicGroup = "Exalted",
			CanSelectFromAdmin = true,
			Color = Color3.fromRGB(255, 29, 29),
			StrokeColor = Color3.fromRGB(35, 4, 4),
			FishingPassives = {
				Generic_DuplicateFish = {
					DuplicateChance = 20,
					DuplicateMutation = "Anomalous"
				}
			}
		},
		["Sea Overlord"] = {
			Description = "Makes fish <$WeightBoost$>% bigger",
			Display = "Sea Overlord",
			WeightBoost = 40,
			RelicGroup = "Exalted",
			CanSelectFromAdmin = true,
			Color = Color3.fromRGB(51, 168, 211),
			StrokeColor = Color3.fromRGB(9, 29, 35)
		},
		Immortal = {
			Description = "Increases Luck by <$Luck$>%, & Progress Speed by <$ProgressSpeed$>%",
			Display = "Immortal",
			Luck = 75,
			ProgressSpeed = 30,
			RelicGroup = "Exalted",
			CanSelectFromAdmin = true,
			Color = Color3.fromRGB(232, 217, 255),
			StrokeColor = Color3.fromRGB(69, 65, 76)
		},
		Flashline = {
			Description = "A small chance of majorly boosted Progress Speed",
			Display = "Flashline",
			ProgressSpeed = 15,
			RelicGroup = "Default",
			CanSelectFromAdmin = true,
			Color = Color3.fromRGB(255, 255, 255),
			StrokeColor = Color3.fromRGB(49, 49, 49),
			ConditionalBoosts = function(_, _) --[[ ConditionalBoosts ]] -- line: 887
				if math.random(1, 4) == 1 then
					return {
						ProgressSpeed = 100
					}
				end
			end
		},
		Scavenger = {
			Description = "Raised chances for utility catches",
			Display = "Scavenger",
			Scavenging = 200,
			RelicGroup = "Default",
			CanSelectFromAdmin = true,
			Color = Color3.fromRGB(255, 191, 102),
			StrokeColor = Color3.fromRGB(56, 39, 13),
			FishingPassives = {
				Generic_BoostFishChances = {
					Multiply = {
						["Exalted Relic"] = 1.75,
						["Enchant Relic"] = 3
					}
				}
			}
		},
		Chaotic = {
			Description = "Unleash pure chaos with every cast. Slashes fish with an <$Mutations.1.Chance$>% chance to awaken the <$Mutations.1.Name$> mutation",
			ForceStroke = true,
			Display = "Chaotic",
			RelicGroup = "Default",
			CanSelectFromAdmin = true,
			Color = Color3.fromRGB(20, 19, 22),
			StrokeColor = Color3.fromRGB(255, 255, 255),
			ClientFishingPassives = {
				Generic_Slashes = {
					TriggerMode = "FishMove",
					SlashChance = 15,
					SlashDamage = 6,
					StunTime = 0.35,
					SourceType = "enchant",
					SourceName = "Chaotic",
					SoundName = "stabbystab",
					IconName = "Default",
					IconColor = Color3.fromRGB(255, 255, 255),
					GradientColor = Color3.fromRGB(20, 19, 22)
				}
			},
			Mutations = {{
				Name = "Chaotic",
				Chance = 12
			}}
		},
		["Blood Reckoning"] = {
			Description = "Sacrifice health for a health-dependent chance to apply the Sanguine mutation",
			ForceStroke = true,
			Display = "Blood Reckoning",
			RelicGroup = "Default",
			CanSelectFromAdmin = true,
			Color = Color3.fromRGB(74, 8, 8),
			StrokeColor = Color3.fromRGB(163, 17, 17),
			FishingPassives = {
				BloodReckoning = {
					HealthCost = 20,
					HealthChanceRatio = 1,
					MutationName = "Sanguine"
				}
			}
		},
		Chronos = {
			Description = "Occasionally freeze fish in place",
			Display = "Chronos",
			RelicGroup = "Default",
			CanSelectFromAdmin = true,
			Color = Color3.fromRGB(29, 84, 211),
			StrokeColor = Color3.fromRGB(11, 13, 35),
			ClientFishingPassives = {
				Chronos = {
					FreezeChance = 50,
					FreezeCooldown = 2.5,
					FreezeDuration = 3
				}
			}
		},
		Momentum = {
			Description = "Perfect Catches increase Lure, Resilience & Progress Speed incrementally",
			Display = "Momentum",
			ProgressSpeed = 0,
			RelicGroup = "Default",
			CanSelectFromAdmin = true,
			Color = Color3.fromRGB(211, 179, 128),
			StrokeColor = Color3.fromRGB(35, 27, 18),
			FishingPassives = {
				MomentumEnchant = {
					AttributeName = "CurrentMomentumBoost",
					BoostPerStack = 2,
					ReducePerImperfect = 4,
					MaxBoost = 40
				}
			},
			ConditionalBoosts = function(_, p10) --[[ ConditionalBoosts ]] -- line: 1011
				return {
					ProgressSpeed = p10:GetAttribute("CurrentMomentumBoost") or 0,
					Lure = p10:GetAttribute("CurrentMomentumBoost") or 0,
					Resilience = p10:GetAttribute("CurrentMomentumBoost") or 0
				}
			end
		},
		Vicious = {
			Description = "Increases Disturbance by +<$Disturbance$>, & increases Progress Speed by <$ProgressSpeed$>%",
			Display = "Vicious",
			Disturbance = 1,
			ProgressSpeed = 10,
			Secondary = true,
			RelicGroup = "Cosmic",
			CanSelectFromAdmin = true,
			Color = Color3.fromRGB(255, 103, 76),
			StrokeColor = Color3.fromRGB(71, 29, 21)
		},
		Overclocked = {
			Description = "Increases Progress Speed by <$ForcedProgressSpeed$>% for any fish",
			Display = "Overclocked",
			ForcedProgressSpeed = 5,
			Secondary = true,
			RelicGroup = "Cosmic",
			CanSelectFromAdmin = true,
			Color = Color3.fromRGB(0, 255, 204),
			StrokeColor = Color3.fromRGB(11, 35, 28)
		},
		Tenacity = {
			Description = "Increases Progress Speed by 20% for every reel snapped in a row",
			Display = "Tenacity",
			Secondary = true,
			RelicGroup = "Cosmic",
			CanSelectFromAdmin = true,
			Color = Color3.fromRGB(255, 248, 171),
			StrokeColor = Color3.fromRGB(71, 70, 54),
			FishingPassives = {
				TenacityEnchant = {
					AttributeName = "TenacityBoost",
					BoostPerStack = 20,
					MaxBoost = 1e999
				}
			},
			ConditionalBoosts = function(_, p12) --[[ ConditionalBoosts ]] -- line: 1066
				return {
					ProgressSpeed = p12:GetAttribute("TenacityBoost")
				}
			end
		},
		Tryhard = {
			Description = "Increases Progress Speed by <$ProgressSpeed$>%, Increases Strength by <$Strength$>kg, & decreases Control by <$Control$>",
			Display = "Tryhard",
			Control = -0.1,
			ProgressSpeed = 30,
			Strength = 50000,
			Secondary = true,
			RelicGroup = "Cosmic",
			CanSelectFromAdmin = true,
			Color = Color3.fromRGB(255, 0, 0),
			StrokeColor = Color3.fromRGB(49, 35, 35)
		},
		Wise = {
			Description = "<$XpMultiply$>× XP after catching a fish",
			Display = "Wise",
			XpMultiply = 1.2,
			Secondary = true,
			RelicGroup = "Cosmic",
			CanSelectFromAdmin = true,
			Color = Color3.fromRGB(200, 105, 255),
			StrokeColor = Color3.fromRGB(42, 36, 49)
		},
		Cryogenic = {
			Description = "<$ClientFishingPassives.Cryogenic.FreezeChance$>% chance to fully freeze a lured fish",
			Display = "Cryogenic",
			Secondary = true,
			RelicGroup = "Cosmic",
			CanSelectFromAdmin = true,
			Color = Color3.fromRGB(148, 235, 255),
			StrokeColor = Color3.fromRGB(21, 43, 49),
			ClientFishingPassives = {
				Cryogenic = {
					AttemptDelay = 1,
					FreezeChance = 20,
					FreezeDuration = 1e999
				}
			}
		},
		["Sea Prince"] = {
			Description = "Makes fish <$WeightBoost$>% bigger",
			Display = "Sea Prince",
			WeightBoost = 15,
			Secondary = true,
			RelicGroup = "Cosmic",
			CanSelectFromAdmin = true,
			Color = Color3.fromRGB(84, 118, 211),
			StrokeColor = Color3.fromRGB(18, 23, 35)
		},
		Glittered = {
			Description = "Increases Shiny & Sparkling chances by <$ShinyChance$>%",
			Display = "Glittered",
			ShinyChance = 3,
			SparklingChance = 3,
			Secondary = true,
			RelicGroup = "Cosmic",
			CanSelectFromAdmin = true,
			Color = Color3.fromRGB(255, 241, 160),
			StrokeColor = Color3.fromRGB(42, 42, 29)
		},
		Weak = {
			Description = "Decreased Strength by <$StrengthPercent$>%",
			Display = "Weak",
			StrengthPercent = -10,
			RelicGroup = "Twisted",
			CanSelectFromAdmin = true,
			Color = Color3.fromRGB(134, 134, 134),
			StrokeColor = Color3.fromRGB(9, 9, 9)
		},
		Putrid = {
			Description = "Decreased Luck by <$Luck$>%",
			Display = "Putrid",
			Luck = -10,
			RelicGroup = "Twisted",
			CanSelectFromAdmin = true,
			Color = Color3.fromRGB(67, 88, 49),
			StrokeColor = Color3.fromRGB(9, 12, 7),
			Mutations = {{
				Name = "Putrid",
				Chance = 2
			}}
		},
		["Pharaohs Curse"] = {
			Description = "Caught fish have a <$Mutations.1.Chance$>% chance to be <$Mutations.1.Name$>",
			Display = "Pharaohs Curse",
			RelicGroup = "Twisted",
			CanSelectFromAdmin = true,
			Color = Color3.fromRGB(156, 139, 105),
			StrokeColor = Color3.fromRGB(40, 36, 27),
			Mutations = {{
				Name = "Sandy",
				Chance = 25
			}}
		},
		Wobbly = {
			Description = "Decreases Control by <$Control$>",
			Display = "Wobbly",
			Control = -0.05,
			RelicGroup = "Twisted",
			CanSelectFromAdmin = true,
			Color = Color3.fromRGB(86, 91, 112),
			StrokeColor = Color3.fromRGB(20, 21, 24)
		},
		Restricted = {
			Description = "Can only be used under specific conditions until relevant quest(s) are completed",
			Display = "Restricted",
			RelicGroup = "None",
			CanSelectFromAdmin = false,
			Color = Color3.fromRGB(255, 28, 62),
			StrokeColor = Color3.fromRGB(53, 9, 18),
			FishingPassives = {
				Restricted = {
					["Pinion's Aria"] = {
						BlockMessage = "Your Pinion's Aria can only fish at Crystal Cove and certain Hunts. Complete the Songstress' quests to unlock it fully!",
						AllowedZones = {
							"Crystal Cove",
							"Forsaken Veil - Scylla",
							"Megalodon Default",
							"Megalodon Ancient",
							"The Sanctum Hunt",
							"The Sanctum Profane Hunt",
							"Skeletal Leviathan Hunt",
							"Colossal Ethereal Dragon",
							"Colossal Blue Dragon",
							"Colossal Ancient Dragon"
						}
					},
					Remembrance = {
						BlockMessage = "Your Remembrance can only catch fish at the Living Garden while Restricted. Complete Luneth's quests to unlock it fully!",
						AllowMutations = true,
						AllowedZones = { "Living Garden" }
					},
					Castbound = {
						BlockMessage = "Your Castbound can only fish in Shimmer while Restricted. Complete the Guide's quests to unlock it fully!",
						AllowMutations = false,
						AllowedZones = { "Shimmer" }
					},
					Lullaby = {
						AllowHunts = true,
						BlockMessage = "Your Lullaby can only catch fish in Hunts while Restricted. Complete the \"Encore\" quest to unlock it fully!"
					},
					Acidgrinder = {
						BlockMessage = "Your Acidgrinder can only fish in the Brine Pool while Restricted. Complete Axel's quests to unlock it fully!",
						AllowMutations = true,
						AllowedZones = {
							"Brine Storm",
							"Brine Pool Water"
						}
					}
				}
			}
		},
		["Steady Crown"] = {
			Description = "Increases Resilience by +<$Resilience$>%, Control by +<$Control$>, and Progress Speed by +<$ProgressSpeed$>%",
			Display = "Steady Crown",
			Resilience = 25,
			Control = 0.1,
			ProgressSpeed = 25,
			Keeperbound = true,
			RelicGroup = "KeeperEnchant",
			CanSelectFromAdmin = false,
			Color = Color3.fromRGB(229, 207, 191),
			ColorGradient = ColorSequence.new(Color3.fromRGB(229, 195, 184), Color3.fromRGB(255, 249, 210)),
			StrokeColor = Color3.fromRGB(20, 21, 24)
		},
		["Stonewake Crown"] = {
			Description = "Increases Resilience by +<$Resilience$>%, Fish Weight by +<$WeightBoost$>%, and stops fish movement frequently",
			Display = "Stonewake Crown",
			Resilience = 35,
			WeightBoost = 20,
			Keeperbound = true,
			RelicGroup = "KeeperEnchant",
			CanSelectFromAdmin = false,
			Color = Color3.fromRGB(170, 170, 170),
			ColorGradient = ColorSequence.new(Color3.fromRGB(153, 153, 153), Color3.fromRGB(211, 206, 174)),
			StrokeColor = Color3.fromRGB(20, 21, 24),
			ClientFishingPassives = {
				Chronos = {
					FreezeChance = 100,
					FreezeCooldown = 4,
					FreezeDuration = 1
				}
			}
		},
		["Glimmering Crown"] = {
			Description = "Increases Shiny & Sparkling chance by +<$ShinyChance$>%, and all Mutation chances by <$MutationChanceBoost$>%",
			Display = "Glimmering Crown",
			ShinyChance = 10,
			SparklingChance = 10,
			MutationChanceBoost = 20,
			Keeperbound = true,
			RelicGroup = "KeeperEnchant",
			CanSelectFromAdmin = false,
			Color = Color3.fromRGB(255, 241, 160),
			ColorGradient = ColorSequence.new(Color3.fromRGB(255, 202, 225), Color3.fromRGB(255, 241, 160)),
			StrokeColor = Color3.fromRGB(20, 21, 24)
		},
		["Immortal Might"] = {
			Description = "Increases Luck by +<$Luck$>%, Lure Speed by +<$Lure$>%, and Progress Speed by +<$ProgressSpeed$>%",
			Display = "Immortal Might",
			Luck = 90,
			Lure = 30,
			ProgressSpeed = 35,
			Keeperbound = true,
			RelicGroup = "KeeperExalted",
			CanSelectFromAdmin = false,
			Color = Color3.fromRGB(255, 180, 181),
			ColorGradient = ColorSequence.new(Color3.fromRGB(229, 195, 184), Color3.fromRGB(255, 180, 181)),
			StrokeColor = Color3.fromRGB(20, 21, 24)
		},
		["Magnitude Might"] = {
			Description = "Increases Fish Weight by +<$WeightBoost$>%, Control by +<$Control$>, and Resilience by +<$Resilience$>%",
			Display = "Magnitude Might",
			WeightBoost = 25,
			Control = 0.25,
			Resilience = 35,
			Keeperbound = true,
			RelicGroup = "KeeperExalted",
			CanSelectFromAdmin = false,
			Color = Color3.fromRGB(255, 168, 125),
			ColorGradient = ColorSequence.new(Color3.fromRGB(255, 168, 125), Color3.fromRGB(203, 143, 255)),
			StrokeColor = Color3.fromRGB(20, 21, 24)
		},
		["Swift Might"] = {
			Description = "Increases Lure Speed by +<$Lure$>%, Progress Speed by +<$ProgressSpeed$>%, and Forced Progress Speed by +<$ForcedProgressSpeed$>%",
			Display = "Swift Might",
			Lure = 55,
			ProgressSpeed = 50,
			ForcedProgressSpeed = 10,
			Keeperbound = true,
			RelicGroup = "KeeperExalted",
			CanSelectFromAdmin = false,
			Color = Color3.fromRGB(170, 188, 255),
			ColorGradient = ColorSequence.new(Color3.fromRGB(170, 188, 255), Color3.fromRGB(203, 143, 255)),
			StrokeColor = Color3.fromRGB(20, 21, 24)
		},
		["Menacing Spirit"] = {
			Description = "Increases Disturbance by +<$Disturbance$>, Progress Speed by +<$ProgressSpeed$>%, and frequently Slashes",
			Display = "Menacing Spirit",
			Disturbance = 7,
			ProgressSpeed = 20,
			Keeperbound = true,
			RelicGroup = "KeeperCosmic",
			CanSelectFromAdmin = false,
			Color = Color3.fromRGB(255, 116, 118),
			ColorGradient = ColorSequence.new(Color3.fromRGB(255, 171, 75), Color3.fromRGB(255, 116, 118)),
			StrokeColor = Color3.fromRGB(20, 21, 24),
			ClientFishingPassives = {
				Generic_Slashes = {
					TriggerMode = "FishMove",
					SlashChance = 30,
					SlashDamage = 6,
					StunTime = 0.35,
					SourceType = "enchant",
					SourceName = "Menacing Might",
					SoundName = "stabbystab",
					IconName = "Default",
					IconColor = Color3.fromRGB(255, 116, 118),
					GradientColor = Color3.fromRGB(255, 116, 118)
				}
			},
			ConditionalBoosts = function(t1: {[any]: any}, _, n1: number?) --[[ ConditionalBoosts ]] -- line: 1427
				t1.ClientFishingPassives.Generic_Slashes.SlashChance = 30 * (n1 or 1)
				t1.ClientFishingPassives.Generic_Slashes.SlashDamage = 6 * (n1 or 1)
			end
		},
		["Starforged Spirit"] = {
			Description = "Increases Resilience by +<$Resilience$>%, Forced Progress Speed by +<$ForcedProgressSpeed$>%, and Fish Weight by +<$WeightBoost$>%",
			Display = "Starforged Spirit",
			Resilience = 15,
			ForcedProgressSpeed = 5,
			WeightBoost = 65,
			Keeperbound = true,
			RelicGroup = "KeeperCosmic",
			CanSelectFromAdmin = false,
			Color = Color3.fromRGB(194, 170, 229),
			ColorGradient = ColorSequence.new(Color3.fromRGB(194, 170, 229), Color3.fromRGB(255, 180, 181)),
			StrokeColor = Color3.fromRGB(20, 21, 24)
		},
		["Propensity Spirit"] = {
			Description = "<$ClientFishingPassives.Cryogenic.FreezeChance$>% to freeze a lured fish, <$FishingPassives.Generic_DuplicateFish.DuplicateChance$>% chance to duplicate caught fish with the <$FishingPassives.Generic_DuplicateFish.DuplicateMutation$> mutation, and periodic slashes",
			Display = "Propensity Spirit",
			Keeperbound = true,
			RelicGroup = "KeeperCosmic",
			CanSelectFromAdmin = false,
			Color = Color3.fromRGB(255, 147, 181),
			ColorGradient = ColorSequence.new(Color3.fromRGB(255, 147, 181), Color3.fromRGB(203, 143, 255)),
			StrokeColor = Color3.fromRGB(20, 21, 24),
			FishingPassives = {
				Generic_DuplicateFish = {
					DuplicateChance = 15,
					DuplicateMutation = "Sovereign"
				}
			},
			ClientFishingPassives = {
				Cryogenic = {
					AttemptDelay = 1,
					FreezeChance = 15,
					FreezeDuration = 1e999
				},
				Generic_Slashes = {
					TriggerMode = "Interval",
					SlashChance = 35,
					SlashDamage = 5,
					SlashInterval = 0.8,
					StunTime = 0.2,
					SourceType = "enchant",
					SourceName = "Propensity Spirit",
					SoundName = "stabbystab",
					IconName = "Default",
					IconColor = Color3.fromRGB(255, 147, 181),
					GradientColor = Color3.fromRGB(255, 147, 181)
				}
			},
			ConditionalBoosts = function(t2: {[any]: any}, _, n2: number?) --[[ ConditionalBoosts ]] -- line: 1496
				t2.ClientFishingPassives.Cryogenic.FreezeChance = 15 * (n2 or 1)
				t2.ClientFishingPassives.Generic_Slashes.SlashChance = 35 * (n2 or 1)
				t2.ClientFishingPassives.Generic_Slashes.SlashDamage = 5 * (n2 or 1)
				t2.FishingPassives.Generic_DuplicateFish.DuplicateChance = 15 * (n2 or 1)
			end
		},
		Sanctified = {
			Description = "Increases Progress Speed by <$ProgressSpeed$>% and True Progress Speed by <$TrueProgressSpeed$>%",
			ForceStroke = true,
			Display = "Sanctified",
			ProgressSpeed = 10,
			TrueProgressSpeed = 10,
			KeeperboundAffix = true,
			RelicGroup = "SongOfTheDeep",
			CanSelectFromAdmin = false,
			Color = Color3.fromRGB(0, 37, 83),
			StrokeColor = Color3.fromRGB(114, 201, 255)
		},
		Unshakeable = {
			Description = "Grants infinite Strength and +<$Durability$> Durability",
			ForceStroke = true,
			Display = "Unshakeable",
			Strength = 1e999,
			Durability = 200,
			KeeperboundAffix = true,
			RelicGroup = "Invincible",
			CanSelectFromAdmin = false,
			Color = Color3.fromRGB(35, 13, 3),
			StrokeColor = Color3.fromRGB(255, 98, 25)
		},
		Twisted = {
			Description = "Increases Progress Speed by +<$ProgressSpeed$>%, but reduces Control by <$Control$>",
			ForceStroke = true,
			Display = "Twisted",
			Control = -0.1,
			ProgressSpeed = 30,
			KeeperboundAffix = true,
			RelicGroup = "Twisted",
			CanSelectFromAdmin = false,
			Color = Color3.fromRGB(30, 0, 76),
			StrokeColor = Color3.fromRGB(151, 119, 255)
		},
		["Bygone Spooky"] = {
			Description = "<$Mutations.1.Chance$>% chance for <$Mutations.1.Name$> mutation",
			ForceStroke = true,
			Display = "Spooky",
			KeeperboundAffix = true,
			RelicGroup = "Spooky",
			CanSelectFromAdmin = false,
			Color = Color3.fromRGB(48, 33, 18),
			StrokeColor = Color3.fromRGB(255, 177, 98),
			Mutations = {{
				Name = "Spooky",
				Chance = 10
			}}
		},
		["Bygone Frightful"] = {
			Description = "<$Mutations.1.Chance$>% chance for <$Mutations.1.Name$> mutation",
			ForceStroke = true,
			Display = "Frightful",
			KeeperboundAffix = true,
			RelicGroup = "Frightful",
			CanSelectFromAdmin = false,
			Color = Color3.fromRGB(44, 37, 50),
			StrokeColor = Color3.fromRGB(163, 139, 220),
			Mutations = {{
				Name = "Frightful",
				Chance = 10
			}}
		},
		["Bygone Eerie"] = {
			Description = "<$Mutations.1.Chance$>% chance for <$Mutations.1.Name$> mutation",
			ForceStroke = true,
			Display = "Eerie",
			KeeperboundAffix = true,
			RelicGroup = "Eerie",
			CanSelectFromAdmin = false,
			Color = Color3.fromRGB(19, 59, 29),
			StrokeColor = Color3.fromRGB(102, 255, 138),
			Mutations = {{
				Name = "Eerie",
				Chance = 10
			}}
		},
		["Bygone Festive"] = {
			Description = "10% chance for <$Mutations.1.Name$>, <$Mutations.2.Name$>, or <$Mutations.3.Name$> mutation",
			ForceStroke = true,
			Display = "Festive",
			KeeperboundAffix = true,
			RelicGroup = "Festive",
			CanSelectFromAdmin = false,
			Color = Color3.fromRGB(42, 10, 10),
			StrokeColor = Color3.fromRGB(255, 147, 147),
			Mutations = {
				{
					Name = "Merry",
					Chance = 3.3333333333333335
				},
				{
					Name = "Peppermint",
					Chance = 3.3333333333333335
				},
				{
					Name = "Gingerbread",
					Chance = 3.3333333333333335
				}
			}
		},
		["Bygone Santa"] = {
			Description = "10% chance for <$Mutations.1.Name$>, <$Mutations.2.Name$>, <$Mutations.3.Name$>, <$Mutations.4.Name$>, or <$Mutations.5.Name$> mutation",
			ForceStroke = true,
			Display = "Santa",
			KeeperboundAffix = true,
			RelicGroup = "Santa",
			CanSelectFromAdmin = false,
			Color = Color3.fromRGB(42, 10, 10),
			StrokeColor = Color3.fromRGB(231, 0, 0),
			Mutations = {
				{
					Name = "Santa",
					Chance = 2
				},
				{
					Name = "Jingle Bell",
					Chance = 2
				},
				{
					Name = "Merry",
					Chance = 2
				},
				{
					Name = "Peppermint",
					Chance = 2
				},
				{
					Name = "Gingerbread",
					Chance = 2
				}
			}
		},
		["Bygone Cupid"] = {
			Description = "10% chance for <$Mutations.1.Name$> mutation",
			ForceStroke = true,
			Display = "Cupid",
			KeeperboundAffix = true,
			RelicGroup = "Cupid",
			CanSelectFromAdmin = false,
			Color = Color3.fromRGB(45, 5, 43),
			StrokeColor = Color3.fromRGB(226, 175, 231),
			Mutations = {{
				Name = "Sweet",
				Chance = 10
			}}
		},
		["Bygone Valentine's"] = {
			Description = "10% chance for <$Mutations.1.Name$>, <$Mutations.2.Name$>, or <$Mutations.3.Name$> mutation",
			ForceStroke = true,
			Display = "Valentine's",
			KeeperboundAffix = true,
			RelicGroup = "Valentine",
			CanSelectFromAdmin = false,
			Color = Color3.fromRGB(45, 23, 36),
			StrokeColor = Color3.fromRGB(255, 193, 226),
			Mutations = {
				{
					Name = "Sweet",
					Chance = 3.3333333333333335
				},
				{
					Name = "Lovely",
					Chance = 3.3333333333333335
				},
				{
					Name = "Candy",
					Chance = 3.3333333333333335
				}
			}
		}
	},
}
