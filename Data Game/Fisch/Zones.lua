local v_u_1 = game:GetService("ReplicatedStorage")
local v26 = {
    ["DevTest"] = {
        ["Pool"] = { "Tartaruga" },
        ["CantBeWormholed"] = true,
        ["Priority"] = 2
    },
    ["Tidefall"] = {
        ["Pool"] = {
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
        ["CantBeWormholed"] = false,
        ["Priority"] = 1,
        ["Disturbs"] = "Plesiosaur"
    },
    ["Coral Bastion"] = {
        ["Pool"] = {
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
        ["CantBeWormholed"] = false,
        ["Priority"] = 2
    },
    ["Sunken Reliquary"] = {
        ["Pool"] = {
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
        ["Disturbs"] = "Omnithal",
        ["CantBeWormholed"] = false,
        ["Priority"] = 2
    },
    ["Collapsed Ruins"] = {
        ["Pool"] = {
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
        ["Disturbs"] = "Pliosaur",
        ["CantBeWormholed"] = false,
        ["Priority"] = 2
    },
    ["Crowned Ruins"] = {
        ["Pool"] = {
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
        ["Disturbs"] = "Goldwraith",
        ["CantBeWormholed"] = false,
        ["Priority"] = 3
    },
    ["Plesiosaur Hunt"] = {
        ["Pool"] = {
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
        ["Priority"] = 4,
        ["CantBeWormholed"] = true,
        ["CustomCondition"] = function(_, p2)
            if p2.Data.NewFormat.Tidefall.Obelisks.GateOpen then
                return true
            else
                return false, "You have not yet unlocked this area."
            end
        end
    },
    ["Reef Titan Hunt"] = {
        ["Pool"] = {
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
        ["Priority"] = 4,
        ["CantBeWormholed"] = true
    },
    ["Omnithal Hunt"] = {
        ["Pool"] = {
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
        ["Priority"] = 4,
        ["CantBeWormholed"] = true
    },
    ["Pliosaur Hunt"] = {
        ["Pool"] = {
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
        ["Priority"] = 4,
        ["CantBeWormholed"] = true
    },
    ["Goldwraith Hunt"] = {
        ["Pool"] = {
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
        ["Priority"] = 4,
        ["CantBeWormholed"] = true
    },
    ["New Years"] = {
        ["Pool"] = {
            "Eonshell",
            "Confetti Carp",
            "Party Pufferfish",
            "Party Popperfish",
            "Sparkler Sardine",
            "Sparkling Corkfin"
        },
        ["CantBeWormholed"] = true,
        ["Priority"] = 5
    },
    ["Glacial Ridge"] = {
        ["Pool"] = {
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
        ["Priority"] = 104,
        ["CantBeWormholed"] = true
    },
    ["Northstar Village"] = {
        ["Pool"] = {
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
            "Santa\'s Present",
            "Merry Manta Ray",
            "Santa Whale Shark",
            "Northstar Whale",
            "Festive Relic"
        },
        ["Priority"] = 105,
        ["CantBeWormholed"] = true
    },
    ["Cryoshock Serpent"] = {
        ["ExclusiveRods"] = {
            {
                "Christmas Tree Rod",
                "Gingerbread Rod",
                "Peppermint Rod",
                "Jinglestar Rod",
                "Santa\'s Miracle Rod",
                "Maelstrom",
                "Boreal Rod",
                "Cryolash",
                "North Pole",
                "Candy Cane Rod",
                "North-Star Rod",
                "Antler Rod",
                "Krampus\'s Rod",
                "Frost Warden Rod",
                "Fischmas Rod",
                "Frostfire Rod"
            },
            "Your rod lacks the magic of Fischmas..."
        },
        ["Pool"] = {
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
            "Santa\'s Present",
            "Merry Manta Ray",
            "Santa Whale Shark",
            "Northstar Whale",
            "Festive Relic",
            "Cryoshock Serpent"
        },
        ["Priority"] = 106,
        ["CantBeWormholed"] = true,
        ["CustomCondition"] = function(p3, _, p4)
            -- upvalues: (copy) v_u_1
            if p3:GetAttribute("CanCatchCryoshock") and v_u_1.world.weather.Value == "Frost_Moon" then
                local v5 = p4:FindFirstChild("Stats")
                if v5 then
                    v5 = v5:FindFirstChild("rod")
                end
                if v5 then
                    local v6 = p4:WaitForChild("Rods"):FindFirstChild(v5.Value)
                    if v6 then
                        if v6.Value == "Merry" or v6.Value == "Gingerbread" then
                            return true
                        elseif v6:FindFirstChild("secondaryEnchant") and v6.secondaryEnchant.Value == "Peppermint" then
                            return true
                        else
                            return false, "Your rod lacks the magic of Fischmas..."
                        end
                    else
                        return false, "Your rod lacks the magic of Fischmas..."
                    end
                else
                    return false, "Your rod lacks the magic of Fischmas..."
                end
            else
                return false, "You have not yet awakened the serpent."
            end
        end
    },
    ["MapleMeadows"] = {
        ["Pool"] = {
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
        ["CantBeWormholed"] = true,
        ["Priority"] = 2
    },
    ["HallOfWhispers"] = {
        ["Pool"] = {
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
        ["CantBeWormholed"] = true,
        ["Priority"] = 2,
        ["CustomCondition"] = function(_, p7)
            if p7.Data.NewFormat.TerrapinExpansion.HasUnlockedInitialHiddenArea then
                return true
            else
                return false, "The fish ignore you completely... Maybe it\'s best to get here <b>normally</b>."
            end
        end
    },
    ["PassageOfOaths"] = {
        ["Pool"] = {
            "Rock",
            "Destroyed Fossil",
            "Bone",
            "Stalactite",
            "Sloane\'s Viperfish",
            "Spiny Hatchetfish",
            "Swampfish",
            "Garra Typhlops",
            "Abyssal Grenadier",
            "Cathulith"
        },
        ["CantBeWormholed"] = true,
        ["Priority"] = 2,
        ["CustomCondition"] = function(_, p8)
            for _, v9 in p8.Data.NewFormat.TerrapinExpansion.HallOfWhispers.PassageRequirements do
                if not v9 then
                    return false, "The fish ignore you completely... Maybe it\'s best to get here <b>normally</b>."
                end
            end
            return true
        end
    },
    ["MossjawHunt"] = {
        ["Pool"] = {
            "Bronze Corydoras",
            "Neon Tetra",
            "Cardinal Tetra",
            "Redeye Piranha",
            "Black Ghost Knifefish",
            "Electric Eel",
            "Pirarucu"
        },
        ["CantBeWormholed"] = true,
        ["Priority"] = 2,
        ["CustomCondition"] = function(_, p10)
            local v11 = 0
            for _, v12 in p10.Data.NewFormat.LostJungle.Runes.Placed do
                if v12 then
                    v11 = v11 + 1
                end
            end
            if v11 < 5 then
                return false, "You must place all 5 runes before fishing here."
            else
                return true
            end
        end
    },
    ["Frostwyrm Hunt"] = {
        ["Pool"] = {
            "Ice",
            "Bone",
            "Stalactite",
            "Antarctic Icefish",
            "Saffron Cod",
            "Greenland Halibut",
            "Glacial Squid"
        },
        ["Priority"] = 4,
        ["CantBeWormholed"] = true,
        ["CustomCondition"] = function(_, _)
            return true
        end
    },
    ["Boreal Pines"] = {
        ["Pool"] = {
            "Ice",
            "Antarctic Icefish",
            "Saffron Cod",
            "Greenland Halibut"
        },
        ["CantBeWormholed"] = false,
        ["Priority"] = 1
    },
    ["Boreal Pines - Ice Fishing"] = {
        ["Pool"] = {
            "Ice",
            "Antarctic Icefish",
            "Saffron Cod",
            "Greenland Halibut",
            "Eelpout",
            "Fourhorn Sculpin"
        },
        ["CantBeWormholed"] = false,
        ["Priority"] = 2
    },
    ["Boreal Pines - Cave"] = {
        ["Pool"] = {
            "Ice",
            "Bone",
            "Stalactite",
            "Antarctic Icefish",
            "Saffron Cod",
            "Greenland Halibut",
            "Glacial Squid"
        },
        ["Disturbs"] = "FrostwyrmHunt",
        ["CantBeWormholed"] = false,
        ["Priority"] = 2
    },
    ["Boreal Pines - Peak"] = {
        ["Pool"] = {
            "Ice",
            "Antarctic Icefish",
            "Polar Cod",
            "Saffron Cod",
            "Greenland Halibut",
            "Lake Whitefish"
        },
        ["CantBeWormholed"] = false,
        ["Priority"] = 2
    },
    ["Luminescent Cavern"] = {
        ["Pool"] = {
            "Rock",
            "Stalactite",
            "Hawaiian Bobtail Squid",
            "Blue Ribbon Eel",
            "Bluelip Batfish",
            "Kitefin Shark",
            "Atolla Jellyfish"
        },
        ["CantBeWormholed"] = false,
        ["Priority"] = 2,
        ["Disturbs"] = "ColossalEtherealDragon"
    },
    ["Lost Jungle"] = {
        ["Pool"] = {
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
        ["Disturbs"] = "MossjawHunt",
        ["CantBeWormholed"] = false,
        ["Priority"] = 2
    },
    ["Crimson Cavern"] = {
        ["Pool"] = {
            "Rock",
            "Stalactite",
            "Sea Raven",
            "Red Fangtooth",
            "Viperfish",
            "Japanese Dragon Eel",
            "Vampire Squid"
        },
        ["CantBeWormholed"] = false,
        ["Priority"] = 2,
        ["Disturbs"] = "ColossalAncientDragon",
        ["CustomCondition"] = function(_, p13)
            if p13.Data.NewFormat.LuminescentCavern.KeystoneData.CrimsonCavernUnlocked then
                return true
            else
                return false, "You must unlock the Crimson Cavern before fishing here."
            end
        end
    },
    ["Cultist Lair"] = {
        ["Pool"] = {
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
        ["CantBeWormholed"] = false,
        ["Priority"] = 2,
        ["CustomCondition"] = function(_, p14)
            if p14.Data.NewFormat.TerrapinExpansion.HasUnlockedInitialHiddenArea then
                return true
            else
                return false, "The fish ignore you completely... Maybe it\'s best to get here <b>normally</b>."
            end
        end
    },
    ["Hall of Whispers"] = {
        ["Pool"] = {
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
        ["CantBeWormholed"] = false,
        ["Priority"] = 2,
        ["CustomCondition"] = function(_, p15)
            if p15.Data.NewFormat.TerrapinExpansion.HasUnlockedInitialHiddenArea then
                return true
            else
                return false, "The fish ignore you completely... Maybe it\'s best to get here <b>normally</b>."
            end
        end
    },
    ["Passage of Oaths"] = {
        ["Pool"] = {
            "Rock",
            "Destroyed Fossil",
            "Bone",
            "Stalactite",
            "Sloane\'s Viperfish",
            "Spiny Hatchetfish",
            "Swampfish",
            "Garra Typhlops",
            "Abyssal Grenadier"
        },
        ["CantBeWormholed"] = false,
        ["Priority"] = 2,
        ["CustomCondition"] = function(_, p16)
            for _, v17 in p16.Data.NewFormat.TerrapinExpansion.HallOfWhispers.PassageRequirements do
                if not v17 then
                    return false, "The fish ignore you completely... Maybe it\'s best to get here <b>normally</b>."
                end
            end
            return true
        end
    },
    ["The Sanctum"] = {
        ["Pool"] = {
            "Rock",
            "Cave Angel Fish",
            "Ozark Cavefish",
            "Cave Loach",
            "Stoplight Loosejaw",
            "Scaly Dragonfish",
            "Spiny Hatchetfish",
            "Swampfish"
        },
        ["CantBeWormholed"] = false,
        ["Priority"] = 2,
        ["CustomCondition"] = function(_, p18)
            if p18.Data.NewFormat.TerrapinExpansion.UnlockedSanctum then
                return true
            else
                return false, "The fish ignore you completely... Maybe it\'s best to get here <b>normally</b>."
            end
        end
    },
    ["The Sanctum Hunt"] = {
        ["Pool"] = {
            "Cave Angel Fish",
            "Ozark Cavefish",
            "Cave Loach",
            "Stoplight Loosejaw",
            "Scaly Dragonfish",
            "Spiny Hatchetfish",
            "Swampfish",
            "Leviathan"
        },
        ["CantBeWormholed"] = true,
        ["Priority"] = 3,
        ["CustomCondition"] = function(_, p19)
            if p19.Data.NewFormat.TerrapinExpansion.UnlockedSanctum then
                return true
            else
                return false, "The fish ignore you completely... Maybe it\'s best to get here <b>normally</b>."
            end
        end
    },
    ["The Sanctum Profane Hunt"] = {
        ["Pool"] = {
            "Cave Angel Fish",
            "Ozark Cavefish",
            "Cave Loach",
            "Stoplight Loosejaw",
            "Scaly Dragonfish",
            "Spiny Hatchetfish",
            "Swampfish",
            "Profane Leviathan"
        },
        ["CantBeWormholed"] = true,
        ["Priority"] = 3,
        ["CustomCondition"] = function(_, p20)
            if p20.Data.NewFormat.TerrapinExpansion.UnlockedSanctum then
                return true
            else
                return false, "The fish ignore you completely... Maybe it\'s best to get here <b>normally</b>."
            end
        end
    },
    ["Carrot Garden"] = {
        ["Pool"] = {
            "Carrot Turtle",
            "Carrot Pufferfish",
            "Carrot Minnow",
            "Carrot Eel",
            "Carrot Salmon",
            "Carrot Goldfish",
            "Carrot Snapper",
            "Carrot Shark"
        },
        ["Priority"] = 102,
        ["CantBeWormholed"] = false
    },
    ["AFK Pool - Trading Plaza"] = {
        ["Pool"] = { "Doubloon" },
        ["CantBeWormholed"] = true,
        ["Priority"] = 3,
        ["CustomCondition"] = function(_, _, p21)
            if p21 then
                p21 = p21:FindFirstChild("Stats")
            end
            if p21 and (p21:FindFirstChild("realLevel") and p21.realLevel.Value >= 25) then
                return true
            else
                return false, "You must reach Level 25 before fishing here."
            end
        end
    },
    ["Gilded Arch"] = {
        ["Pool"] = {
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
        ["CantBeWormholed"] = true,
        ["Priority"] = 2
    },
    ["Castaway Cliffs"] = {
        ["Pool"] = {
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
        ["CantBeWormholed"] = false,
        ["Priority"] = 2
    },
    ["Magician Narwhal - Sea 2"] = {
        ["Pool"] = {
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
        ["CantBeWormholed"] = true,
        ["Priority"] = 5
    },
    ["Magician Narwhal - Sea 1"] = {
        ["Pool"] = {
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
        ["CantBeWormholed"] = true,
        ["Priority"] = 5
    },
    ["Beluga - Sea 2"] = {
        ["Pool"] = {
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
        ["CantBeWormholed"] = true,
        ["Priority"] = 5
    },
    ["Beluga - Sea 1"] = {
        ["Pool"] = {
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
        ["CantBeWormholed"] = true,
        ["Priority"] = 5
    },
    ["Narwhal - Sea 2"] = {
        ["Pool"] = {
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
        ["CantBeWormholed"] = true,
        ["Priority"] = 5
    },
    ["Narwhal - Sea 1"] = {
        ["Pool"] = {
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
        ["CantBeWormholed"] = true,
        ["Priority"] = 5
    },
    ["Apex Leviathan"] = {
        ["Pool"] = {
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
        ["CantBeWormholed"] = true,
        ["Priority"] = 5
    },
    ["Mosslurker"] = {
        ["Pool"] = {
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
        ["CantBeWormholed"] = true,
        ["Priority"] = 5
    },
    ["Bloop Fish"] = {
        ["Pool"] = {
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
        ["CantBeWormholed"] = true,
        ["Priority"] = 5
    },
    ["Baby Bloop Fish"] = {
        ["Pool"] = {
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
        ["CantBeWormholed"] = true,
        ["Priority"] = 4
    },
    ["Colossal Ethereal Dragon"] = {
        ["Pool"] = {
            "Rock",
            "Stalactite",
            "Hawaiian Bobtail Squid",
            "Blue Ribbon Eel",
            "Bluelip Batfish",
            "Kitefin Shark",
            "Atolla Jellyfish"
        },
        ["CantBeWormholed"] = true,
        ["Priority"] = 3
    },
    ["Colossal Blue Dragon"] = {
        ["Pool"] = {
            "Rock",
            "Stalactite",
            "Hawaiian Bobtail Squid",
            "Blue Ribbon Eel",
            "Bluelip Batfish",
            "Kitefin Shark",
            "Atolla Jellyfish"
        },
        ["CantBeWormholed"] = true,
        ["Priority"] = 3
    },
    ["Colossal Ancient Dragon"] = {
        ["Pool"] = {
            "Rock",
            "Stalactite",
            "Sea Raven",
            "Red Fangtooth",
            "Viperfish",
            "Japanese Dragon Eel",
            "Vampire Squid"
        },
        ["CantBeWormholed"] = true,
        ["Priority"] = 3,
        ["CustomCondition"] = function(_, p22)
            if p22.Data.NewFormat.LuminescentCavern.KeystoneData.CrimsonCavernUnlocked then
                return true
            else
                return false, "You must unlock the Crimson Cavern before fishing here."
            end
        end
    },
    ["Animal Pool"] = {
        ["Pool"] = {
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
        ["Priority"] = 102,
        ["CantBeWormholed"] = true
    },
    ["Animal Pool - Second Sea"] = {
        ["Pool"] = {
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
        ["Priority"] = 102,
        ["CantBeWormholed"] = true
    },
    ["Octophant Pool Without Elephant"] = {
        ["Pool"] = {
            "Shrimpanzee",
            "Royal Tigerfish",
            "Slurpfloth",
            "Flamangler",
            "Orcanda"
        },
        ["Priority"] = 4,
        ["CantBeWormholed"] = true
    },
    ["Octophant Pool With Elephant"] = {
        ["Pool"] = {
            "Shrimpanzee",
            "Royal Tigerfish",
            "Slurpfloth",
            "Flamangler",
            "Orcanda",
            "Octophant"
        },
        ["Priority"] = 4,
        ["CantBeWormholed"] = true
    },
    ["Sea Leviathan Pool"] = {
        ["Pool"] = {
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
        ["Priority"] = 4,
        ["CantBeWormholed"] = true
    },
    ["Smurf Pool"] = {
        ["ExclusiveRods"] = {
            { "Smurf Rod" },
            "<font color=\"rgb(255,0,0)\">You must use the Smurf Rod in this pool!</font>"
        },
        ["Pool"] = {
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
        ["CantBeWormholed"] = true
    },
    ["Smurf Storm Pool"] = {
        ["ExclusiveRods"] = {
            { "Smurf Rod" },
            "<font color=\"rgb(255,0,0)\">You must use the Smurf Rod in this pool!</font>"
        },
        ["Pool"] = {
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
        ["CantBeWormholed"] = true
    },
    ["Sunny O\'Coin"] = {
        ["Pool"] = {
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
            "Sunny O\'Coin"
        },
        ["CantBeWormholed"] = true,
        ["Priority"] = 5
    },
    ["Rowdy McCharm"] = {
        ["Pool"] = {
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
        ["CantBeWormholed"] = true,
        ["Priority"] = 5
    },
    ["Plumrick O\'Luck"] = {
        ["Pool"] = {
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
            "Plumrick O\'Luck"
        },
        ["CantBeWormholed"] = true,
        ["Priority"] = 5
    },
    ["O\'Mango Goldgrin"] = {
        ["Pool"] = {
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
            "O\'Mango Goldgrin"
        },
        ["CantBeWormholed"] = true,
        ["Priority"] = 5
    },
    ["Clover McRich"] = {
        ["Pool"] = {
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
        ["CantBeWormholed"] = true,
        ["Priority"] = 5
    },
    ["Blarney McBreeze"] = {
        ["Pool"] = {
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
        ["CantBeWormholed"] = true,
        ["Priority"] = 5
    },
    ["Ashfall Pool"] = {
        ["Pool"] = {
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
        ["CantBeWormholed"] = true,
        ["Priority"] = 1
    },
    ["Cults Curse Pool"] = {
        ["Pool"] = {
            "The Whispering One",
            "Profane Ray",
            "Veilborn Parasite",
            "Bloodscript Eel",
            "Abyssal Maw",
            "Eldritch Spineback",
            "Hollow Gazer",
            "Wretched Guppy"
        },
        ["CantBeWormholed"] = true,
        ["Priority"] = 1
    },
    ["Ancient Orcas Pool"] = {
        ["Pool"] = {
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
        ["CantBeWormholed"] = true,
        ["Priority"] = 4
    },
    ["Orcas Pool"] = {
        ["Pool"] = {
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
        ["CantBeWormholed"] = true,
        ["Priority"] = 4
    },
    ["Whales Pool"] = {
        ["Pool"] = {
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
        ["Priority"] = 4,
        ["CantBeWormholed"] = true
    },
    ["Notes Island Pool"] = {
        ["Pool"] = {
            "Rotfin Eel",
            "Wraithfin",
            "Siren\226\128\153s Guppy",
            "Black Veil Ray",
            "Hexeye Snapper",
            "Bone Lanternfish",
            "Harbinger Koi",
            "Slain Maw"
        },
        ["CantBeWormholed"] = true,
        ["Priority"] = 4
    },
    ["Atlantean Storm"] = {
        ["Pool"] = {
            "Void Angler",
            "Tempest Ray",
            "Abyss Snapper",
            "Whirlpool Marlin",
            "Vortex Barracuda",
            "Typhoon Tuna",
            "Cyclone Mako",
            "Maelstorm Shark"
        },
        ["Priority"] = 4
    },
    ["The Depths - Serpent"] = {
        ["Pool"] = {
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
        ["Priority"] = 2,
        ["Disturbs"] = "MoonlitMirage",
        ["CustomCondition"] = function(_, _, p23)
            if p23:FindFirstChild("Cache") and p23.Cache:FindFirstChild("Door.TheDepthsGate") then
                return true
            else
                return false, "You must unlock the gate to The Depths before fishing here."
            end
        end
    },
    ["The Depths"] = {
        ["Pool"] = {
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
        ["Priority"] = 1,
        ["Disturbs"] = "DepthsAbsoluteDarkness",
        ["CustomCondition"] = function(_, _, p24)
            if p24:FindFirstChild("Cache") and p24.Cache:FindFirstChild("Door.TheDepthsGate") then
                return true
            else
                return false, "You must unlock the gate to The Depths before fishing here."
            end
        end
    },
    ["Crystal Cove"] = {
        ["Pool"] = {
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
        ["Priority"] = 1,
        ["CustomCondition"] = function(_, _, p25)
            if p25:FindFirstChild("Cache") and p25.Cache:FindFirstChild("Door.TheDepthsGate") then
                return true
            else
                return false, "You must unlock the gate to The Depths before fishing here."
            end
        end
    },
    ["Fischfest"] = {
        ["Pool"] = {
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
        ["Priority"] = 1,
        ["CantBeWormholed"] = true
    },
    ["Ocean Greedy"] = {
        ["Pool"] = {
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
        ["Priority"] = 4,
        ["CantBeWormholed"] = true
    },
    ["Ocean"] = {
        ["Pool"] = {
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
        ["Priority"] = 0
    },
    ["Deep Ocean"] = {
        ["Pool"] = {
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
        ["Priority"] = 1
    },
    ["Earthquake"] = {
        ["Pool"] = {
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
        ["Priority"] = 0,
        ["CantBeWormholed"] = true
    },
    ["Atlantis Ocean"] = {
        ["Pool"] = {
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
        ["Priority"] = 1,
        ["CantBeWormholed"] = true
    },
    ["Grand Reef"] = {
        ["Pool"] = {
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
        ["Priority"] = 3
    },
    ["Forsaken Shores"] = {
        ["Pool"] = {
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
        ["Priority"] = 1
    },
    ["Forsaken Shores Ocean"] = {
        ["Pool"] = {
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
        ["Priority"] = 2
    },
    ["Forsaken Shores Pond"] = {
        ["Pool"] = {
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
            "Captain\'s Goldfish",
            "Pirate Captain\'s Goldfish"
        },
        ["Priority"] = 3
    },
    ["Moosewood Ocean"] = {
        ["Pool"] = {
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
        ["Priority"] = 1
    },
    ["Moosewood Ocean Mythical"] = {
        ["Pool"] = {
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
        ["Priority"] = 4
    },
    ["Moosewood Docks"] = {
        ["Pool"] = {
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
        ["Priority"] = 2
    },
    ["Moosewood Pond"] = {
        ["Pool"] = {
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
        ["Priority"] = 2
    },
    ["Lava"] = {
        ["Pool"] = {
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
        ["Priority"] = 2,
        ["RequiredDurability"] = 100
    },
    ["Eruption"] = {
        ["Pool"] = {
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
        ["Priority"] = 3,
        ["CantBeWormholed"] = true,
        ["RequiredDurability"] = 100
    },
    ["Roslit Pond"] = {
        ["Pool"] = {
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
        ["Priority"] = 2
    },
    ["Roslit Pond Seaweed"] = {
        ["Pool"] = {
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
        ["Priority"] = 3
    },
    ["Roslit Bay"] = {
        ["Pool"] = {
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
        ["Priority"] = 3
    },
    ["Roslit Bay Alien"] = {
        ["Pool"] = {
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
        ["Priority"] = 8000
    },
    ["Roslit Bay Ocean"] = {
        ["Pool"] = {
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
        ["Priority"] = 2
    },
    ["Roslit Bay Clam"] = {
        ["Pool"] = { "Clam", "Aetherfin" },
        ["Priority"] = 10000
    },
    ["Desolate Deep"] = {
        ["Pool"] = {
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
        ["Priority"] = 2
    },
    ["Brine Storm"] = {
        ["Pool"] = {
            "Dissolved Bone",
            "Stormgazer",
            "Brine Sovereign",
            "Caustic Starwyrm"
        },
        ["Priority"] = 10,
        ["RequiredDurability"] = 200,
        ["CantBeWormholed"] = true
    },
    ["Brine Pool"] = {
        ["Pool"] = {
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
        ["Disturbs"] = "BrineStorm",
        ["Priority"] = 2,
        ["RequiredDurability"] = 200
    },
    ["Brine Pool Water"] = {
        ["Pool"] = {
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
        ["Disturbs"] = "BrineStorm",
        ["Priority"] = 2,
        ["RequiredDurability"] = 200,
        ["CantBeWormholed"] = true
    }
}
local v27 = {
    ["Pool"] = {
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
        "Meg\'s Fang",
        "Meg\'s Spine"
    },
    ["Disturbs"] = "MegHunt",
    ["Priority"] = 2,
    ["RarityLuckFactorBoosts"] = {
        [4] = 1.5,
        [5] = 2
    }
}
v26["Ancient Isle Ocean"] = v27
local v28 = {
    ["Pool"] = {
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
    ["Priority"] = 3,
    ["RarityLuckFactorBoosts"] = {
        [4] = 1.5,
        [5] = 2
    }
}
v26["Ancient Isle Pond"] = v28
local v29 = {
    ["Pool"] = {
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
    ["Priority"] = 4,
    ["RarityLuckFactorBoosts"] = {
        [4] = 1.5,
        [5] = 2
    }
}
v26["Ancient Isle Waterfall"] = v29
v26["Ancient Archives"] = {
    ["Pool"] = {
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
    ["Priority"] = 1
}
v26["Terrapin Ocean"] = {
    ["Pool"] = {
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
    ["Priority"] = 2
}
v26["Terrapin Olm"] = {
    ["Pool"] = {
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
    ["Priority"] = 3
}
v26["Mushgrove Water"] = {
    ["Pool"] = {
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
    ["Priority"] = 2
}
v26.Vertigo = {
    ["Pool"] = {
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
    ["Priority"] = 2
}
v26["Snowcap Pond"] = {
    ["Pool"] = {
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
    ["Priority"] = 2
}
v26["Snowcap Ocean"] = {
    ["Pool"] = {
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
    ["Priority"] = 2
}
v26.Snowburrow = {
    ["Pool"] = {
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
    ["Priority"] = 2
}
v26.Sunstone = {
    ["Pool"] = {
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
    ["Priority"] = 2
}
v26.Mineshaft = {
    ["Pool"] = {
        "Stalactite",
        "Rock",
        "Boot",
        "Scrap Metal",
        "Common Crate",
        "Rusty Bolt",
        "Iron Chunk",
        "Gold Piece",
        "Crystal Geode",
        "Radiant Crystal"
    },
    ["Priority"] = 3,
    ["CustomCondition"] = function(_, p30)
        if p30.Data.NewFormat.SunstoneExpansion.MerlinQuestProgress < 3 then
            return false, "You must complete Merlin\'s quest before fishing here."
        else
            return true
        end
    end
}
v26["Sunstone Hidden"] = {
    ["Pool"] = {
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
    ["Priority"] = 2
}
v26["Keepers Altar"] = {
    ["Pool"] = {
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
    ["Priority"] = 3
}
v26["Harvesters Spike"] = {
    ["Pool"] = {
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
    ["Priority"] = 3
}
v26["The Arch"] = {
    ["Pool"] = {
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
    ["Priority"] = 3
}
v26["Scallop Ocean"] = {
    ["Pool"] = {
        "Tire",
        "Boot",
        "Seaweed",
        "Scallop"
    },
    ["Priority"] = 3
}
v26.Debug = {
    ["Pool"] = { "Colossal Squid" },
    ["Priority"] = 10,
    ["CantBeWormholed"] = true
}
v26.Relics = {
    ["Pool"] = { "Enchant Relic" },
    ["Priority"] = 10,
    ["CantBeWormholed"] = true
}
v26.ExaltedRelics = {
    ["Pool"] = { "Exalted Relic" },
    ["Priority"] = 10,
    ["CantBeWormholed"] = true
}
v26.CosmicRelic = {
    ["Pool"] = { "Cosmic Relic" },
    ["Priority"] = 100,
    ["CantBeWormholed"] = true
}
v26.EmojiFish = {
    ["Pool"] = {
        "\240\159\144\159",
        "\240\159\166\145",
        "\240\159\166\136",
        "\240\159\144\139",
        "\240\159\144\161"
    },
    ["Priority"] = 10,
    ["CantBeWormholed"] = true
}
v26.Him = {
    ["Pool"] = { "Him" },
    ["Priority"] = 1000,
    ["CantBeWormholed"] = true
}
v26["Lovestorm Eel"] = {
    ["Pool"] = {
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
    ["CantBeWormholed"] = true,
    ["Priority"] = 100
}
v26["Lovestorm Eel Supercharged"] = {
    ["Pool"] = {
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
    ["CantBeWormholed"] = true,
    ["Priority"] = 100
}
v26["Birthday Megalodon"] = {
    ["Pool"] = {
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
    ["CantBeWormholed"] = true,
    ["Priority"] = 100
}
v26.BirthdayCake = {
    ["Pool"] = { "Birthday Cake" },
    ["Priority"] = 101,
    ["CantBeWormholed"] = true,
    ["StartDate"] = DateTime.fromUniversalTime(2025, 10, 5, 18, 0, 0),
    ["InvalidDate"] = DateTime.fromUniversalTime(2025, 10, 6, 18, 0, 0)
}
v26.BabysFirstBalloon = {
    ["Pool"] = { "Baby\'s First Balloon" },
    ["Priority"] = 101,
    ["CantBeWormholed"] = true,
    ["StartDate"] = DateTime.fromUniversalTime(2025, 10, 5, 18, 0, 0),
    ["InvalidDate"] = DateTime.fromUniversalTime(2025, 10, 6, 18, 0, 0)
}
v26.BirthdayGift = {
    ["Pool"] = { "Birthday Gift" },
    ["Priority"] = 101,
    ["CantBeWormholed"] = true,
    ["StartDate"] = DateTime.fromUniversalTime(2025, 10, 5, 18, 0, 0),
    ["InvalidDate"] = DateTime.fromUniversalTime(2025, 10, 6, 18, 0, 0)
}
v26["Megalodon Default"] = {
    ["Pool"] = {
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
    ["CantBeWormholed"] = true,
    ["Priority"] = 100
}
v26["Megalodon Ancient"] = {
    ["Pool"] = {
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
    ["CantBeWormholed"] = true,
    ["Priority"] = 100
}
v26["Great White Shark"] = {
    ["Pool"] = {
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
    ["Priority"] = 100
}
v26["Great Hammerhead Shark"] = {
    ["Pool"] = {
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
    ["Priority"] = 100
}
v26["Whale Shark"] = {
    ["Pool"] = {
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
    ["Priority"] = 100
}
v26.Isonade = {
    ["Pool"] = {
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
    ["Priority"] = 101
}
v26.FischFright24 = {
    ["Pool"] = {
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
    ["Priority"] = 102,
    ["CantBeWormholed"] = true
}
v26.FischFright25 = {
    ["Pool"] = {
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
    ["Priority"] = 102,
    ["CantBeWormholed"] = true
}
v26.FrightfulVillage = {
    ["Pool"] = {
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
    ["Priority"] = 102,
    ["CantBeWormholed"] = true
}
v26.NessieCatacomb = {
    ["Pool"] = {
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
    ["Priority"] = 102,
    ["CantBeWormholed"] = true
}
v26.Fischgiving = {
    ["Pool"] = { "Turkey" },
    ["Priority"] = 103,
    ["CantBeWormholed"] = true,
    ["InvalidDate"] = DateTime.fromUniversalTime(2024, 12, 7, 8)
}
v26.SourGummy = {
    ["Pool"] = { "Xtra Sour Gummy Pack" },
    ["Priority"] = 110,
    ["CantBeWormholed"] = true,
    ["StartDate"] = DateTime.fromUniversalTime(2024, 11, 1, 16),
    ["InvalidDate"] = DateTime.fromUniversalTime(2025, 11, 1, 16)
}
v26.Fischmas24 = {
    ["Pool"] = {
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
    ["Priority"] = 104,
    ["CantBeWormholed"] = true
}
v26["Overgrowth Caves"] = {
    ["Pool"] = {
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
    ["Priority"] = 2
}
v26["Frigid Cavern"] = {
    ["Pool"] = {
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
    ["Priority"] = 2
}
v26["Cryogenic Canal"] = {
    ["Pool"] = {
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
    ["Priority"] = 2
}
v26["Glacial Grotto"] = {
    ["Pool"] = {
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
    ["Priority"] = 2
}
v26["The Summit Ocean"] = {
    ["Pool"] = {
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
    ["Priority"] = 2,
    ["CantBeWormholed"] = true
}
v26["Forsaken Algae Pool"] = {
    ["Pool"] = {
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
    ["Priority"] = 100,
    ["CantBeWormholed"] = true
}
v26["Ancient Algae Pool"] = {
    ["Pool"] = {
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
    ["Priority"] = 100,
    ["CantBeWormholed"] = true
}
v26["Mushgrove Algae Pool"] = {
    ["Pool"] = {
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
    ["Priority"] = 100,
    ["CantBeWormholed"] = true
}
v26["Snowcap Algae Pool"] = {
    ["Pool"] = {
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
    ["Priority"] = 100,
    ["CantBeWormholed"] = true
}
v26["Golden Tide"] = {
    ["Pool"] = {
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
    ["Priority"] = 102,
    ["CantBeWormholed"] = true
}
v26["Zeus Pool"] = {
    ["Pool"] = {
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
        "Zeus\' Herald"
    },
    ["Disturbs"] = "KrakenHunt",
    ["Priority"] = 1,
    ["CustomCondition"] = function(_, _, p31)
        if p31:FindFirstChild("Cache") and p31.Cache:FindFirstChild("Door.ZeusPuzzleDoor") then
            return true
        else
            return false, "You must complete the Zeus Trials before fishing here."
        end
    end
}
v26["Poseidon Pool"] = {
    ["Pool"] = {
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
    ["Disturbs"] = "KrakenHunt",
    ["Priority"] = 1,
    ["CustomCondition"] = function(_, _, p32)
        if p32:FindFirstChild("Cache") and p32.Cache:FindFirstChild("Door.PoseidonPuzzleDoor") then
            return true
        else
            return false, "You must complete the Poseidon Trial before fishing here."
        end
    end
}
v26["Sunken\'s Depth"] = {
    ["Pool"] = {
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
        "Poseidon\'s Perch",
        "Marble Maiden",
        "Crystal Chorus",
        "Helios Ray",
        "Philosopher\'s Fish",
        "Atlantean Guardian",
        "Triton\'s Herald",
        "Twilight Glowfish",
        "Atlantean Alchemist",
        "Deep Crownfish",
        "Celestial Koi"
    },
    ["Disturbs"] = "KrakenHunt",
    ["Priority"] = 1,
    ["CustomCondition"] = function(_, _, p33)
        if p33:FindFirstChild("Cache") and p33.Cache:FindFirstChild("Door.SunkenDepthDoor") then
            return true
        else
            return false, "You must unlock the Sunken Depths before fishing here."
        end
    end
}
v26["Ethereal Abyss"] = {
    ["Pool"] = {
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
        "Neptune\'s Nibbler",
        "Aqua Scribe",
        "Temple Drifter",
        "Mosaic Swimmer",
        "Echo Fisher",
        "Oracle\'s Eye",
        "Siren Singer",
        "Chronos Deep Swimmer",
        "Voidscale Guppy",
        "Starlit Weaver",
        "Mage Marlin",
        "King Jellyfish"
    },
    ["Disturbs"] = "KrakenHunt",
    ["Priority"] = 1,
    ["CustomCondition"] = function(_, _, p34)
        if p34:FindFirstChild("Cache") and p34.Cache:FindFirstChild("Door.EtherealAbyssDoor") then
            return true
        else
            return false, "You must unlock the Ethereal Abyss before fishing here."
        end
    end
}
v26["Kraken Pool"] = {
    ["Pool"] = {
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
        "Kraken\'s Herald",
        "Abyssal King",
        "Void Emperor",
        "Abyssal Devourer"
    },
    ["Disturbs"] = "KrakenHunt",
    ["Priority"] = 1,
    ["CustomCondition"] = function(_, _, p35)
        if p35:FindFirstChild("Cache") and p35.Cache:FindFirstChild("Door.KrakenPuzzleDoor2") then
            return true
        else
            return false, "You must unlock the Kraken Pool before fishing here."
        end
    end
}
v26["The Kraken Pool"] = {
    ["Pool"] = {
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
        "Kraken\'s Herald",
        "Abyssal King",
        "Void Emperor",
        "Abyssal Devourer",
        "The Kraken"
    },
    ["CantBeWormholed"] = true,
    ["Priority"] = 1,
    ["CustomCondition"] = function(_, _, p36)
        if p36:FindFirstChild("Cache") and p36.Cache:FindFirstChild("Door.KrakenPuzzleDoor2") then
            return true
        else
            return false, "You must unlock the Kraken Pool before fishing here."
        end
    end
}
v26["Ancient Kraken Pool"] = {
    ["Pool"] = {
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
        "Kraken\'s Herald",
        "Abyssal King",
        "Void Emperor",
        "Abyssal Devourer",
        "Ancient Kraken"
    },
    ["CantBeWormholed"] = true,
    ["Priority"] = 1,
    ["CustomCondition"] = function(_, _, p37)
        if p37:FindFirstChild("Cache") and p37.Cache:FindFirstChild("Door.KrakenPuzzleDoor2") then
            return true
        else
            return false, "You must unlock the Kraken Pool before fishing here."
        end
    end
}
v26["Volcanic Vents"] = {
    ["Pool"] = {
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
    ["CantBeWormholed"] = false,
    ["Priority"] = 3,
    ["Disturbs"] = "ScyllaHunt"
}
v26["Challengers Deep"] = {
    ["Pool"] = {
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
    ["CantBeWormholed"] = false,
    ["Priority"] = 3,
    ["Disturbs"] = "ScyllaHunt"
}
v26["Abyssal Zenith"] = {
    ["Pool"] = {
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
    ["CantBeWormholed"] = false,
    ["Priority"] = 3,
    ["Disturbs"] = "ScyllaHunt"
}
v26["Calm Zone"] = {
    ["Pool"] = {
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
    ["CantBeWormholed"] = false,
    ["Priority"] = 3,
    ["Disturbs"] = "ScyllaHunt"
}
v26["Forsaken Veil"] = {
    ["Pool"] = {
        "Hydra Haddock",
        "Serpent Surgeonfish",
        "Kraken Koi",
        "Gorgon Grouper",
        "Cyclone Scorpionfish",
        "Siren Sculpin",
        "Typhoon Tailfin",
        "Twilight Tentaclefish"
    },
    ["CantBeWormholed"] = false,
    ["Priority"] = 3,
    ["Disturbs"] = "ScyllaHunt",
    ["CustomCondition"] = function(_, _, p38)
        if p38:FindFirstChild("Cache") and p38.Cache:FindFirstChild("ScyllaBossfight") then
            return true
        else
            return false, "You must complete the Scylla bossfight to fish here."
        end
    end
}
v26["Forsaken Veil - Scylla"] = {
    ["Pool"] = {
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
    ["CantBeWormholed"] = true,
    ["Priority"] = 4,
    ["CustomCondition"] = function(_, _, p39)
        if p39:FindFirstChild("Cache") and p39.Cache:FindFirstChild("ScyllaBossfight") then
            return true
        else
            return false, "You must complete the Scylla bossfight to fish here."
        end
    end
}
v26.Waveborne = {
    ["Pool"] = {
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
    ["CantBeWormholed"] = true,
    ["Priority"] = 2
}
v26["Pine Shoal"] = {
    ["Pool"] = {
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
    ["CantBeWormholed"] = true,
    ["Priority"] = 2
}
v26.Lushgrove = {
    ["Pool"] = {
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
    ["CantBeWormholed"] = true,
    ["Priority"] = 2
}
v26.Emberreach = {
    ["Pool"] = {
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
    ["CantBeWormholed"] = true,
    ["Priority"] = 2
}
v26["Emberreach Ponds"] = {
    ["Pool"] = {
        "Pyre Fang",
        "Firecrest",
        "Tropical Bait Crate",
        "Sulfur Snapper",
        "Smogfish",
        "Blazebelly",
        "Cragscale",
        "Tropicspike"
    },
    ["CantBeWormholed"] = true,
    ["Priority"] = 3
}
v26["Emberreach Lava"] = {
    ["Pool"] = {
        "Lava Bream",
        "Magma Pike",
        "Hellmaw Eel",
        "Searfin",
        "Basalt Pike",
        "Emberwing",
        "Molten Ripple"
    },
    ["CantBeWormholed"] = true,
    ["Priority"] = 3,
    ["RequiredDurability"] = 100
}
v26["Isle of New Beginnings"] = {
    ["Pool"] = {
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
    ["CantBeWormholed"] = true,
    ["Priority"] = 2
}
v26["Cursed Isle"] = {
    ["Pool"] = {
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
    ["CantBeWormholed"] = false,
    ["Priority"] = 2
}
v26["Open Ocean"] = {
    ["Pool"] = {
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
    ["CantBeWormholed"] = true,
    ["Priority"] = 0
}
v26["Azure Lagoon"] = {
    ["Pool"] = {
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
    ["CantBeWormholed"] = true,
    ["Priority"] = 2
}
v26["Blue Moon - First Sea"] = {
    ["Pool"] = {
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
    ["Priority"] = 3,
    ["CantBeWormholed"] = false,
    ["CustomCondition"] = function(_, _)
        -- upvalues: (copy) v_u_1
        if v_u_1:GetAttribute("BlueMoonEvent") == true then
            return true
        else
            return false, "<font color=\"#D20103\">You can only fish here during a Blue Moon event.</font>"
        end
    end
}
v26["Jurassic Island Pool"] = {
    ["ExclusiveRods"] = {
        {
            "Zora\'s Rod",
            "Henry\'s Rod",
            "Duncan\'s Rod",
            "Developers Rod",
            "Mission Specialist\'s Rod",
            "Fixer\'s Rod",
            "Paleontologist\'s Rod"
        },
        "<font color=\"rgb(255,0,0)\">You must use a Jurassic World rod in this pool!</font>"
    },
    ["Pool"] = {
        "Gillicus",
        "Oreochima",
        "Diplomystus",
        "Giant Lamprey",
        "Edestus",
        "Jurassic Helicoprion",
        "Dasyatis",
        "Rhizodus"
    },
    ["Priority"] = 6,
    ["CantBeWormholed"] = true
}
v26["Jurassic Island Ocean Pool"] = {
    ["ExclusiveRods"] = {
        {
            "Zora\'s Rod",
            "Henry\'s Rod",
            "Duncan\'s Rod",
            "Developers Rod",
            "Mission Specialist\'s Rod",
            "Fixer\'s Rod",
            "Paleontologist\'s Rod"
        },
        "<font color=\"rgb(255,0,0)\">You must use a Jurassic World rod in this pool!</font>"
    },
    ["Pool"] = {
        "Gillicus",
        "Oreochima",
        "Diplomystus",
        "Giant Lamprey",
        "Edestus",
        "Jurassic Helicoprion",
        "Dasyatis",
        "Rhizodus"
    },
    ["Priority"] = 5,
    ["CantBeWormholed"] = true
}
v26.LEGO = {
    ["ExclusiveRods"] = {
        { "Brick Built Rod", "Developers Rod" },
        "<font color=\"rgb(255,0,0)\">You must use the Brick Built Rod in this pool!</font>"
    },
    ["Pool"] = {
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
    ["Priority"] = 5,
    ["CantBeWormholed"] = true
}
v26["LEGO - Studolodon"] = {
    ["ExclusiveRods"] = {
        { "Brick Built Rod", "Developers Rod" },
        "<font color=\"rgb(255,0,0)\">You must use the Brick Built Rod in this pool!</font>"
    },
    ["Pool"] = {
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
    ["Priority"] = 5,
    ["CantBeWormholed"] = true
}
v26["Whale Interior"] = {
    ["Pool"] = {
        "Bearded Toadfish",
        "Giant Moray",
        "Gulf Toadfish",
        "Oyster toadfish",
        "Smooth toadfish",
        "Splendid toadfish"
    },
    ["CantBeWormholed"] = true,
    ["Priority"] = 2
}
v26["Treasure Island"] = {
    ["Pool"] = {
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
    ["CantBeWormholed"] = false,
    ["Priority"] = 2
}
v26.Default = {
    ["Pool"] = {
        "Rock",
        "Log",
        "Seaweed",
        "Tire",
        "Boot"
    },
    ["CantBeWormholed"] = true,
    ["Priority"] = 2
}
return v26
