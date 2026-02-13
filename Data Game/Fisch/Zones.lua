local s_ReplicatedStorage_0 = game:GetService("ReplicatedStorage")
return {
    ["DevTest"] = {
        ["Pool"] = {},
        ["CantBeWormholed"] = true,
        ["Priority"] = 2
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
        ["CustomCondition"] = function(_, p1) --[[ Name: CustomCondition ]] --[[ Line: 353 ]]
            if p1.Data.NewFormat.Tidefall.Obelisks.GateOpen then
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
        ["CustomCondition"] = function(_, p2) --[[ Name: CustomCondition ]] --[[ Line: 490 ]]
            if p2.Data.NewFormat.Tidefall.Obelisks.GateOpen then
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
        ["CustomCondition"] = function(p3, _, p4) --[[ Name: CustomCondition ]] --[[ Line: 741 ]]
            --[[ Upvalues: (copy 1): s_ReplicatedStorage_0 ]]
            if p3:GetAttribute("CanCatchCryoshock") and s_ReplicatedStorage_0.world.weather.Value == "Frost_Moon" then
                local v5 = p4:FindFirstChild("Stats")
                if v5 then
                    v5 = v5:FindFirstChild("rod")
                end;
                if v5 then
                    local v6 = p4:WaitForChild("Rods"):FindFirstChild(v5.Value)
                    if v6 then
                        if v6.Value == "Merry" or v6.Value == "Gingerbread" then
                            return true;
                        elseif v6:FindFirstChild("secondaryEnchant") and v6.secondaryEnchant.Value == "Peppermint" then
                            return true;
                        else
                            return false, "Your rod lacks the magic of Fischmas...";
                        end;
                    else
                        return false, "Your rod lacks the magic of Fischmas...";
                    end;
                else
                    return false, "Your rod lacks the magic of Fischmas...";
                end;
            else
                return false, "You have not yet awakened the serpent.";
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
        ["CustomCondition"] = function(_, p7) --[[ Name: CustomCondition ]] --[[ Line: 834 ]]
            if p7.Data.NewFormat.TerrapinExpansion.HasUnlockedInitialHiddenArea then
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
        ["CustomCondition"] = function(_, p8) --[[ Name: CustomCondition ]] --[[ Line: 860 ]]
            for _, v9 in p8.Data.NewFormat.TerrapinExpansion.HallOfWhispers.PassageRequirements do
                if not v9 then
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
        ["CustomCondition"] = function(_, p10) --[[ Name: CustomCondition ]] --[[ Line: 884 ]]
            local v11 = 0
            for _, v12 in p10.Data.NewFormat.LostJungle.Runes.Placed do
                if v12 then
                    v11 = v11 + 1
                end;
            end;
            if v11 < 5 then
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
        ["CustomCondition"] = function(_, _) --[[ Name: CustomCondition ]] --[[ Line: 913 ]]
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
        ["CustomCondition"] = function(_, p13) --[[ Name: CustomCondition ]] --[[ Line: 1066 ]]
            if p13.Data.NewFormat.LuminescentCavern.KeystoneData.CrimsonCavernUnlocked then
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
        ["CustomCondition"] = function(_, p14) --[[ Name: CustomCondition ]] --[[ Line: 1096 ]]
            if p14.Data.NewFormat.TerrapinExpansion.HasUnlockedInitialHiddenArea then
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
        ["CustomCondition"] = function(_, p15) --[[ Name: CustomCondition ]] --[[ Line: 1122 ]]
            if p15.Data.NewFormat.TerrapinExpansion.HasUnlockedInitialHiddenArea then
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
        ["CustomCondition"] = function(_, p16) --[[ Name: CustomCondition ]] --[[ Line: 1147 ]]
            for _, v17 in p16.Data.NewFormat.TerrapinExpansion.HallOfWhispers.PassageRequirements do
                if not v17 then
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
        ["CustomCondition"] = function(_, p18) --[[ Name: CustomCondition ]] --[[ Line: 1177 ]]
            if p18.Data.NewFormat.TerrapinExpansion.UnlockedSanctum then
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
        ["CustomCondition"] = function(_, p19) --[[ Name: CustomCondition ]] --[[ Line: 1204 ]]
            if p19.Data.NewFormat.TerrapinExpansion.UnlockedSanctum then
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
        ["CustomCondition"] = function(_, p20) --[[ Name: CustomCondition ]] --[[ Line: 1231 ]]
            if p20.Data.NewFormat.TerrapinExpansion.UnlockedSanctum then
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
        ["CustomCondition"] = function(_, _, p21) --[[ Name: CustomCondition ]] --[[ Line: 1285 ]]
            if p21 then
                p21 = p21:FindFirstChild("Stats")
            end;
            if p21 and (p21:FindFirstChild("realLevel") and p21.realLevel.Value >= 25) then
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
        ["CustomCondition"] = function(_, p22) --[[ Name: CustomCondition ]] --[[ Line: 1883 ]]
            if p22.Data.NewFormat.LuminescentCavern.KeystoneData.CrimsonCavernUnlocked then
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
        ["CustomCondition"] = function(_, _, p23) --[[ Name: CustomCondition ]] --[[ Line: 2675 ]]
            if p23:FindFirstChild("Cache") and p23.Cache:FindFirstChild("Door.TheDepthsGate") then
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
        ["CustomCondition"] = function(_, _, p24) --[[ Name: CustomCondition ]] --[[ Line: 2717 ]]
            if p24:FindFirstChild("Cache") and p24.Cache:FindFirstChild("Door.TheDepthsGate") then
                return true;
            else
                return false, "You must unlock the gate to The Depths before fishing here.";
            end;
        end
    },
    ["Crystal Cove"] = {
        ["Pool"] = {},
        ["Priority"] = 1,
        ["CustomCondition"] = function(_, _, p25) --[[ Name: CustomCondition ]] --[[ Line: 2752 ]]
            if p25:FindFirstChild("Cache") and p25.Cache:FindFirstChild("Door.TheDepthsGate") then
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
        ["CustomCondition"] = function(_, p26) --[[ Name: CustomCondition ]] --[[ Line: 3966 ]]
            if p26.Data.NewFormat.SunstoneExpansion.MerlinQuestProgress < 3 then
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
        ["CustomCondition"] = function(_, _, p27) --[[ Name: CustomCondition ]] --[[ Line: 5116 ]]
            if p27:FindFirstChild("Cache") and p27.Cache:FindFirstChild("Door.ZeusPuzzleDoor") then
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
        ["CustomCondition"] = function(_, _, p28) --[[ Name: CustomCondition ]] --[[ Line: 5168 ]]
            if p28:FindFirstChild("Cache") and p28.Cache:FindFirstChild("Door.PoseidonPuzzleDoor") then
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
        ["CustomCondition"] = function(_, _, p29) --[[ Name: CustomCondition ]] --[[ Line: 5225 ]]
            if p29:FindFirstChild("Cache") and p29.Cache:FindFirstChild("Door.SunkenDepthDoor") then
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
        ["CustomCondition"] = function(_, _, p30) --[[ Name: CustomCondition ]] --[[ Line: 5282 ]]
            if p30:FindFirstChild("Cache") and p30.Cache:FindFirstChild("Door.EtherealAbyssDoor") then
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
        ["CustomCondition"] = function(_, _, p31) --[[ Name: CustomCondition ]] --[[ Line: 5332 ]]
            if p31:FindFirstChild("Cache") and p31.Cache:FindFirstChild("Door.KrakenPuzzleDoor2") then
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
        ["CustomCondition"] = function(_, _, p32) --[[ Name: CustomCondition ]] --[[ Line: 5383 ]]
            if p32:FindFirstChild("Cache") and p32.Cache:FindFirstChild("Door.KrakenPuzzleDoor2") then
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
        ["CustomCondition"] = function(_, _, p33) --[[ Name: CustomCondition ]] --[[ Line: 5434 ]]
            if p33:FindFirstChild("Cache") and p33.Cache:FindFirstChild("Door.KrakenPuzzleDoor2") then
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
        ["CustomCondition"] = function(_, _, p34) --[[ Name: CustomCondition ]] --[[ Line: 5570 ]]
            if p34:FindFirstChild("Cache") and p34.Cache:FindFirstChild("ScyllaBossfight") then
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
        ["CustomCondition"] = function(_, _, p35) --[[ Name: CustomCondition ]] --[[ Line: 5604 ]]
            if p35:FindFirstChild("Cache") and p35.Cache:FindFirstChild("ScyllaBossfight") then
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
        ["CustomCondition"] = function(_, _) --[[ Name: CustomCondition ]] --[[ Line: 5897 ]]
            --[[ Upvalues: (copy 1): s_ReplicatedStorage_0 ]]
            if s_ReplicatedStorage_0:GetAttribute("BlueMoonEvent") == true then
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
