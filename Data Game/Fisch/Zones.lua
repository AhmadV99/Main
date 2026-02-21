
local ReplicatedStorage = game:GetService("ReplicatedStorage")

return {
    ["DevTest"] = {
        ["Pool"] = {},
        ["CantBeWormholed"] = true,
        ["Priority"] = 2
    },
    ["Above the Clouds"] = {
        ["Pool"] = {},
        ["CantBeWormholed"] = true,
        ["Priority"] = 1,
        ["RarityLuckFactorBoosts"] = {
            ["Mythical"] = 0.5,
            ["Exotic"] = 0.5,
            ["Secret"] = 0.5
        },
        ["CustomCondition"] = function(_, arg1, _): boolean --[[ Name: CustomCondition ]] --[[ Line: 41 ]]
            local AboveTheClouds = arg1.Data.NewFormat.TimeTrials.AboveTheClouds
            if AboveTheClouds and (AboveTheClouds.CompleteCount and AboveTheClouds.CompleteCount >= 1) then
                return true;
            else
                return false, "You must complete the gliding challenge before fishing here.";
            end;
        end
    },
    ["Skeletal Leviathan Hunt"] = {
        ["Pool"] = {},
        ["Priority"] = 5,
        ["CantBeWormholed"] = true,
        ["RequiredDurability"] = 100
    },
    ["Scoria Reach"] = {
        ["Pool"] = {},
        ["Priority"] = 2,
        ["RequiredDurability"] = 100
    },
    ["Scoria Reach 2"] = {
        ["Pool"] = {},
        ["Priority"] = 3,
        ["RequiredDurability"] = 200
    },
    ["Scoria Reach Volcano"] = {
        ["Pool"] = {},
        ["Disturbs"] = "SkeletalLeviathanHunt",
        ["Priority"] = 4,
        ["RequiredDurability"] = 100
    },
    ["Scoria Reach Molten Serpent"] = {
        ["Pool"] = {},
        ["Priority"] = 3,
        ["RequiredDurability"] = 100
    },
    ["Scoria Reach Cindercoil Eel"] = {
        ["Pool"] = {},
        ["Priority"] = 3,
        ["RequiredDurability"] = 100
    },
    ["Scoria Reach Infernal Isonade"] = {
        ["Pool"] = {},
        ["Priority"] = 3,
        ["RequiredDurability"] = 100
    },
    ["Scoria Reach Crag-Crab"] = {
        ["Pool"] = {},
        ["Priority"] = 3,
        ["RequiredDurability"] = 100
    },
    ["Streamer Hideout"] = {
        ["Pool"] = {},
        ["Priority"] = 2,
        ["CantBeWormholed"] = true
    },
    ["Sweet Stream"] = {
        ["Pool"] = {},
        ["Priority"] = 2,
        ["CantBeWormholed"] = true
    },
    ["Sweetheart Shores"] = {
        ["Pool"] = {},
        ["Priority"] = 1,
        ["CantBeWormholed"] = true,
        ["RarityBaseChanceBoosts"] = {
            ["Common"] = 0.3,
            ["Rare"] = 0.5
        }
    },
    ["Sweetheart Shores Waterfall"] = {
        ["Pool"] = {},
        ["Priority"] = 2,
        ["CantBeWormholed"] = true,
        ["RarityBaseChanceBoosts"] = {
            ["Common"] = 0.3,
            ["Rare"] = 0.5
        }
    },
    ["Sweetheart Shores Pond"] = {
        ["Pool"] = {},
        ["Priority"] = 2,
        ["CantBeWormholed"] = true,
        ["RarityBaseChanceBoosts"] = {
            ["Common"] = 0.3,
            ["Rare"] = 0.5
        }
    },
    ["Sweetheart Shores Well"] = {
        ["Pool"] = {},
        ["Priority"] = 2,
        ["CantBeWormholed"] = true
    },
    ["Lovestorm"] = {
        ["Pool"] = {},
        ["Priority"] = 100,
        ["CantBeWormholed"] = true,
        ["RarityBaseChanceBoosts"] = {
            ["Trash"] = 0.1,
            ["Common"] = 0.3,
            ["Rare"] = 0.5
        }
    },
    ["Supercharged Lovestorm"] = {
        ["Pool"] = {},
        ["Priority"] = 101,
        ["CantBeWormholed"] = true,
        ["RarityBaseChanceBoosts"] = {
            ["Trash"] = 0.1,
            ["Common"] = 0.3,
            ["Rare"] = 0.5
        }
    },
    ["Sacred Lovestorm"] = {
        ["Pool"] = {},
        ["Priority"] = 102,
        ["CantBeWormholed"] = true,
        ["RarityBaseChanceBoosts"] = {
            ["Trash"] = 0.1,
            ["Common"] = 0.3,
            ["Rare"] = 0.5
        }
    },
    ["Tidefall"] = {
        ["Pool"] = {},
        ["CantBeWormholed"] = false,
        ["Priority"] = 1
    },
    ["Tidefall Castle"] = {
        ["Pool"] = {},
        ["CantBeWormholed"] = true,
        ["Priority"] = 1,
        ["Disturbs"] = "Plesiosaur",
        ["CustomCondition"] = function(_, arg2): boolean --[[ Name: CustomCondition ]] --[[ Line: 603 ]]
            if arg2.Data.NewFormat.Tidefall.Obelisks.GateOpen then
                return true;
            else
                return false, "You have not yet unlocked this area.";
            end;
        end
    },
    ["Coral Bastion"] = {
        ["Pool"] = {},
        ["CantBeWormholed"] = false,
        ["Priority"] = 2
    },
    ["Sunken Reliquary"] = {
        ["Pool"] = {},
        ["Disturbs"] = "Omnithal",
        ["CantBeWormholed"] = false,
        ["Priority"] = 2
    },
    ["Collapsed Ruins"] = {
        ["Pool"] = {},
        ["Disturbs"] = "Pliosaur",
        ["CantBeWormholed"] = false,
        ["Priority"] = 2
    },
    ["Crowned Ruins"] = {
        ["Pool"] = {},
        ["Disturbs"] = "Goldwraith",
        ["CantBeWormholed"] = false,
        ["Priority"] = 3
    },
    ["Plesiosaur Hunt"] = {
        ["Pool"] = {},
        ["Priority"] = 4,
        ["CantBeWormholed"] = true,
        ["CustomCondition"] = function(_, arg3): boolean --[[ Name: CustomCondition ]] --[[ Line: 740 ]]
            if arg3.Data.NewFormat.Tidefall.Obelisks.GateOpen then
                return true;
            else
                return false, "You have not yet unlocked this area.";
            end;
        end
    },
    ["Reef Titan Hunt"] = {
        ["Pool"] = {},
        ["Priority"] = 4,
        ["CantBeWormholed"] = true
    },
    ["Omnithal Hunt"] = {
        ["Pool"] = {},
        ["Priority"] = 4,
        ["CantBeWormholed"] = true
    },
    ["Pliosaur Hunt"] = {
        ["Pool"] = {},
        ["Priority"] = 4,
        ["CantBeWormholed"] = true
    },
    ["Goldwraith Hunt"] = {
        ["Pool"] = {},
        ["Priority"] = 4,
        ["CantBeWormholed"] = true
    },
    ["New Years"] = {
        ["Pool"] = {},
        ["CantBeWormholed"] = true,
        ["Priority"] = 5
    },
    ["Glacial Ridge"] = {
        ["Pool"] = {},
        ["Priority"] = 104,
        ["CantBeWormholed"] = true
    },
    ["Northstar Village"] = {
        ["Pool"] = {},
        ["Priority"] = 105,
        ["CantBeWormholed"] = true
    },
    ["Cryoshock Serpent"] = {
        ["ExclusiveRods"] = {},
        ["Pool"] = {},
        ["Priority"] = 106,
        ["CantBeWormholed"] = true,
        ["CustomCondition"] = function(arg4, _, arg5): boolean --[[ Name: CustomCondition ]] --[[ Line: 991 ]]
            --[[ Upvalues: (copy 1): ReplicatedStorage ]]
            if not arg4:GetAttribute("CanCatchCryoshock") or ReplicatedStorage.world.weather.Value ~= "Frost_Moon" then
                return false, "You have not yet awakened the serpent.";
            end;

            local v1 = arg5:FindFirstChild("Stats")
            if v1 then
                v1 = v1:FindFirstChild("rod")
            end;

            if not v1 then
                return false, "Your rod lacks the magic of Fischmas...";
            end;

            local v2 = arg5:WaitForChild("Rods"):FindFirstChild(v1.Value)
            if not v2 then
                return false, "Your rod lacks the magic of Fischmas...";
            end;

            if v2.Value == "Merry" or v2.Value == "Gingerbread" then
                return true;
            end;

            if v2:FindFirstChild("secondaryEnchant") and v2.secondaryEnchant.Value == "Peppermint" then
                return true;
            else
                return false, "Your rod lacks the magic of Fischmas...";
            end;
        end
    },
    ["MapleMeadows"] = {
        ["Pool"] = {},
        ["CantBeWormholed"] = true,
        ["Priority"] = 2
    },
    ["HallOfWhispers"] = {
        ["Pool"] = {},
        ["CantBeWormholed"] = true,
        ["Priority"] = 2,
        ["CustomCondition"] = function(_, arg6): boolean --[[ Name: CustomCondition ]] --[[ Line: 1084 ]]
            if arg6.Data.NewFormat.TerrapinExpansion.HasUnlockedInitialHiddenArea then
                return true;
            else
                return false, "The fish ignore you completely... Maybe it\'s best to get here <b>normally</b>.";
            end;
        end
    },
    ["PassageOfOaths"] = {
        ["Pool"] = {},
        ["CantBeWormholed"] = true,
        ["Priority"] = 2,
        ["CustomCondition"] = function(_, arg7): boolean --[[ Name: CustomCondition ]] --[[ Line: 1110 ]]
            for _, v3 in arg7.Data.NewFormat.TerrapinExpansion.HallOfWhispers.PassageRequirements do
                if not v3 then
                    return false, "The fish ignore you completely... Maybe it\'s best to get here <b>normally</b>.";
                end;
            end;

            return true;
        end
    },
    ["MossjawHunt"] = {
        ["Pool"] = {},
        ["CantBeWormholed"] = true,
        ["Priority"] = 4,
        ["CustomCondition"] = function(_, arg8): boolean --[[ Name: CustomCondition ]] --[[ Line: 1134 ]]
            local n_v_0 = 0
            for _, v4 in arg8.Data.NewFormat.LostJungle.Runes.Placed do
                if v4 then
                    n_v_0 += 1
                end;
            end;

            if n_v_0 < 5 then
                return false, "You must place all 5 runes before fishing here.";
            else
                return true;
            end;
        end
    },
    ["Frostwyrm Hunt"] = {
        ["Pool"] = {},
        ["Priority"] = 4,
        ["CantBeWormholed"] = true,
        ["CustomCondition"] = function(_, _): boolean --[[ Name: CustomCondition ]] --[[ Line: 1163 ]]
            return true;
        end
    },
    ["Boreal Pines"] = {
        ["Pool"] = {},
        ["CantBeWormholed"] = false,
        ["Priority"] = 1
    },
    ["Boreal Pines - Ice Fishing"] = {
        ["Pool"] = {},
        ["CantBeWormholed"] = false,
        ["Priority"] = 2
    },
    ["Boreal Pines - Cave"] = {
        ["Pool"] = {},
        ["Disturbs"] = "FrostwyrmHunt",
        ["CantBeWormholed"] = false,
        ["Priority"] = 2
    },
    ["Boreal Pines - Peak"] = {
        ["Pool"] = {},
        ["CantBeWormholed"] = false,
        ["Priority"] = 2
    },
    ["Luminescent Cavern"] = {
        ["Pool"] = {},
        ["CantBeWormholed"] = false,
        ["Priority"] = 2,
        ["Disturbs"] = "ColossalEtherealDragon"
    },
    ["Lost Jungle"] = {
        ["Pool"] = {},
        ["CantBeWormholed"] = false,
        ["Priority"] = 2
    },
    ["Mossjaw Rest"] = {
        ["Pool"] = {},
        ["Disturbs"] = "MossjawHunt",
        ["CantBeWormholed"] = false,
        ["Priority"] = 3
    },
    ["Crimson Cavern"] = {
        ["Pool"] = {},
        ["CantBeWormholed"] = false,
        ["Priority"] = 2,
        ["Disturbs"] = "ColossalAncientDragon",
        ["CustomCondition"] = function(_, arg9): boolean --[[ Name: CustomCondition ]] --[[ Line: 1316 ]]
            if arg9.Data.NewFormat.LuminescentCavern.KeystoneData.CrimsonCavernUnlocked then
                return true;
            else
                return false, "You must unlock the Crimson Cavern before fishing here.";
            end;
        end
    },
    ["Cultist Lair"] = {
        ["Pool"] = {},
        ["CantBeWormholed"] = false,
        ["Priority"] = 2,
        ["CustomCondition"] = function(_, arg10): boolean --[[ Name: CustomCondition ]] --[[ Line: 1346 ]]
            if arg10.Data.NewFormat.TerrapinExpansion.HasUnlockedInitialHiddenArea then
                return true;
            else
                return false, "The fish ignore you completely... Maybe it\'s best to get here <b>normally</b>.";
            end;
        end
    },
    ["Hall of Whispers"] = {
        ["Pool"] = {},
        ["CantBeWormholed"] = false,
        ["Priority"] = 2,
        ["CustomCondition"] = function(_, arg11): boolean --[[ Name: CustomCondition ]] --[[ Line: 1372 ]]
            if arg11.Data.NewFormat.TerrapinExpansion.HasUnlockedInitialHiddenArea then
                return true;
            else
                return false, "The fish ignore you completely... Maybe it\'s best to get here <b>normally</b>.";
            end;
        end
    },
    ["Passage of Oaths"] = {
        ["Pool"] = {},
        ["CantBeWormholed"] = false,
        ["Priority"] = 2,
        ["CustomCondition"] = function(_, arg12): boolean --[[ Name: CustomCondition ]] --[[ Line: 1397 ]]
            for _, v5 in arg12.Data.NewFormat.TerrapinExpansion.HallOfWhispers.PassageRequirements do
                if not v5 then
                    return false, "The fish ignore you completely... Maybe it\'s best to get here <b>normally</b>.";
                end;
            end;

            return true;
        end
    },
    ["The Sanctum"] = {
        ["Pool"] = {},
        ["CantBeWormholed"] = false,
        ["Priority"] = 2,
        ["Disturbs"] = "LeviathanHunt",
        ["CustomCondition"] = function(_, arg13): boolean --[[ Name: CustomCondition ]] --[[ Line: 1427 ]]
            if arg13.Data.NewFormat.TerrapinExpansion.UnlockedSanctum then
                return true;
            else
                return false, "The fish ignore you completely... Maybe it\'s best to get here <b>normally</b>.";
            end;
        end
    },
    ["The Sanctum Hunt"] = {
        ["Pool"] = {},
        ["CantBeWormholed"] = true,
        ["Priority"] = 3,
        ["CustomCondition"] = function(_, arg14): boolean --[[ Name: CustomCondition ]] --[[ Line: 1454 ]]
            if arg14.Data.NewFormat.TerrapinExpansion.UnlockedSanctum then
                return true;
            else
                return false, "The fish ignore you completely... Maybe it\'s best to get here <b>normally</b>.";
            end;
        end
    },
    ["The Sanctum Profane Hunt"] = {
        ["Pool"] = {},
        ["CantBeWormholed"] = true,
        ["Priority"] = 3,
        ["CustomCondition"] = function(_, arg15): boolean --[[ Name: CustomCondition ]] --[[ Line: 1481 ]]
            if arg15.Data.NewFormat.TerrapinExpansion.UnlockedSanctum then
                return true;
            else
                return false, "The fish ignore you completely... Maybe it\'s best to get here <b>normally</b>.";
            end;
        end
    },
    ["Carrot Garden"] = {
        ["Pool"] = {},
        ["Priority"] = 102,
        ["CantBeWormholed"] = false
    },
    ["AFK Pool - Trading Plaza"] = {
        ["Pool"] = {},
        ["CantBeWormholed"] = true,
        ["Priority"] = 3,
        ["CustomCondition"] = function(_, _, arg16): boolean --[[ Name: CustomCondition ]] --[[ Line: 1535 ]]
            if arg16 then
                arg16 = arg16:FindFirstChild("Stats")
            end;

            if arg16 and (arg16:FindFirstChild("realLevel") and arg16.realLevel.Value >= 25) then
                return true;
            else
                return false, "You must reach Level 25 before fishing here.";
            end;
        end
    },
    ["Gilded Arch"] = {
        ["Pool"] = {},
        ["CantBeWormholed"] = true,
        ["Priority"] = 2
    },
    ["Castaway Cliffs"] = {
        ["Pool"] = {},
        ["CantBeWormholed"] = false,
        ["Priority"] = 2
    },
    ["Magician Narwhal - Sea 2"] = {
        ["Pool"] = {},
        ["CantBeWormholed"] = true,
        ["Priority"] = 5
    },
    ["Magician Narwhal - Sea 1"] = {
        ["Pool"] = {},
        ["CantBeWormholed"] = true,
        ["Priority"] = 5
    },
    ["Beluga - Sea 2"] = {
        ["Pool"] = {},
        ["CantBeWormholed"] = true,
        ["Priority"] = 5
    },
    ["Beluga - Sea 1"] = {
        ["Pool"] = {},
        ["CantBeWormholed"] = true,
        ["Priority"] = 5
    },
    ["Narwhal - Sea 2"] = {
        ["Pool"] = {},
        ["CantBeWormholed"] = true,
        ["Priority"] = 5
    },
    ["Narwhal - Sea 1"] = {
        ["Pool"] = {},
        ["CantBeWormholed"] = true,
        ["Priority"] = 5
    },
    ["Apex Leviathan"] = {
        ["Pool"] = {},
        ["CantBeWormholed"] = true,
        ["Priority"] = 5
    },
    ["Mosslurker"] = {
        ["Pool"] = {},
        ["CantBeWormholed"] = true,
        ["Priority"] = 5
    },
    ["Bloop Fish"] = {
        ["Pool"] = {},
        ["CantBeWormholed"] = true,
        ["Priority"] = 5
    },
    ["Baby Bloop Fish"] = {
        ["Pool"] = {},
        ["CantBeWormholed"] = true,
        ["Priority"] = 4
    },
    ["Colossal Ethereal Dragon"] = {
        ["Pool"] = {},
        ["CantBeWormholed"] = true,
        ["Priority"] = 3
    },
    ["Colossal Blue Dragon"] = {
        ["Pool"] = {},
        ["CantBeWormholed"] = true,
        ["Priority"] = 3
    },
    ["Colossal Ancient Dragon"] = {
        ["Pool"] = {},
        ["CantBeWormholed"] = true,
        ["Priority"] = 3,
        ["CustomCondition"] = function(_, arg17): boolean --[[ Name: CustomCondition ]] --[[ Line: 2133 ]]
            if arg17.Data.NewFormat.LuminescentCavern.KeystoneData.CrimsonCavernUnlocked then
                return true;
            else
                return false, "You must unlock the Crimson Cavern before fishing here.";
            end;
        end
    },
    ["Animal Pool"] = {
        ["Pool"] = {},
        ["Priority"] = 102,
        ["CantBeWormholed"] = true
    },
    ["Animal Pool - Second Sea"] = {
        ["Pool"] = {},
        ["Priority"] = 102,
        ["CantBeWormholed"] = true
    },
    ["Octophant Pool Without Elephant"] = {
        ["Pool"] = {},
        ["Priority"] = 4,
        ["CantBeWormholed"] = true
    },
    ["Octophant Pool With Elephant"] = {
        ["Pool"] = {},
        ["Priority"] = 4,
        ["CantBeWormholed"] = true
    },
    ["Sea Leviathan Pool"] = {
        ["Pool"] = {},
        ["Priority"] = 4,
        ["CantBeWormholed"] = true
    },
    ["Smurf Pool"] = {
        ["ExclusiveRods"] = {},
        ["Pool"] = {},
        ["CantBeWormholed"] = true
    },
    ["Smurf Storm Pool"] = {
        ["ExclusiveRods"] = {},
        ["Pool"] = {},
        ["CantBeWormholed"] = true
    },
    ["Sunny O\'Coin"] = {
        ["Pool"] = {},
        ["CantBeWormholed"] = true,
        ["Priority"] = 5
    },
    ["Rowdy McCharm"] = {
        ["Pool"] = {},
        ["CantBeWormholed"] = true,
        ["Priority"] = 5
    },
    ["Plumrick O\'Luck"] = {
        ["Pool"] = {},
        ["CantBeWormholed"] = true,
        ["Priority"] = 5
    },
    ["O\'Mango Goldgrin"] = {
        ["Pool"] = {},
        ["CantBeWormholed"] = true,
        ["Priority"] = 5
    },
    ["Clover McRich"] = {
        ["Pool"] = {},
        ["CantBeWormholed"] = true,
        ["Priority"] = 5
    },
    ["Blarney McBreeze"] = {
        ["Pool"] = {},
        ["CantBeWormholed"] = true,
        ["Priority"] = 5
    },
    ["Ashfall Pool"] = {
        ["Pool"] = {},
        ["CantBeWormholed"] = true,
        ["Priority"] = 1
    },
    ["Cults Curse Pool"] = {
        ["Pool"] = {},
        ["CantBeWormholed"] = true,
        ["Priority"] = 1
    },
    ["Ancient Orcas Pool"] = {
        ["Pool"] = {},
        ["CantBeWormholed"] = true,
        ["Priority"] = 4
    },
    ["Orcas Pool"] = {
        ["Pool"] = {},
        ["CantBeWormholed"] = true,
        ["Priority"] = 4
    },
    ["Whales Pool"] = {
        ["Pool"] = {},
        ["Priority"] = 4,
        ["CantBeWormholed"] = true
    },
    ["Notes Island Pool"] = {
        ["Pool"] = {},
        ["CantBeWormholed"] = true,
        ["Priority"] = 4
    },
    ["Atlantean Storm"] = {
        ["Pool"] = {},
        ["Priority"] = 4
    },
    ["The Depths - Serpent"] = {
        ["Pool"] = {},
        ["Priority"] = 2,
        ["Disturbs"] = "MoonlitMirage",
        ["CustomCondition"] = function(_, _, arg18): boolean --[[ Name: CustomCondition ]] --[[ Line: 2925 ]]
            if arg18:FindFirstChild("Cache") and arg18.Cache:FindFirstChild("Door.TheDepthsGate") then
                return true;
            else
                return false, "You must unlock the gate to The Depths before fishing here.";
            end;
        end
    },
    ["The Depths"] = {
        ["Pool"] = {},
        ["Priority"] = 1,
        ["Disturbs"] = "DepthsAbsoluteDarkness",
        ["CustomCondition"] = function(_, _, arg19): boolean --[[ Name: CustomCondition ]] --[[ Line: 2967 ]]
            if arg19:FindFirstChild("Cache") and arg19.Cache:FindFirstChild("Door.TheDepthsGate") then
                return true;
            else
                return false, "You must unlock the gate to The Depths before fishing here.";
            end;
        end
    },
    ["Crystal Cove"] = {
        ["Pool"] = {},
        ["Priority"] = 1,
        ["CustomCondition"] = function(_, _, arg20): boolean --[[ Name: CustomCondition ]] --[[ Line: 3002 ]]
            if arg20:FindFirstChild("Cache") and arg20.Cache:FindFirstChild("Door.TheDepthsGate") then
                return true;
            else
                return false, "You must unlock the gate to The Depths before fishing here.";
            end;
        end
    },
    ["Fischfest"] = {
        ["Pool"] = {},
        ["Priority"] = 1,
        ["CantBeWormholed"] = true
    },
    ["Ocean Greedy"] = {
        ["Pool"] = {},
        ["Priority"] = 4,
        ["CantBeWormholed"] = true
    },
    ["Ocean"] = {
        ["Pool"] = {},
        ["Priority"] = 0
    },
    ["Deep Ocean"] = {
        ["Pool"] = {},
        ["Priority"] = 1
    },
    ["Earthquake"] = {
        ["Pool"] = {},
        ["Priority"] = 0,
        ["CantBeWormholed"] = true
    },
    ["Atlantis Ocean"] = {
        ["Pool"] = {},
        ["Priority"] = 1,
        ["CantBeWormholed"] = true
    },
    ["Grand Reef"] = {
        ["Pool"] = {},
        ["Priority"] = 3
    },
    ["Forsaken Shores"] = {
        ["Pool"] = {},
        ["Priority"] = 1
    },
    ["Forsaken Shores Ocean"] = {
        ["Pool"] = {},
        ["Priority"] = 2
    },
    ["Forsaken Shores Pond"] = {
        ["Pool"] = {},
        ["Priority"] = 3
    },
    ["Moosewood Ocean"] = {
        ["Pool"] = {},
        ["Priority"] = 1
    },
    ["Moosewood Ocean Mythical"] = {
        ["Pool"] = {},
        ["Priority"] = 4
    },
    ["Moosewood Docks"] = {
        ["Pool"] = {},
        ["Priority"] = 2
    },
    ["Moosewood Pond"] = {
        ["Pool"] = {},
        ["Priority"] = 2
    },
    ["Lava"] = {
        ["Pool"] = {},
        ["Priority"] = 2,
        ["RequiredDurability"] = 100
    },
    ["Eruption"] = {
        ["Pool"] = {},
        ["Priority"] = 3,
        ["CantBeWormholed"] = true,
        ["RequiredDurability"] = 100
    },
    ["Roslit Pond"] = {
        ["Pool"] = {},
        ["Priority"] = 2
    },
    ["Roslit Pond Seaweed"] = {
        ["Pool"] = {},
        ["Priority"] = 3
    },
    ["Roslit Bay"] = {
        ["Pool"] = {},
        ["Priority"] = 3
    },
    ["Roslit Bay Alien"] = {
        ["Pool"] = {},
        ["Priority"] = 8000
    },
    ["Roslit Bay Ocean"] = {
        ["Pool"] = {},
        ["Priority"] = 2
    },
    ["Roslit Bay Clam"] = {
        ["Pool"] = {},
        ["Priority"] = 10000
    },
    ["Desolate Deep"] = {
        ["Pool"] = {},
        ["Priority"] = 2
    },
    ["Brine Storm"] = {
        ["Pool"] = {},
        ["Priority"] = 10,
        ["RequiredDurability"] = 200,
        ["CantBeWormholed"] = true
    },
    ["Brine Pool"] = {
        ["Pool"] = {},
        ["Disturbs"] = "BrineStorm",
        ["Priority"] = 2,
        ["RequiredDurability"] = 200
    },
    ["Brine Pool Water"] = {
        ["Pool"] = {},
        ["Disturbs"] = "BrineStorm",
        ["Priority"] = 2,
        ["RequiredDurability"] = 200,
        ["CantBeWormholed"] = true
    },
    ["Ancient Isle Ocean"] = {
        ["Pool"] = {},
        ["Disturbs"] = "MegHunt",
        ["Priority"] = 2,
        ["RarityLuckFactorBoosts"] = {
            ["Legendary"] = 1.5,
            ["Mythical"] = 2
        }
    },
    ["Ancient Isle Pond"] = {
        ["Pool"] = {},
        ["Priority"] = 3,
        ["RarityLuckFactorBoosts"] = {
            ["Legendary"] = 1.5,
            ["Mythical"] = 2
        }
    },
    ["Ancient Isle Waterfall"] = {
        ["Pool"] = {},
        ["Priority"] = 4,
        ["RarityLuckFactorBoosts"] = {
            ["Legendary"] = 1.5,
            ["Mythical"] = 2
        }
    },
    ["Ancient Archives"] = {
        ["Pool"] = {},
        ["Priority"] = 1
    },
    ["Terrapin Ocean"] = {
        ["Pool"] = {},
        ["Priority"] = 2
    },
    ["Terrapin Olm"] = {
        ["Pool"] = {},
        ["Priority"] = 3
    },
    ["Mushgrove Water"] = {
        ["Pool"] = {},
        ["Priority"] = 2
    },
    ["Vertigo"] = {
        ["Pool"] = {},
        ["Priority"] = 2
    },
    ["Snowcap Pond"] = {
        ["Pool"] = {},
        ["Priority"] = 2
    },
    ["Snowcap Ocean"] = {
        ["Pool"] = {},
        ["Priority"] = 2
    },
    ["Snowburrow"] = {
        ["Pool"] = {},
        ["Priority"] = 2
    },
    ["Sunstone"] = {
        ["Pool"] = {},
        ["Priority"] = 2
    },
    ["Mineshaft"] = {
        ["Pool"] = {},
        ["Priority"] = 3,
        ["CustomCondition"] = function(_, arg21): boolean --[[ Name: CustomCondition ]] --[[ Line: 4216 ]]
            if arg21.Data.NewFormat.SunstoneExpansion.MerlinQuestProgress < 3 then
                return false, "You must complete Merlin\'s quest before fishing here.";
            else
                return true;
            end;
        end
    },
    ["Sunstone Hidden"] = {
        ["Pool"] = {},
        ["Priority"] = 2
    },
    ["Keepers Altar"] = {
        ["Pool"] = {},
        ["Priority"] = 3
    },
    ["Harvesters Spike"] = {
        ["Pool"] = {},
        ["Priority"] = 3
    },
    ["The Arch"] = {
        ["Pool"] = {},
        ["Priority"] = 3
    },
    ["Scallop Ocean"] = {
        ["Pool"] = {},
        ["Priority"] = 3
    },
    ["Debug"] = {
        ["Pool"] = {},
        ["Priority"] = 10,
        ["CantBeWormholed"] = true
    },
    ["Relics"] = {
        ["Pool"] = {},
        ["Priority"] = 10,
        ["CantBeWormholed"] = true
    },
    ["ExaltedRelics"] = {
        ["Pool"] = {},
        ["Priority"] = 10,
        ["CantBeWormholed"] = true
    },
    ["CosmicRelic"] = {
        ["Pool"] = {},
        ["Priority"] = 100,
        ["CantBeWormholed"] = true
    },
    ["EmojiFish"] = {
        ["Pool"] = {},
        ["Priority"] = 10,
        ["CantBeWormholed"] = true
    },
    ["Him"] = {
        ["Pool"] = {},
        ["Priority"] = 1000,
        ["CantBeWormholed"] = true
    },
    ["Lovestorm Eel"] = {
        ["Pool"] = {},
        ["CantBeWormholed"] = true,
        ["Priority"] = 100
    },
    ["Lovestorm Eel Supercharged"] = {
        ["Pool"] = {},
        ["CantBeWormholed"] = true,
        ["Priority"] = 100
    },
    ["Birthday Megalodon"] = {
        ["Pool"] = {},
        ["CantBeWormholed"] = true,
        ["Priority"] = 100
    },
    ["BirthdayCake"] = {
        ["Pool"] = {},
        ["Priority"] = 101,
        ["CantBeWormholed"] = true,
        ["StartDate"] = DateTime.fromUniversalTime(2025, 10, 5, 18, 0, 0),
        ["InvalidDate"] = DateTime.fromUniversalTime(2025, 10, 6, 18, 0, 0)
    },
    ["BabysFirstBalloon"] = {
        ["Pool"] = {},
        ["Priority"] = 101,
        ["CantBeWormholed"] = true,
        ["StartDate"] = DateTime.fromUniversalTime(2025, 10, 5, 18, 0, 0),
        ["InvalidDate"] = DateTime.fromUniversalTime(2025, 10, 6, 18, 0, 0)
    },
    ["BirthdayGift"] = {
        ["Pool"] = {},
        ["Priority"] = 101,
        ["CantBeWormholed"] = true,
        ["StartDate"] = DateTime.fromUniversalTime(2025, 10, 5, 18, 0, 0),
        ["InvalidDate"] = DateTime.fromUniversalTime(2025, 10, 6, 18, 0, 0)
    },
    ["Megalodon Default"] = {
        ["Pool"] = {},
        ["CantBeWormholed"] = true,
        ["Priority"] = 100
    },
    ["Megalodon Ancient"] = {
        ["Pool"] = {},
        ["CantBeWormholed"] = true,
        ["Priority"] = 100
    },
    ["Great White Shark"] = {
        ["Pool"] = {},
        ["Priority"] = 100
    },
    ["Great Hammerhead Shark"] = {
        ["Pool"] = {},
        ["Priority"] = 100
    },
    ["Whale Shark"] = {
        ["Pool"] = {},
        ["Priority"] = 100
    },
    ["Isonade"] = {
        ["Pool"] = {},
        ["Priority"] = 101
    },
    ["FischFright24"] = {
        ["Pool"] = {},
        ["Priority"] = 102,
        ["CantBeWormholed"] = true
    },
    ["FischFright25"] = {
        ["Pool"] = {},
        ["Priority"] = 102,
        ["CantBeWormholed"] = true
    },
    ["FrightfulVillage"] = {
        ["Pool"] = {},
        ["Priority"] = 102,
        ["CantBeWormholed"] = true
    },
    ["NessieCatacomb"] = {
        ["Pool"] = {},
        ["Priority"] = 102,
        ["CantBeWormholed"] = true
    },
    ["Fischgiving"] = {
        ["Pool"] = {},
        ["Priority"] = 103,
        ["CantBeWormholed"] = true,
        ["InvalidDate"] = DateTime.fromUniversalTime(2024, 12, 7, 8)
    },
    ["SourGummy"] = {
        ["Pool"] = {},
        ["Priority"] = 110,
        ["CantBeWormholed"] = true,
        ["StartDate"] = DateTime.fromUniversalTime(2024, 11, 1, 16),
        ["InvalidDate"] = DateTime.fromUniversalTime(2025, 11, 1, 16)
    },
    ["Fischmas24"] = {
        ["Pool"] = {},
        ["Priority"] = 104,
        ["CantBeWormholed"] = true
    },
    ["Overgrowth Caves"] = {
        ["Pool"] = {},
        ["Priority"] = 2
    },
    ["Frigid Cavern"] = {
        ["Pool"] = {},
        ["Priority"] = 2
    },
    ["Cryogenic Canal"] = {
        ["Pool"] = {},
        ["Priority"] = 2
    },
    ["Glacial Grotto"] = {
        ["Pool"] = {},
        ["Priority"] = 2
    },
    ["The Summit Ocean"] = {
        ["Pool"] = {},
        ["Priority"] = 2,
        ["CantBeWormholed"] = true
    },
    ["Forsaken Algae Pool"] = {
        ["Pool"] = {},
        ["Priority"] = 100,
        ["CantBeWormholed"] = true
    },
    ["Ancient Algae Pool"] = {
        ["Pool"] = {},
        ["Priority"] = 100,
        ["CantBeWormholed"] = true
    },
    ["Mushgrove Algae Pool"] = {
        ["Pool"] = {},
        ["Priority"] = 100,
        ["CantBeWormholed"] = true
    },
    ["Snowcap Algae Pool"] = {
        ["Pool"] = {},
        ["Priority"] = 100,
        ["CantBeWormholed"] = true
    },
    ["Golden Tide"] = {
        ["Pool"] = {},
        ["Priority"] = 102,
        ["CantBeWormholed"] = true
    },
    ["Zeus Pool"] = {
        ["Pool"] = {},
        ["Disturbs"] = "KrakenHunt",
        ["Priority"] = 1,
        ["CustomCondition"] = function(_, _, arg22): boolean --[[ Name: CustomCondition ]] --[[ Line: 5366 ]]
            if arg22:FindFirstChild("Cache") and arg22.Cache:FindFirstChild("Door.ZeusPuzzleDoor") then
                return true;
            else
                return false, "You must complete the Zeus Trials before fishing here.";
            end;
        end
    },
    ["Poseidon Pool"] = {
        ["Pool"] = {},
        ["Disturbs"] = "KrakenHunt",
        ["Priority"] = 1,
        ["CustomCondition"] = function(_, _, arg23): boolean --[[ Name: CustomCondition ]] --[[ Line: 5418 ]]
            if arg23:FindFirstChild("Cache") and arg23.Cache:FindFirstChild("Door.PoseidonPuzzleDoor") then
                return true;
            else
                return false, "You must complete the Poseidon Trial before fishing here.";
            end;
        end
    },
    ["Sunken\'s Depth"] = {
        ["Pool"] = {},
        ["Disturbs"] = "KrakenHunt",
        ["Priority"] = 1,
        ["CustomCondition"] = function(_, _, arg24): boolean --[[ Name: CustomCondition ]] --[[ Line: 5475 ]]
            if arg24:FindFirstChild("Cache") and arg24.Cache:FindFirstChild("Door.SunkenDepthDoor") then
                return true;
            else
                return false, "You must unlock the Sunken Depths before fishing here.";
            end;
        end
    },
    ["Ethereal Abyss"] = {
        ["Pool"] = {},
        ["Disturbs"] = "KrakenHunt",
        ["Priority"] = 1,
        ["CustomCondition"] = function(_, _, arg25): boolean --[[ Name: CustomCondition ]] --[[ Line: 5532 ]]
            if arg25:FindFirstChild("Cache") and arg25.Cache:FindFirstChild("Door.EtherealAbyssDoor") then
                return true;
            else
                return false, "You must unlock the Ethereal Abyss before fishing here.";
            end;
        end
    },
    ["Kraken Pool"] = {
        ["Pool"] = {},
        ["Disturbs"] = "KrakenHunt",
        ["Priority"] = 1,
        ["CustomCondition"] = function(_, _, arg26): boolean --[[ Name: CustomCondition ]] --[[ Line: 5582 ]]
            if arg26:FindFirstChild("Cache") and arg26.Cache:FindFirstChild("Door.KrakenPuzzleDoor2") then
                return true;
            else
                return false, "You must unlock the Kraken Pool before fishing here.";
            end;
        end
    },
    ["The Kraken Pool"] = {
        ["Pool"] = {},
        ["CantBeWormholed"] = true,
        ["Priority"] = 1,
        ["CustomCondition"] = function(_, _, arg27): boolean --[[ Name: CustomCondition ]] --[[ Line: 5633 ]]
            if arg27:FindFirstChild("Cache") and arg27.Cache:FindFirstChild("Door.KrakenPuzzleDoor2") then
                return true;
            else
                return false, "You must unlock the Kraken Pool before fishing here.";
            end;
        end
    },
    ["Ancient Kraken Pool"] = {
        ["Pool"] = {},
        ["CantBeWormholed"] = true,
        ["Priority"] = 1,
        ["CustomCondition"] = function(_, _, arg28): boolean --[[ Name: CustomCondition ]] --[[ Line: 5684 ]]
            if arg28:FindFirstChild("Cache") and arg28.Cache:FindFirstChild("Door.KrakenPuzzleDoor2") then
                return true;
            else
                return false, "You must unlock the Kraken Pool before fishing here.";
            end;
        end
    },
    ["Volcanic Vents"] = {
        ["Pool"] = {},
        ["CantBeWormholed"] = false,
        ["Priority"] = 3,
        ["Disturbs"] = "ScyllaHunt"
    },
    ["Challengers Deep"] = {
        ["Pool"] = {},
        ["CantBeWormholed"] = false,
        ["Priority"] = 3,
        ["Disturbs"] = "ScyllaHunt"
    },
    ["Abyssal Zenith"] = {
        ["Pool"] = {},
        ["CantBeWormholed"] = false,
        ["Priority"] = 3,
        ["Disturbs"] = "ScyllaHunt"
    },
    ["Calm Zone"] = {
        ["Pool"] = {},
        ["CantBeWormholed"] = false,
        ["Priority"] = 3,
        ["Disturbs"] = "ScyllaHunt"
    },
    ["Forsaken Veil"] = {
        ["Pool"] = {},
        ["CantBeWormholed"] = false,
        ["Priority"] = 3,
        ["Disturbs"] = "ScyllaHunt",
        ["CustomCondition"] = function(_, _, arg29): boolean --[[ Name: CustomCondition ]] --[[ Line: 5820 ]]
            if arg29:FindFirstChild("Cache") and arg29.Cache:FindFirstChild("ScyllaBossfight") then
                return true;
            else
                return false, "You must complete the Scylla bossfight to fish here.";
            end;
        end
    },
    ["Forsaken Veil - Scylla"] = {
        ["Pool"] = {},
        ["CantBeWormholed"] = true,
        ["Priority"] = 4,
        ["CustomCondition"] = function(_, _, arg30): boolean --[[ Name: CustomCondition ]] --[[ Line: 5854 ]]
            if arg30:FindFirstChild("Cache") and arg30.Cache:FindFirstChild("ScyllaBossfight") then
                return true;
            else
                return false, "You must complete the Scylla bossfight to fish here.";
            end;
        end
    },
    ["Waveborne"] = {
        ["Pool"] = {},
        ["CantBeWormholed"] = true,
        ["Priority"] = 2
    },
    ["Pine Shoal"] = {
        ["Pool"] = {},
        ["CantBeWormholed"] = true,
        ["Priority"] = 2
    },
    ["Lushgrove"] = {
        ["Pool"] = {},
        ["CantBeWormholed"] = true,
        ["Priority"] = 2
    },
    ["Emberreach"] = {
        ["Pool"] = {},
        ["CantBeWormholed"] = true,
        ["Priority"] = 2
    },
    ["Emberreach Ponds"] = {
        ["Pool"] = {},
        ["CantBeWormholed"] = true,
        ["Priority"] = 3
    },
    ["Emberreach Lava"] = {
        ["Pool"] = {},
        ["CantBeWormholed"] = true,
        ["Priority"] = 3,
        ["RequiredDurability"] = 100
    },
    ["Isle of New Beginnings"] = {
        ["Pool"] = {},
        ["CantBeWormholed"] = true,
        ["Priority"] = 2
    },
    ["Cursed Isle"] = {
        ["Pool"] = {},
        ["CantBeWormholed"] = false,
        ["Priority"] = 2
    },
    ["Open Ocean"] = {
        ["Pool"] = {},
        ["CantBeWormholed"] = true,
        ["Priority"] = 0
    },
    ["Azure Lagoon"] = {
        ["Pool"] = {},
        ["CantBeWormholed"] = true,
        ["Priority"] = 2
    },
    ["Blue Moon - First Sea"] = {
        ["Pool"] = {},
        ["Priority"] = 3,
        ["CantBeWormholed"] = false,
        ["CustomCondition"] = function(_, _): boolean --[[ Name: CustomCondition ]] --[[ Line: 6147 ]]
            --[[ Upvalues: (copy 1): ReplicatedStorage ]]
            if ReplicatedStorage:GetAttribute("BlueMoonEvent") == true then
                return true;
            else
                return false, "<font color=\"#D20103\">You can only fish here during a Blue Moon event.</font>";
            end;
        end
    },
    ["Jurassic Island Pool"] = {
        ["ExclusiveRods"] = {},
        ["Pool"] = {},
        ["Priority"] = 6,
        ["CantBeWormholed"] = true
    },
    ["Jurassic Island Ocean Pool"] = {
        ["ExclusiveRods"] = {},
        ["Pool"] = {},
        ["Priority"] = 5,
        ["CantBeWormholed"] = true
    },
    ["LEGO"] = {
        ["ExclusiveRods"] = {},
        ["Pool"] = {},
        ["Priority"] = 5,
        ["CantBeWormholed"] = true
    },
    ["LEGO - Studolodon"] = {
        ["ExclusiveRods"] = {},
        ["Pool"] = {},
        ["Priority"] = 5,
        ["CantBeWormholed"] = true
    },
    ["Whale Interior"] = {
        ["Pool"] = {},
        ["CantBeWormholed"] = true,
        ["Priority"] = 2
    },
    ["Treasure Island"] = {
        ["Pool"] = {},
        ["CantBeWormholed"] = false,
        ["Priority"] = 2
    },
    ["Default"] = {
        ["Pool"] = {},
        ["CantBeWormholed"] = true,
        ["Priority"] = 2
    }
};
