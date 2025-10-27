local l_fish_0 = game:GetService("ReplicatedStorage"):WaitForChild("resources"):WaitForChild("animations"):WaitForChild("fish");
local l_presents_0 = {
    Basic = {
        "Cookie", 
        "Cookie", 
        "Glass of Milk", 
        "Glass of Milk", 
        "Candy Cane Carp", 
        "Santa Salmon", 
        "Ornament Fish"
    }, 
    Unique = {
        "Icicle", 
        "Icicle", 
        "Icicle", 
        "Glass of Milk", 
        "Glass of Milk", 
        "Glass of Milk", 
        "Candy Cane Carp", 
        "Candy Cane Carp", 
        "Candy Cane Carp", 
        "Candy Cane Carp", 
        "Candy Cane Carp", 
        "Candy Cane Carp", 
        "Ornament Fish", 
        "Ornament Fish", 
        "Ornament Fish", 
        "Ornament Fish", 
        "Santa Salmon", 
        "Santa Salmon", 
        "Santa Salmon", 
        "Santa Salmon", 
        "Santa Salmon", 
        "Santa Salmon", 
        "Gingerbread Fish", 
        "Gingerbread Fish", 
        "Gingerbread Fish", 
        "Enchant Relic", 
        "Enchant Relic"
    }, 
    Supreme = {
        "Icicle", 
        "Icicle", 
        "Icicle", 
        "Icicle", 
        "Icicle", 
        "Icicle", 
        "Candy Cane Carp", 
        "Candy Cane Carp", 
        "Candy Cane Carp", 
        "Candy Cane Carp", 
        "Candy Cane Carp", 
        "Santa Salmon", 
        "Santa Salmon", 
        "Santa Salmon", 
        "Santa Salmon", 
        "Santa Salmon", 
        "Santa Salmon", 
        "Santa Salmon", 
        "Ornament Fish", 
        "Ornament Fish", 
        "Ornament Fish", 
        "Ornament Fish", 
        "Ornament Fish", 
        "Ornament Fish", 
        "Gingerbread Fish", 
        "Gingerbread Fish", 
        "Gingerbread Fish", 
        "Gingerbread Fish", 
        "Gingerbread Fish", 
        "Gingerbread Fish", 
        "Snowflake Flounder", 
        "Snowflake Flounder", 
        "Snowflake Flounder", 
        "Snowflake Flounder", 
        "Olmdeer", 
        "Olmdeer", 
        "Olmdeer", 
        "Santa Pufferfish", 
        "Santa Pufferfish", 
        "Enchant Relic", 
        "Enchant Relic", 
        "Enchant Relic"
    }
};
local v2 = {
    ["Desolate Deep"] = {
        Trash = 22, 
        Common = 22, 
        Uncommon = 18, 
        Unusual = 17, 
        Rare = 14
    }, 
    ["Brine Pool"] = {
        Trash = 29, 
        Common = 29, 
        Uncommon = 25, 
        Unusual = 23, 
        Rare = 15
    }, 
    ["Crystal Cove"] = {
        Trash = 29, 
        Common = 29, 
        Uncommon = 25, 
        Unusual = 23, 
        Rare = 15
    }
};
local v5 = {
    ["Neon Tetra"] = {
        Icon = "rbxassetid://104112900208797", 
        WeightPool = {
            10, 
            25
        }, 
        Chance = 100, 
        Rarity = "Common", 
        Resilience = 100, 
        Description = "A shimmering blue and red minnow darting in jungle streams.", 
        Hint = "Found in schools near calm shallows. Can be speared or fished in shallow water.", 
        FavouriteBait = "Ant", 
        FavouriteTime = "Day", 
        Price = 40, 
        XP = 60, 
        Seasons = {
            "Spring", 
            "Summer"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Neon Tetra!", 
            "Glowing like a jewel!", 
            "School\226\128\153s in session!"
        }, 
        SparkleColor = Color3.fromRGB(0, 191, 255), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Lost Jungle"
    }, 
    ["Cardinal Tetra"] = {
        Icon = "rbxassetid://91951677231863", 
        WeightPool = {
            10, 
            30
        }, 
        Chance = 80, 
        Rarity = "Common", 
        Resilience = 95, 
        Description = "A tiny fish with a full crimson belly and a shining stripe.", 
        Hint = "Shoals together in dappled waters. Can be speared or fished in shallow water.", 
        FavouriteBait = "Earthworm", 
        FavouriteTime = "Day", 
        Price = 55, 
        XP = 70, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Cardinal Tetra!", 
            "Crimson flash!", 
            "Bright little dart!"
        }, 
        SparkleColor = Color3.fromRGB(255, 64, 64), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Lost Jungle"
    }, 
    ["Bronze Corydoras"] = {
        Icon = "rbxassetid://92847468235676", 
        WeightPool = {
            15, 
            45
        }, 
        Chance = 70, 
        Rarity = "Uncommon", 
        Resilience = 85, 
        Description = "A bottom-dwelling catfish with bronze armor plates.", 
        Hint = "Scavenges along muddy riverbeds. Can be speared or fished in shallow water.", 
        FavouriteBait = "Beetle Grub", 
        FavouriteTime = "Day", 
        Price = 80, 
        XP = 90, 
        Seasons = {
            "Spring", 
            "Autumn"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A Bronze Corydoras!", 
            "Bottom-feeder deluxe!", 
            "Little armored friend!"
        }, 
        SparkleColor = Color3.fromRGB(184, 115, 51), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Lost Jungle"
    }, 
    ["Oscar Cichlid"] = {
        Icon = "rbxassetid://140520372337759", 
        WeightPool = {
            30, 
            120
        }, 
        Chance = 50, 
        Rarity = "Unusual", 
        Resilience = 70, 
        Description = "A bold, patterned cichlid with fiery orange patches.", 
        Hint = "Prefers slow-moving jungle waters. Can be speared in shallow water.", 
        FavouriteBait = "Cricket", 
        FavouriteTime = "Day", 
        Price = 200, 
        XP = 150, 
        Seasons = {
            "Summer", 
            "Autumn"
        }, 
        Weather = {
            "Clear", 
            "Rain"
        }, 
        Quips = {
            "An Oscar Cichlid!", 
            "Flash of orange!", 
            "Boss of the shallows!"
        }, 
        SparkleColor = Color3.fromRGB(255, 85, 0), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Lost Jungle"
    }, 
    ["Freshwater Pacu"] = {
        Icon = "rbxassetid://135078375295940", 
        WeightPool = {
            50, 
            200
        }, 
        Chance = 20, 
        Rarity = "Unusual", 
        Resilience = 65, 
        Description = "A massive vegetarian relative of the piranha.", 
        Hint = "Feeds on fruits near riverbanks. Sometimes caught or speared in shallow water.", 
        FavouriteBait = "Cricket", 
        FavouriteTime = "Day", 
        Price = 400, 
        XP = 200, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A Freshwater Pacu!", 
            "Giant cousin of the piranha!", 
            "Fruit eater of the rivers!"
        }, 
        SparkleColor = Color3.fromRGB(255, 69, 69), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Lost Jungle"
    }, 
    ["Silver Arowana"] = {
        Icon = "rbxassetid://123930797041581", 
        WeightPool = {
            3000, 
            12000
        }, 
        Chance = 25, 
        Rarity = "Rare", 
        Resilience = 55, 
        Description = "A sleek predator that leaps for prey above the water\226\128\153s surface.", 
        Hint = "Hunts near the surface in still waters. Can be speared when close to the surface.", 
        FavouriteBait = "Snail", 
        FavouriteTime = "Day", 
        Price = 600, 
        XP = 250, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Silver Arowana!", 
            "Surface hunter!", 
            "It leaps high!"
        }, 
        SparkleColor = Color3.fromRGB(192, 192, 192), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Lost Jungle"
    }, 
    ["Redeye Piranha"] = {
        Icon = "rbxassetid://81135451930113", 
        WeightPool = {
            10, 
            35
        }, 
        Chance = 18, 
        Rarity = "Rare", 
        Resilience = 50, 
        Description = "A sharp-toothed predator with a crimson gaze.", 
        Hint = "Moves in packs, striking at dusk.", 
        FavouriteBait = "Centipede", 
        FavouriteTime = "Night", 
        Price = 800, 
        XP = 300, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Redeye Piranha!", 
            "Watch your fingers!", 
            "A frenzy in the water!"
        }, 
        SparkleColor = Color3.fromRGB(255, 0, 0), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Lost Jungle"
    }, 
    ["Black Ghost Knifefish"] = {
        Icon = "rbxassetid://117437345337678", 
        WeightPool = {
            50, 
            150
        }, 
        Chance = 12, 
        Rarity = "Rare", 
        Resilience = 45, 
        Description = "An electric-sensing nocturnal fish, gliding like a shadow.", 
        Hint = "Active only after dusk, haunting the dark waters.", 
        FavouriteBait = "Insect", 
        FavouriteTime = "Night", 
        Price = 1200, 
        XP = 450, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A Black Ghost Knifefish!", 
            "Haunting glide!", 
            "A whisper in the river!"
        }, 
        SparkleColor = Color3.fromRGB(0, 0, 0), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Lost Jungle"
    }, 
    ["Northern Snakehead"] = {
        Icon = "rbxassetid://76617590779915", 
        WeightPool = {
            90, 
            300
        }, 
        Chance = 15, 
        Rarity = "Rare", 
        Resilience = 60, 
        Description = "A fierce predator with a head like a snake and lungs for air.", 
        Hint = "Surfaces often to breathe in stagnant waters. Can be speared in shallow water.", 
        FavouriteBait = "Centipede", 
        FavouriteTime = "Day", 
        Price = 1500, 
        XP = 700, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Northern Snakehead!", 
            "Air-breathing terror!", 
            "Apex of the shallows!"
        }, 
        SparkleColor = Color3.fromRGB(153, 102, 51), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Lost Jungle"
    }, 
    Payara = {
        Icon = "rbxassetid://91027999285561", 
        WeightPool = {
            2000, 
            12000
        }, 
        Chance = 10, 
        Rarity = "Rare", 
        Resilience = 40, 
        Description = "The vampire fish, with enormous fangs jutting from its jaws.", 
        Hint = "Strikes fast in turbulent waters.", 
        FavouriteBait = "Minnow", 
        FavouriteTime = "Night", 
        Price = 2200, 
        XP = 900, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Clear", 
            "Windy"
        }, 
        Quips = {
            "A Payara!", 
            "Fanged terror!", 
            "Vampire of the rivers!"
        }, 
        SparkleColor = Color3.fromRGB(160, 160, 160), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Lost Jungle"
    }, 
    ["Electric Eel"] = {
        Icon = "rbxassetid://115032148487774", 
        WeightPool = {
            80, 
            200
        }, 
        Chance = 8, 
        Rarity = "Legendary", 
        Resilience = 30, 
        ProgressEfficiency = 0.7, 
        Description = "A long eel capable of delivering dangerous electric shocks.", 
        Hint = "Lurks in murky shallows, especially in storms.", 
        FavouriteBait = "Stag Beetle", 
        FavouriteTime = "Night", 
        Price = 3000, 
        XP = 1200, 
        Seasons = {
            "Summer", 
            "Autumn"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "AN ELECTRIC EEL!", 
            "CRACKLING WITH POWER!", 
            "THE RIVER\226\128\153S LIGHTNING!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 0), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Lost Jungle"
    }, 
    Pirarucu = {
        Icon = "rbxassetid://99290744894675", 
        WeightPool = {
            50000, 
            200000
        }, 
        Chance = 5, 
        Rarity = "Legendary", 
        Resilience = 20, 
        ProgressEfficiency = 0.6, 
        Description = "The Arapaima, a colossal air-breathing fish of the Amazon.", 
        Hint = "Surfaces with a loud gulp in the deep jungle rivers.", 
        FavouriteBait = "Dragonfly", 
        FavouriteTime = "Day", 
        Price = 5000, 
        XP = 2200, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Clear", 
            "Rain"
        }, 
        Quips = {
            "A PIRARUCU!", 
            "THE JUNGLE GIANT!", 
            "COLOSSUS OF THE RIVER!"
        }, 
        SparkleColor = Color3.fromRGB(102, 51, 0), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Lost Jungle"
    }, 
    Piraiba = {
        Icon = "rbxassetid://130551065346680", 
        WeightPool = {
            30000, 
            150000
        }, 
        Chance = 5, 
        Rarity = "Legendary", 
        Resilience = 25, 
        ProgressEfficiency = 0.6, 
        Description = "A giant catfish of the Amazon, stretching meters long.", 
        Hint = "Dwells in the deep and muddy channels. Sometimes speared in shallow water.", 
        FavouriteBait = "Dragonfly", 
        FavouriteTime = "Night", 
        Price = 5200, 
        XP = 1800, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A PIRAIBA!", 
            "GOLIATH CATFISH!", 
            "DEEP RIVER MONSTER!"
        }, 
        SparkleColor = Color3.fromRGB(89, 89, 89), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Lost Jungle"
    }, 
    ["Motoro Stingray"] = {
        Icon = "rbxassetid://108419624711269", 
        WeightPool = {
            80, 
            250
        }, 
        Chance = 6, 
        Rarity = "Mythical", 
        Resilience = 25, 
        ProgressEfficiency = 0.55, 
        Description = "A patterned freshwater stingray gliding silently along the riverbed.", 
        Hint = "Buried in sand and mud, waiting for prey. Sometimes speared in shallow water.", 
        FavouriteBait = "Dragonfly", 
        FavouriteTime = "Day", 
        Price = 7500, 
        XP = 2100, 
        Seasons = {
            "Spring", 
            "Summer"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A Motoro Stingray!", 
            "Hidden in the silt!", 
            "Beautiful and deadly!"
        }, 
        SparkleColor = Color3.fromRGB(204, 153, 51), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Lost Jungle"
    }, 
    ["Goliath Tigerfish"] = {
        Icon = "rbxassetid://97473827051069", 
        WeightPool = {
            10000, 
            50000
        }, 
        Chance = 4, 
        Rarity = "Mythical", 
        Resilience = 15, 
        ProgressEfficiency = 0.5, 
        Description = "A monstrous predator with fangs like knives and unmatched ferocity.", 
        Hint = "Haunts the deepest currents, striking in chaos.", 
        FavouriteBait = "Stag Beetle", 
        FavouriteTime = "Night", 
        Price = 7000, 
        XP = 2500, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A GOLIATH TIGERFISH!", 
            "FANGS OF THE DEEP!", 
            "NIGHTMARE OF THE RIVER!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Lost Jungle"
    }, 
    Mossjaw = {
        Icon = "rbxassetid://129498791494514", 
        BlockPassiveCapture = true, 
        ProgressEfficiency = 0.05, 
        WeightPool = {
            3000000, 
            7000000
        }, 
        Chance = 1, 
        Rarity = "Exotic", 
        Resilience = -30, 
        Description = "A hulking, moss-covered predator that lurks deep within the jungle. Its scales are heavy with age, and its jaws snap through trees as easily as bone. Few dare the temple at night, for the Mossjaw waits there, patient and merciless.", 
        Hint = "???", 
        FavouriteBait = "Glowworm", 
        FavouriteTime = "Night", 
        Price = 220000, 
        XP = 500000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "THE SWAMP'S HUNGER!", 
            "ANCIENT JAWS AWAKEN!", 
            "THE TEMPLE DEVOURS!", 
            "MOSS-COVERED DOOM!", 
            "TERROR OF THE JUNGLE!", 
            "ITS EYES SEE ALL!", 
            "SNAP OF OBLIVION!"
        }, 
        SparkleColor = Color3.fromRGB(177, 250, 131), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Lost Jungle"
    }, 
    ["Elder Mossjaw"] = {
        Icon = "rbxassetid://109400702021847", 
        BlockPassiveCapture = true, 
        ForcedProgressEfficiency = 0.03, 
        WeightPool = {
            6000000, 
            14000000
        }, 
        Chance = 1, 
        Rarity = "Secret", 
        Resilience = -200, 
        Description = "Older than memory, the Elder Mossjaw is whispered of in fearful stories. It has a moss-draped hide, and its eyes gleam with a cruel, ancient intelligence. To face it is to face the jungle's oldest terror.", 
        Hint = "???", 
        FavouriteBait = "Glowworm", 
        FavouriteTime = "Night", 
        Price = 320000, 
        XP = 700000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "THE PRIMEVAL KING!", 
            "AN ISLAND OF DEATH!", 
            "THE TEMPLE'S END!", 
            "FANGS OF FOREVER!", 
            "THE ANCIENT CURSE!", 
            "FROM AGES BEFORE!"
        }, 
        SparkleColor = Color3.fromRGB(0, 137, 30), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Lost Jungle"
    }, 
    ["Birthday Squid"] = {
        Icon = "rbxassetid://83747275923007", 
        ProgressEfficiency = 1.5, 
        WeightPool = {
            7, 
            27
        }, 
        Chance = 80, 
        Rarity = "Limited", 
        Resilience = 100, 
        Description = "A squid dressed for the party, with a balloon in its clutch. Give it a poke and it bursts into confetti!", 
        Hint = "Exclusively obtainable on Fisch's Anniversary day! [Anniversary Pools]", 
        FavouriteBait = "None", 
        FavouriteTime = "None", 
        Price = 5500, 
        XP = 2100, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "HAPPY BIRTHDAY FISCH!", 
            "I HATE DOBIG! W FISCH!", 
            "\240\159\165\179\240\159\165\179\240\159\165\179\240\159\165\179\240\159\165\179\240\159\165\179\240\159\165\179\240\159\165\179\240\159\165\179\240\159\165\179", 
            "\240\159\142\137\240\159\142\137\240\159\142\137\240\159\142\137\240\159\142\137\240\159\142\137\240\159\142\137\240\159\142\137\240\159\142\137\240\159\142\137\240\159\142\137\240\159\142\137\240\159\142\137\240\159\142\137\240\159\142\137"
        }, 
        SparkleColor = Color3.fromRGB(211, 160, 255), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        FromLimited = "Anniversary", 
        From = "Anniversary"
    }, 
    ["Birthday Dumbo Octopus"] = {
        Icon = "rbxassetid://111664082886495", 
        ProgressEfficiency = 1.4, 
        WeightPool = {
            17, 
            42
        }, 
        Chance = 70, 
        Rarity = "Limited", 
        Resilience = 100, 
        Description = "A dumbo octopus in party mode, every puff sounds like a party horn!", 
        Hint = "Exclusively obtainable on Fisch's Anniversary day! [Anniversary Pools]", 
        FavouriteBait = "None", 
        FavouriteTime = "None", 
        Price = 5500, 
        XP = 2100, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "HAPPY BIRTHDAY FISCH!", 
            "I HATE DOBIG! W FISCH!", 
            "\240\159\165\179\240\159\165\179\240\159\165\179\240\159\165\179\240\159\165\179\240\159\165\179\240\159\165\179\240\159\165\179\240\159\165\179\240\159\165\179", 
            "\240\159\142\137\240\159\142\137\240\159\142\137\240\159\142\137\240\159\142\137\240\159\142\137\240\159\142\137\240\159\142\137\240\159\142\137\240\159\142\137\240\159\142\137\240\159\142\137\240\159\142\137\240\159\142\137\240\159\142\137"
        }, 
        SparkleColor = Color3.fromRGB(211, 160, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        FromLimited = "Anniversary", 
        From = "Anniversary"
    }, 
    ["Birthday Goldfish"] = {
        Icon = "rbxassetid://84872495622549", 
        ProgressEfficiency = 0.5, 
        WeightPool = {
            20, 
            50
        }, 
        Chance = 50, 
        Rarity = "Limited", 
        Resilience = 100, 
        Description = "A goldfish... but baked into cake form? Let's try not to eat our friend!", 
        Hint = "Exclusively obtainable on Fisch's Anniversary day! [Anniversary Pools]", 
        FavouriteBait = "None", 
        FavouriteTime = "None", 
        Price = 5500, 
        XP = 2100, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "HAPPY BIRTHDAY FISCH!", 
            "I HATE DOBIG! W FISCH!", 
            "\240\159\165\179\240\159\165\179\240\159\165\179\240\159\165\179\240\159\165\179\240\159\165\179\240\159\165\179\240\159\165\179\240\159\165\179\240\159\165\179", 
            "\240\159\142\137\240\159\142\137\240\159\142\137\240\159\142\137\240\159\142\137\240\159\142\137\240\159\142\137\240\159\142\137\240\159\142\137\240\159\142\137\240\159\142\137\240\159\142\137\240\159\142\137\240\159\142\137\240\159\142\137"
        }, 
        SparkleColor = Color3.fromRGB(211, 160, 255), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        FromLimited = "Anniversary", 
        From = "Anniversary"
    }, 
    ["Birthday Megalodon"] = {
        Icon = "rbxassetid://134630477795750", 
        ProgressEfficiency = 0.05, 
        FinalChanceDivisor = 20, 
        WeightPool = {
            500100, 
            670100
        }, 
        Chance = 1, 
        Rarity = "Limited", 
        Resilience = -40, 
        Description = "Even a Megalodon deserves cake; this one came smiling for Fisch's birthday!", 
        Hint = "Exclusively obtainable on Fisch's Anniversary day! [Anniversary Pools]", 
        FavouriteBait = "None", 
        FavouriteTime = "None", 
        Price = 200000, 
        XP = 500000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "HAPPY BIRTHDAY FISCH!", 
            "I HATE DOBIG! W FISCH!", 
            "\240\159\165\179\240\159\165\179\240\159\165\179\240\159\165\179\240\159\165\179\240\159\165\179\240\159\165\179\240\159\165\179\240\159\165\179\240\159\165\179", 
            "\240\159\142\137\240\159\142\137\240\159\142\137\240\159\142\137\240\159\142\137\240\159\142\137\240\159\142\137\240\159\142\137\240\159\142\137\240\159\142\137\240\159\142\137\240\159\142\137\240\159\142\137\240\159\142\137\240\159\142\137"
        }, 
        SparkleColor = Color3.fromRGB(211, 160, 255), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        FromLimited = "Anniversary", 
        From = "Anniversary"
    }, 
    ["Birthday Cake"] = {
        Icon = "rbxassetid://127342374174774", 
        ProgressEfficiency = 2, 
        WeightPool = {
            18, 
            27
        }, 
        Chance = 0, 
        Rarity = "Limited", 
        Resilience = 100, 
        Description = "Seems to be a cake, but why is there a Sea Bass in it? Someone call the chef!", 
        Hint = "Exclusively obtainable on Fisch's Anniversary day! [Globally Obtainable]", 
        FavouriteBait = "None", 
        FavouriteTime = "None", 
        Price = 15500, 
        XP = 7100, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "HAPPY BIRTHDAY FISCH!", 
            "I HATE DOBIG! W FISCH!", 
            "\240\159\165\179\240\159\165\179\240\159\165\179\240\159\165\179\240\159\165\179\240\159\165\179\240\159\165\179\240\159\165\179\240\159\165\179\240\159\165\179", 
            "\240\159\142\137\240\159\142\137\240\159\142\137\240\159\142\137\240\159\142\137\240\159\142\137\240\159\142\137\240\159\142\137\240\159\142\137\240\159\142\137\240\159\142\137\240\159\142\137\240\159\142\137\240\159\142\137\240\159\142\137"
        }, 
        SparkleColor = Color3.fromRGB(211, 160, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        FromLimited = "Anniversary", 
        From = "Anniversary"
    }, 
    ["Baby's First Balloon"] = {
        Icon = "rbxassetid://90758389162807", 
        ProgressEfficiency = 2, 
        WeightPool = {
            1, 
            3
        }, 
        Chance = 0, 
        Rarity = "Limited", 
        Resilience = 100, 
        Description = "A giant balloon shaped like the number 1, the first of many birthdays!", 
        Hint = "Exclusively obtainable on Fisch's Anniversary day! [Globally Obtainable]", 
        FavouriteBait = "None", 
        FavouriteTime = "None", 
        Price = 12500, 
        XP = 8100, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "HAPPY BIRTHDAY FISCH!", 
            "I HATE DOBIG! W FISCH!", 
            "\240\159\165\179\240\159\165\179\240\159\165\179\240\159\165\179\240\159\165\179\240\159\165\179\240\159\165\179\240\159\165\179\240\159\165\179\240\159\165\179", 
            "\240\159\142\137\240\159\142\137\240\159\142\137\240\159\142\137\240\159\142\137\240\159\142\137\240\159\142\137\240\159\142\137\240\159\142\137\240\159\142\137\240\159\142\137\240\159\142\137\240\159\142\137\240\159\142\137\240\159\142\137"
        }, 
        SparkleColor = Color3.fromRGB(211, 160, 255), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        FromLimited = "Anniversary", 
        From = "Anniversary"
    }, 
    ["Birthday Gift"] = {
        Icon = "rbxassetid://74152853398579", 
        ProgressEfficiency = 2, 
        WeightPool = {
            20, 
            500
        }, 
        Chance = 0, 
        Rarity = "Limited", 
        Resilience = 100, 
        Description = "A wrapped present with paper tearing at the corner... is that a Fisch toy peeking out?", 
        Hint = "Exclusively obtainable on Fisch's Anniversary day! [Globally Obtainable]", 
        FavouriteBait = "None", 
        FavouriteTime = "None", 
        Price = 5500, 
        XP = 2100, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "HAPPY BIRTHDAY FISCH!", 
            "I HATE DOBIG! W FISCH!", 
            "\240\159\165\179\240\159\165\179\240\159\165\179\240\159\165\179\240\159\165\179\240\159\165\179\240\159\165\179\240\159\165\179\240\159\165\179\240\159\165\179", 
            "\240\159\142\137\240\159\142\137\240\159\142\137\240\159\142\137\240\159\142\137\240\159\142\137\240\159\142\137\240\159\142\137\240\159\142\137\240\159\142\137\240\159\142\137\240\159\142\137\240\159\142\137\240\159\142\137\240\159\142\137"
        }, 
        SparkleColor = Color3.fromRGB(211, 160, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        FromLimited = "Anniversary", 
        From = "Anniversary"
    }, 
    ["Corrupted Floppy"] = {
        Icon = "rbxassetid://138896437082404", 
        BlockPassiveCapture = true, 
        WeightPool = {
            300, 
            700
        }, 
        Chance = 0, 
        Rarity = "Special", 
        Resilience = -100, 
        ForcedProgressEfficiency = 0.05, 
        Description = "Something seems to have corrupted it...", 
        Hint = "???", 
        FavouriteBait = nil, 
        FavouriteTime = nil, 
        Price = 290000, 
        XP = 430000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "ITS CORRUPTED?!"
        }, 
        SparkleColor = Color3.fromRGB(255, 0, 0), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Admin-Exclusive", 
        Unregistered = true, 
        Appraisable = false
    }, 
    ["Corrupted Scylla"] = {
        Icon = "rbxassetid://103212589488232", 
        BlockPassiveCapture = true, 
        WeightPool = {
            3000000, 
            7000000
        }, 
        Chance = 0, 
        Rarity = "Special", 
        Resilience = -100, 
        ForcedProgressEfficiency = 0.02, 
        Description = "Something seems to have corrupted it...", 
        Hint = "???", 
        FavouriteBait = nil, 
        FavouriteTime = nil, 
        Price = 300000, 
        XP = 450000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "ITS CORRUPTED?!"
        }, 
        SparkleColor = Color3.fromRGB(255, 0, 0), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Admin-Exclusive", 
        Unregistered = true, 
        Appraisable = false
    }, 
    ["Corrupted Kraken"] = {
        Icon = "rbxassetid://115200926439679", 
        BlockPassiveCapture = true, 
        WeightPool = {
            300000, 
            700000
        }, 
        Chance = 0, 
        Rarity = "Special", 
        Resilience = -100, 
        ForcedProgressEfficiency = 0.03, 
        Description = "Something seems to have corrupted it...", 
        Hint = "???", 
        FavouriteBait = nil, 
        FavouriteTime = nil, 
        Price = 295000, 
        XP = 440000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "ITS CORRUPTED?!"
        }, 
        SparkleColor = Color3.fromRGB(255, 0, 0), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Admin-Exclusive", 
        Unregistered = true, 
        Appraisable = false
    }, 
    ["Corrupted Mosslurker"] = {
        Icon = "rbxassetid://113571182735014", 
        BlockPassiveCapture = true, 
        WeightPool = {
            3000000, 
            7000000
        }, 
        Chance = 0, 
        Rarity = "Special", 
        Resilience = -100, 
        ForcedProgressEfficiency = 0.03, 
        Description = "Something seems to have corrupted it...", 
        Hint = "???", 
        FavouriteBait = nil, 
        FavouriteTime = nil, 
        Price = 320000, 
        XP = 430000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "ITS CORRUPTED?!"
        }, 
        SparkleColor = Color3.fromRGB(255, 0, 0), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Admin-Exclusive", 
        Unregistered = true, 
        Appraisable = false
    }, 
    ["Corrupted Megalodon"] = {
        Icon = "rbxassetid://98477014390516", 
        BlockPassiveCapture = true, 
        WeightPool = {
            300000, 
            700000
        }, 
        Chance = 0, 
        Rarity = "Special", 
        Resilience = -100, 
        ForcedProgressEfficiency = 0.02, 
        Description = "Something seems to have corrupted it...", 
        Hint = "???", 
        FavouriteBait = nil, 
        FavouriteTime = nil, 
        Price = 350000, 
        XP = 480000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "ITS CORRUPTED?!"
        }, 
        SparkleColor = Color3.fromRGB(255, 0, 0), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Admin-Exclusive", 
        Unregistered = true, 
        Appraisable = false
    }, 
    ["Mossjaw Jaw"] = {
        Icon = "rbxassetid://114624144743279", 
        ProgressEfficiency = 0.5, 
        WeightPool = {
            500, 
            1000
        }, 
        Chance = 1, 
        Rarity = "Limited", 
        Resilience = 100, 
        Description = "A rugged jawbone from an ancient beast, found in Moosewood Island's classic pond.", 
        Hint = "Hidden somewhere at Moosewood Island...", 
        FavouriteBait = "None", 
        FavouriteTime = "None", 
        Price = 4500, 
        XP = 1600, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "I FOUND ITS JAW?"
        }, 
        SparkleColor = Color3.fromRGB(126, 125, 118), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        FromLimited = "Jungle's Echo", 
        From = "Jungle's Echo"
    }, 
    ["Mossjaw Scapula"] = {
        Icon = "rbxassetid://95931813715211", 
        ProgressEfficiency = 0.7, 
        WeightPool = {
            250, 
            500
        }, 
        Chance = 1, 
        Rarity = "Limited", 
        Resilience = 100, 
        Description = "Some sturdy shoulder blades unearthed from Mushgrove Swamp's murky rivers.", 
        Hint = "Hidden somewhere at Mushgrove Swamp...", 
        FavouriteBait = "None", 
        FavouriteTime = "None", 
        Price = 4200, 
        XP = 1400, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "I FOUND ITS SCAPULA?"
        }, 
        SparkleColor = Color3.fromRGB(126, 125, 118), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        FromLimited = "Jungle's Echo", 
        From = "Jungle's Echo"
    }, 
    ["Mossjaw Skull"] = {
        Icon = "rbxassetid://70417013212733", 
        ProgressEfficiency = 0.45, 
        WeightPool = {
            700, 
            1400
        }, 
        Chance = 1, 
        Rarity = "Limited", 
        Resilience = 100, 
        Description = "A weathered, moss-laden skull discovered amidst Forsaken Shores' famous pond.", 
        Hint = "Hidden somewhere at Forsaken Shores...", 
        FavouriteBait = "None", 
        FavouriteTime = "None", 
        Price = 5100, 
        XP = 1800, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "I FOUND ITS SKULL?"
        }, 
        SparkleColor = Color3.fromRGB(126, 125, 118), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        FromLimited = "Jungle's Echo", 
        From = "Jungle's Echo"
    }, 
    ["Mossjaw Spine"] = {
        Icon = "rbxassetid://108547643597113", 
        ProgressEfficiency = 0.15, 
        WeightPool = {
            2500, 
            5000
        }, 
        Chance = 1, 
        Rarity = "Limited", 
        Resilience = 100, 
        Description = "A massive spine from a prehistoric creature, hidden nearby Sunstone Island.", 
        Hint = "Hidden somewhere at Sunstone Island...", 
        FavouriteBait = "None", 
        FavouriteTime = "None", 
        Price = 6000, 
        XP = 2200, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "I FOUND ITS SPINE?"
        }, 
        SparkleColor = Color3.fromRGB(126, 125, 118), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        FromLimited = "Jungle's Echo", 
        From = "Jungle's Echo"
    }, 
    ["Mossjaw Tail"] = {
        Icon = "rbxassetid://100049303473279", 
        ProgressEfficiency = 0.3, 
        WeightPool = {
            1200, 
            2400
        }, 
        Chance = 1, 
        Rarity = "Limited", 
        Resilience = 100, 
        Description = "A heavy tailbone recovered from Roslit Bay's fresh waters.", 
        Hint = "Hidden somewhere at Roslit Bay...", 
        FavouriteBait = "None", 
        FavouriteTime = "None", 
        Price = 5500, 
        XP = 2100, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "I FOUND ITS TAIL?"
        }, 
        SparkleColor = Color3.fromRGB(126, 125, 118), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        FromLimited = "Jungle's Echo", 
        From = "Jungle's Echo"
    }, 
    ["Supersized Driftwood"] = {
        Icon = "rbxassetid://102455611835809", 
        BlockPassiveCapture = true, 
        WeightPool = {
            1400, 
            1400
        }, 
        Chance = 0, 
        Rarity = "Special", 
        Resilience = 30, 
        ForcedProgressEfficiency = 2, 
        Description = "very large...", 
        Hint = "???", 
        FavouriteBait = nil, 
        FavouriteTime = nil, 
        Price = 25000, 
        XP = 10000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "LARGE!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Admin-Exclusive", 
        Unregistered = true, 
        Appraisable = false
    }, 
    ["Supersized Scylla"] = {
        Icon = "rbxassetid://124361765249229", 
        BlockPassiveCapture = true, 
        WeightPool = {
            200000000, 
            500000000
        }, 
        Chance = 0, 
        Rarity = "Special", 
        Resilience = -100, 
        ForcedProgressEfficiency = 0.01, 
        Description = "very large...", 
        Hint = "???", 
        FavouriteBait = nil, 
        FavouriteTime = nil, 
        Price = 280000, 
        XP = 500000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "SCYLLA ITSELF!?!", 
            "IT'S REAL!?!?!?!", 
            "IT'S MASSIVE!!!", 
            "GET THE CAMERA!!!", 
            "THE LEGEND WAS TRUE!!!"
        }, 
        SparkleColor = Color3.fromRGB(255, 239, 201), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Admin-Exclusive", 
        Unregistered = true, 
        Appraisable = false
    }, 
    ["Supersized Mosslurker"] = {
        Icon = "rbxassetid://138877273682281", 
        BlockPassiveCapture = true, 
        WeightPool = {
            200000000, 
            500000000
        }, 
        Chance = 0, 
        Rarity = "Special", 
        Resilience = -100, 
        ForcedProgressEfficiency = 0.02, 
        Description = "very large...", 
        Hint = "???", 
        FavouriteBait = nil, 
        FavouriteTime = nil, 
        Price = 250000, 
        XP = 520000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "LARGE!"
        }, 
        SparkleColor = Color3.fromRGB(255, 239, 201), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Admin-Exclusive", 
        Unregistered = true, 
        Appraisable = false
    }, 
    ["Supersized Bloop Fish"] = {
        Icon = "rbxassetid://84676091673435", 
        BlockPassiveCapture = true, 
        WeightPool = {
            300000000, 
            700000000
        }, 
        Chance = 0, 
        Rarity = "Special", 
        Resilience = -100, 
        ForcedProgressEfficiency = 0.02, 
        Description = "very large...", 
        Hint = "???", 
        FavouriteBait = nil, 
        FavouriteTime = nil, 
        Price = 290000, 
        XP = 430000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "LARGE!"
        }, 
        SparkleColor = Color3.fromRGB(255, 239, 201), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Admin-Exclusive", 
        Unregistered = true, 
        Appraisable = false
    }, 
    ["Supersized Floppy"] = {
        Icon = "rbxassetid://110074220763561", 
        BlockPassiveCapture = true, 
        WeightPool = {
            300000, 
            700000
        }, 
        Chance = 0, 
        Rarity = "Special", 
        Resilience = -100, 
        ForcedProgressEfficiency = 0.4, 
        Description = "very large...", 
        Hint = "???", 
        FavouriteBait = nil, 
        FavouriteTime = nil, 
        Price = 100000, 
        XP = 10000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "LARGE!"
        }, 
        SparkleColor = Color3.fromRGB(255, 239, 201), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Admin-Exclusive", 
        Unregistered = true, 
        Appraisable = false
    }, 
    ["Supersized Sea Pickle"] = {
        Icon = "rbxassetid://135046768157056", 
        BlockPassiveCapture = true, 
        WeightPool = {
            30000, 
            70000
        }, 
        Chance = 0, 
        Rarity = "Special", 
        Resilience = -100, 
        ForcedProgressEfficiency = 1.5, 
        Description = "very large...", 
        Hint = "???", 
        FavouriteBait = nil, 
        FavouriteTime = nil, 
        Price = 100000, 
        XP = 10000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "LARGE!"
        }, 
        SparkleColor = Color3.fromRGB(255, 239, 201), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Admin-Exclusive", 
        Unregistered = true, 
        Appraisable = false
    }, 
    ["Fischipedia Accurate Pickle"] = {
        Icon = "rbxassetid://140156467303902", 
        BlockPassiveCapture = true, 
        WeightPool = {
            4, 
            10
        }, 
        Chance = 0, 
        Rarity = "Special", 
        Resilience = -100, 
        ForcedProgressEfficiency = 1.1, 
        Description = "Just as WoozyNate intended.", 
        Hint = "???", 
        FavouriteBait = nil, 
        FavouriteTime = nil, 
        Price = 100000, 
        XP = 10000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "SO BRIGHT!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("small"), 
        From = "Admin-Exclusive", 
        Unregistered = true, 
        Appraisable = true
    }, 
    ["Lightning Bolt"] = {
        Icon = "rbxassetid://92572161715828", 
        WeightPool = {
            1000, 
            2100
        }, 
        BlockPassiveCapture = true, 
        Chance = 0, 
        Rarity = "Special", 
        Resilience = -20, 
        Description = "May god strike me down if im lying (as nick would say).", 
        Hint = "???", 
        FavouriteBait = "None", 
        FavouriteTime = nil, 
        Price = 50000, 
        XP = 15000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "\240\159\146\165\240\159\146\165\240\159\146\165", 
            "Insert loud thunder noise here."
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Admin-Exclusive", 
        Unregistered = true, 
        Appraisable = false
    }, 
    Cloud = {
        Icon = "rbxassetid://116189951050007", 
        WeightPool = {
            150, 
            210
        }, 
        BlockPassiveCapture = true, 
        Chance = 5, 
        Rarity = "Special", 
        Resilience = 10, 
        Description = "Its so fluffy.", 
        Hint = "???", 
        FavouriteBait = "None", 
        FavouriteTime = nil, 
        Price = 15000, 
        XP = 2500, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Cloudy with a chance of catching it..?"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Admin-Exclusive", 
        Unregistered = true, 
        Appraisable = false
    }, 
    Raindrop = {
        Icon = "rbxassetid://116189951050007", 
        BlockPassiveCapture = true, 
        WeightPool = {
            14, 
            52
        }, 
        Chance = 40, 
        Rarity = "Special", 
        Resilience = 30, 
        Description = "You usually see these when its raining \240\159\152\129\240\159\145\141.", 
        Hint = "???", 
        FavouriteBait = nil, 
        FavouriteTime = nil, 
        Price = 5000, 
        XP = 1000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "How did i just catch a raindrop in water?"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Admin-Exclusive", 
        Unregistered = true, 
        Appraisable = false
    }, 
    Fern = {
        Icon = "rbxassetid://133992391956069", 
        BlockPassiveCapture = true, 
        WeightPool = {
            2500, 
            5000
        }, 
        Chance = 0, 
        Rarity = "Special", 
        Resilience = -40, 
        ForcedProgressEfficiency = 0.1, 
        Description = "mmm sunlight", 
        Hint = "???", 
        FavouriteBait = "sunlight", 
        FavouriteTime = nil, 
        Price = 10000, 
        XP = 2500, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Close enough to a bush welcome back."
        }, 
        SparkleColor = Color3.fromRGB(136, 136, 136), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Admin-Exclusive", 
        Unregistered = true, 
        Appraisable = false
    }, 
    ["Pine Tree"] = {
        Icon = "rbxassetid://78837043317447", 
        BlockPassiveCapture = true, 
        WeightPool = {
            250000, 
            675000
        }, 
        Chance = 0, 
        Rarity = "Special", 
        Resilience = -40, 
        ForcedProgressEfficiency = 0.1, 
        Description = "Sometimes may give sap", 
        Hint = "???", 
        FavouriteBait = "sap", 
        FavouriteTime = nil, 
        Price = 100000, 
        XP = 25000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "When did this even become catchable?", 
            "wait i swear ive seen this tree in moosewood before..?"
        }, 
        SparkleColor = Color3.fromRGB(136, 136, 136), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Admin-Exclusive", 
        Unregistered = true, 
        Appraisable = false
    }, 
    Venoblossom = {
        Icon = "rbxassetid://117085863141967", 
        BlockPassiveCapture = true, 
        WeightPool = {
            500000, 
            850000
        }, 
        Chance = 0, 
        Rarity = "Special", 
        Resilience = -70, 
        ForcedProgressEfficiency = 0.01, 
        Description = "Who broke the bulb???", 
        Hint = "???", 
        FavouriteBait = "BULBBSSSS", 
        FavouriteTime = nil, 
        Price = 270000, 
        XP = 150000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Queue the boss music."
        }, 
        SparkleColor = Color3.fromRGB(136, 136, 136), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Admin-Exclusive", 
        Unregistered = true, 
        Appraisable = false
    }, 
    ["Colossal Blue Dragon"] = {
        Icon = "rbxassetid://113874550892544", 
        BlockPassiveCapture = true, 
        WeightPool = {
            500000, 
            3000000
        }, 
        Chance = 5, 
        Rarity = "Exotic", 
        Resilience = 10, 
        Description = "A breathtakingly massive form of the blue dragon, its wing-like fins ripple like banners as it drifts through the open sea. Though its size is staggering, it moves with a slow, graceful rhythm, glowing softly as if lit from within. Sailors say spotting one is a once-in-a-lifetime event; a fleeting glimpse of living ocean light.", 
        Hint = "???", 
        FavouriteBait = "Shark Head", 
        FavouriteTime = nil, 
        Price = 200000, 
        XP = 500000, 
        Seasons = {
            "Spring", 
            "Summer"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "IT'S BEAUTIFUL... AND HUGE!!!", 
            "I DIDN'T KNOW THEY COULD GET THAT BIG!!!", 
            "IT'S LIKE A FLOATING ISLAND!!!", 
            "IT'S SHIMMERING!!!", 
            "HOW IS THAT EVEN REAL?!"
        }, 
        SparkleColor = Color3.fromRGB(103, 176, 255), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Luminescent Cavern", 
        ProgressEfficiency = 0.1
    }, 
    ["Colossal Ancient Dragon"] = {
        Icon = "rbxassetid://103423320839824", 
        BlockPassiveCapture = true, 
        WeightPool = {
            1000000, 
            4000000
        }, 
        Chance = 1, 
        Rarity = "Exotic", 
        Resilience = 10, 
        Description = "Its worn fins are etched with cracks like old stone, and barnacle-like growths glimmer faintly across its body. Said to have drifted through the currents since before the first sailors, it moves with patient dignity; a relic of an ocean that has long forgotten its age.", 
        Hint = "???", 
        FavouriteBait = "Shark Head", 
        FavouriteTime = nil, 
        Price = 250000, 
        XP = 600000, 
        Seasons = {
            "Spring", 
            "Summer"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "IT LOOKS OLDER THAN THE OCEAN ITSELF...", 
            "HOW IS IT STILL ALIVE?!", 
            "ITS FINS ARE LIKE WEATHERED STONE...", 
            "IT FEELS... ANCIENT.", 
            "IT'S OLDER THAN ANYTHING WE'VE EVER SEEN!"
        }, 
        SparkleColor = Color3.fromRGB(255, 101, 111), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Crimson Cavern", 
        ForcedProgressEfficiency = 0.05
    }, 
    ["Colossal Ethereal Dragon"] = {
        Icon = "rbxassetid://128001384475181", 
        BlockPassiveCapture = true, 
        WeightPool = {
            1000000, 
            4000000
        }, 
        Chance = 1, 
        Rarity = "Secret", 
        Resilience = -100, 
        Description = "So faint it seems half made of light, this delicate being drifts like a waking dream. Its body shimmers with shifting colors that fade when touched, as though it exists only in the corner of one's vision; a fleeting illusion of the sea's imagination.", 
        Hint = "???", 
        FavouriteBait = "Truffle Worm", 
        FavouriteTime = nil, 
        Price = 300000, 
        XP = 700000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "IS IT EVEN REAL?!", 
            "I CAN SEE THROUGH IT...", 
            "IT'S LIKE A DREAM FLOATING BY...", 
            "IT'S... BEAUTIFUL.", 
            "IT DOESN'T FEEL LIKE IT BELONGS HERE..."
        }, 
        SparkleColor = Color3.fromRGB(199, 120, 255), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Luminescent Cavern", 
        ForcedProgressEfficiency = 0.02
    }, 
    ["Bluelip Batfish"] = {
        Icon = "rbxassetid://91091879174260", 
        WeightPool = {
            20, 
            60
        }, 
        Chance = 100, 
        Rarity = "Common", 
        Resilience = 100, 
        Description = "A bizarre bottom-dweller with vivid blue lips, waddling on cavern sands.", 
        Hint = "Waddles in rainy cavern glow.", 
        FavouriteBait = "Worm", 
        FavouriteTime = "Day", 
        Price = 150, 
        XP = 70, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A Bluelip Batfish!", 
            "Walking oddity of the floor!", 
            "Blue-lipped wanderer!"
        }, 
        SparkleColor = Color3.fromRGB(100, 0, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Luminescent Cavern"
    }, 
    ["Hawaiian Bobtail Squid"] = {
        Icon = "rbxassetid://102903150218991", 
        WeightPool = {
            5, 
            20
        }, 
        Chance = 80, 
        Rarity = "Uncommon", 
        Resilience = 90, 
        ProgressEfficiency = 1.05, 
        Description = "A small squid with a symbiotic glow, camouflaging in shallow cavern sands by night.", 
        Hint = "Shines in clear cavern nights.", 
        FavouriteBait = "Shrimp", 
        FavouriteTime = "Night", 
        Price = 300, 
        XP = 100, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Hawaiian Bobtail Squid!", 
            "Glowing with bacterial light!", 
            "Master of midnight camouflage!"
        }, 
        SparkleColor = Color3.fromRGB(0, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Luminescent Cavern"
    }, 
    ["Blue Ribbon Eel"] = {
        Icon = "rbxassetid://94662492511243", 
        WeightPool = {
            15, 
            50
        }, 
        Chance = 45, 
        Rarity = "Rare", 
        Resilience = 60, 
        ProgressEfficiency = 1.1, 
        Description = "A slender blue eel undulating from cavern burrows, hunting with open jaws.", 
        Hint = "Slithers in foggy cavern murk.", 
        FavouriteBait = "Flakes", 
        FavouriteTime = "Night", 
        Price = 1820, 
        XP = 390, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A Blue Ribbon Eel!", 
            "Slender cavern serpent!", 
            "Electric blue hunter!"
        }, 
        SparkleColor = Color3.fromRGB(0, 200, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Luminescent Cavern"
    }, 
    ["Kitefin Shark"] = {
        Icon = "rbxassetid://121133757932708", 
        WeightPool = {
            1000, 
            3000
        }, 
        Chance = 10, 
        Rarity = "Legendary", 
        Resilience = 15, 
        ProgressEfficiency = 0.5, 
        Description = "A glowing deep-sea shark cruising cavern slopes with photophores.", 
        Hint = "Patrols foggy cavern depths.", 
        FavouriteBait = "Squid", 
        FavouriteTime = "Night", 
        Price = 8000, 
        XP = 2800, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A KITEFIN SHARK!", 
            "GLOWING DEPTH PREDATOR!", 
            "BIOLUMINESCENT BEHEMOTH!"
        }, 
        SparkleColor = Color3.fromRGB(0, 255, 0), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Luminescent Cavern"
    }, 
    ["Atolla Jellyfish"] = {
        Icon = "rbxassetid://130524142982493", 
        WeightPool = {
            200, 
            500
        }, 
        Chance = 5, 
        Rarity = "Mythical", 
        Resilience = 10, 
        ProgressEfficiency = 0.3, 
        Description = "A crown-shaped jelly pulsing blue flashes to startle predators in the deep.", 
        Hint = "Flashes in foggy cavern gloom.", 
        FavouriteBait = "Truffle Worm", 
        FavouriteTime = "Night", 
        Price = 12800, 
        XP = 4200, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "An Atolla Jellyfish!", 
            "Flashing alarm in the dark!", 
            "Deep-sea dazzler!"
        }, 
        SparkleColor = Color3.fromRGB(0, 100, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Luminescent Cavern"
    }, 
    Dinoflagellates = {
        Icon = "rbxassetid://82939103544280", 
        WeightPool = {
            1, 
            2
        }, 
        Chance = 25, 
        Rarity = "Unusual", 
        Resilience = 50, 
        ProgressEfficiency = 1.05, 
        Description = "Microscopic plankton sparking blue-green light when disturbed in cavern waters.", 
        Hint = "Clings to crab cages.", 
        FavouriteBait = "Weird Algae", 
        FavouriteTime = "Night", 
        Price = 300, 
        XP = 180, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Dinoflagellates!", 
            "Sparkling microbial bloom!", 
            "Nighttime wave illuminator!"
        }, 
        SparkleColor = Color3.fromRGB(0, 255, 100), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Luminescent Cavern"
    }, 
    ["Electric Blue Seahorse"] = {
        Icon = "rbxassetid://79504879823981", 
        WeightPool = {
            20, 
            80
        }, 
        Chance = 4, 
        Rarity = "Mythical", 
        Resilience = 10, 
        ProgressEfficiency = 0.3, 
        Description = "A vibrant blue seahorse clinging to cavern corals, swaying in glowing currents.", 
        Hint = "Found in foggy crab cages.", 
        FavouriteBait = "Luminous Larva", 
        FavouriteTime = "Night", 
        Price = 13800, 
        XP = 8200, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "AN ELECTRIC BLUE SEAHORSE!", 
            "SPARKLING CAVERN CLINGER!", 
            "MYTHICAL GLOW MARE!"
        }, 
        SparkleColor = Color3.fromRGB(0, 255, 200), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Luminescent Cavern"
    }, 
    ["Blue Sea Slug"] = {
        Icon = "rbxassetid://77135933623318", 
        WeightPool = {
            2, 
            7
        }, 
        Chance = 1, 
        Rarity = "Secret", 
        Resilience = 5, 
        ProgressEfficiency = 0.1, 
        Description = "A tiny blue drifter storing venomous stings, floating in cavern currents.", 
        Hint = "???", 
        FavouriteBait = nil, 
        FavouriteTime = "Night", 
        Price = 35000, 
        XP = 25000, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A TINY BLUE DRAGON!", 
            "VENOMOUS GLOWING DRIFTER!", 
            "SECRET OF THE CAVERN!"
        }, 
        SparkleColor = Color3.fromRGB(0, 150, 255), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Luminescent Cavern"
    }, 
    ["Vampire Squid"] = {
        Icon = "rbxassetid://72036462107555", 
        WeightPool = {
            150, 
            400
        }, 
        Chance = 5, 
        Rarity = "Mythical", 
        Resilience = 10, 
        ProgressEfficiency = 0.3, 
        Description = "A deep-sea cephalopod with glowing red eyes and webbed arms, cloaking itself in crimson currents.", 
        Hint = "Lurks in foggy crimson depths.", 
        FavouriteBait = "Truffle Worm", 
        FavouriteTime = "Night", 
        Price = 12500, 
        XP = 4000, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A Vampire Squid!", 
            "Crimson cloaked drifter!", 
            "Glowing eyed phantom!"
        }, 
        SparkleColor = Color3.fromRGB(255, 0, 50), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Crimson Cavern"
    }, 
    ["Japanese Dragon Eel"] = {
        Icon = "rbxassetid://87343237282565", 
        WeightPool = {
            800, 
            2500
        }, 
        Chance = 10, 
        Rarity = "Legendary", 
        Resilience = 15, 
        ProgressEfficiency = 0.5, 
        Description = "A serpentine eel with crimson scales, coiling through cavern crevices with predatory grace.", 
        Hint = "Slithers in foggy crimson murk.", 
        FavouriteBait = "Squid", 
        FavouriteTime = "Night", 
        Price = 8500, 
        XP = 3000, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A JAPANESE DRAGON EEL!", 
            "CRIMSON COILED PREDATOR!", 
            "LEGENDARY CAVERN SERPENT!"
        }, 
        SparkleColor = Color3.fromRGB(200, 0, 50), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Crimson Cavern"
    }, 
    Viperfish = {
        Icon = "rbxassetid://72067324279387", 
        WeightPool = {
            10, 
            40
        }, 
        Chance = 50, 
        Rarity = "Rare", 
        Resilience = 70, 
        ProgressEfficiency = 1.1, 
        Description = "A ferocious fish with needle-like teeth, lurking in crimson shadows.", 
        Hint = "Bites in rainy depths.", 
        FavouriteBait = "Minnow", 
        FavouriteTime = "Night", 
        Price = 1800, 
        XP = 350, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A Viperfish!", 
            "Toothy terror of the deep!", 
            "Crimson fang hunter!"
        }, 
        SparkleColor = Color3.fromRGB(150, 0, 100), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Crimson Cavern"
    }, 
    ["Red Fangtooth"] = {
        Icon = "rbxassetid://129698554074017", 
        WeightPool = {
            15, 
            50
        }, 
        Chance = 40, 
        Rarity = "Rare", 
        Resilience = 65, 
        ProgressEfficiency = 1.1, 
        Description = "A grotesque fish with oversized fangs, prowling crimson cavern depths.", 
        Hint = "Lurks in rainy shadows.", 
        FavouriteBait = "Flakes", 
        FavouriteTime = "Night", 
        Price = 1600, 
        XP = 300, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A Fangtooth!", 
            "Fanged menace of the deep!", 
            "Crimson toothy prowler!"
        }, 
        SparkleColor = Color3.fromRGB(200, 50, 100), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Crimson Cavern"
    }, 
    ["Sea Raven"] = {
        Icon = "rbxassetid://129111295782686", 
        WeightPool = {
            20, 
            70
        }, 
        Chance = 70, 
        Rarity = "Uncommon", 
        Resilience = 85, 
        Description = "A crimson-hued fish with wing-like fins, gliding through rainy cavern waters.", 
        Hint = "Glides in rainy crimson currents.", 
        FavouriteBait = "Worm", 
        FavouriteTime = "Day", 
        Price = 350, 
        XP = 110, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A Sea Raven!", 
            "Crimson winged swimmer!", 
            "Cave gliding raven!"
        }, 
        SparkleColor = Color3.fromRGB(255, 80, 80), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Crimson Cavern"
    }, 
    ["Lithodes Megacantha"] = {
        Icon = "rbxassetid://113069639113174", 
        WeightPool = {
            50, 
            150
        }, 
        Chance = 2, 
        Rarity = "Exotic", 
        Resilience = 1, 
        Description = "A spiny crimson crab scuttling in crab cages, armored with jagged spines.", 
        Hint = "Clings to foggy crab cages.", 
        FavouriteBait = "Weird Algae", 
        FavouriteTime = "Night", 
        Price = 40000, 
        XP = 22000, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A Lithodes Megacantha!", 
            "Spiked crimson scuttler!", 
            "Crab cage conqueror!"
        }, 
        SparkleColor = Color3.fromRGB(255, 50, 50), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Crimson Cavern"
    }, 
    ["Red Crabsquid"] = {
        Icon = "rbxassetid://81267114198950", 
        WeightPool = {
            30, 
            100
        }, 
        Chance = 60, 
        Rarity = "Uncommon", 
        Resilience = 80, 
        ProgressEfficiency = 1.05, 
        Description = "A hybrid creature with squid-like tentacles, dwelling in crimson crab cages.", 
        Hint = "Scurries in clear crab cages.", 
        FavouriteBait = nil, 
        FavouriteTime = "Day", 
        Price = 400, 
        XP = 120, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Red Crabsquid!", 
            "Tentacled cave crawler!", 
            "Crimson cage dweller!"
        }, 
        SparkleColor = Color3.fromRGB(255, 100, 100), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Crimson Cavern"
    }, 
    ["Red Spotted Blenny"] = {
        Icon = "rbxassetid://91180143142182", 
        WeightPool = {
            5, 
            25
        }, 
        Chance = 75, 
        Rarity = "Common", 
        Resilience = 90, 
        Description = "A small fish with crimson spots, darting through crab cages in clear waters.", 
        Hint = "Commonly hides in clear crab cages.", 
        FavouriteBait = "Worm", 
        FavouriteTime = "Day", 
        Price = 200, 
        XP = 80, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Red Spotted Blenny!", 
            "Spotted cave sprinter!", 
            "Crimson darting blenny!"
        }, 
        SparkleColor = Color3.fromRGB(255, 150, 150), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Crimson Cavern"
    }, 
    ["Turkey Leg"] = {
        Icon = "rbxassetid://13073604", 
        BlockPassiveCapture = true, 
        WeightPool = {
            14, 
            100
        }, 
        Chance = 10, 
        Rarity = "Special", 
        Resilience = 30, 
        Description = "Gobble Gobble Yum Yum! Forks are lame...", 
        Hint = "???", 
        FavouriteBait = nil, 
        FavouriteTime = nil, 
        Price = 5000, 
        XP = 1000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Is it Thanksgiving already???"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Admin-Exclusive", 
        Unregistered = true, 
        Appraisable = false
    }, 
    Cheezburger = {
        Icon = "rbxassetid://16646570", 
        BlockPassiveCapture = true, 
        WeightPool = {
            14, 
            100
        }, 
        Chance = 70, 
        Rarity = "Special", 
        Resilience = 30, 
        Description = "U can has cheezburger!", 
        Hint = "???", 
        FavouriteBait = nil, 
        FavouriteTime = nil, 
        Price = 5000, 
        XP = 1000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Can i have cheezburger pls???"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Admin-Exclusive", 
        Unregistered = true, 
        Appraisable = false
    }, 
    ["Bloxy Cola"] = {
        Icon = "rbxassetid://10472127", 
        BlockPassiveCapture = true, 
        WeightPool = {
            14, 
            100
        }, 
        Chance = 20, 
        Rarity = "Special", 
        Resilience = 30, 
        Description = "Warning: Bloxy Cola may be habit-forming.", 
        Hint = "???", 
        FavouriteBait = nil, 
        FavouriteTime = nil, 
        Price = 5000, 
        XP = 1000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "I bet this is tasty!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Admin-Exclusive", 
        Unregistered = true, 
        Appraisable = false
    }, 
    ["Lava Bucket"] = {
        Icon = "rbxassetid://87438002145271", 
        BlockPassiveCapture = true, 
        WeightPool = {
            150, 
            210
        }, 
        Chance = 40, 
        Rarity = "Special", 
        Resilience = 10, 
        ForcedProgressEfficiency = 1.5, 
        Description = "Hot to the touch", 
        Hint = "???", 
        FavouriteBait = nil, 
        FavouriteTime = nil, 
        Price = 150000, 
        XP = 50000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "TENTACLES!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Admin-Exclusive", 
        Unregistered = true, 
        Appraisable = false
    }, 
    Obsidian = {
        Icon = "rbxassetid://92639825831734", 
        BlockPassiveCapture = true, 
        WeightPool = {
            150, 
            210
        }, 
        Chance = 25, 
        Rarity = "Special", 
        Resilience = 50, 
        ForcedProgressEfficiency = 1.25, 
        Description = "Maybe with ten of these i can make a portal!!", 
        Hint = "???", 
        FavouriteBait = nil, 
        FavouriteTime = nil, 
        Price = 100000, 
        XP = 25000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Maybe if i catch ten of these i can make a portal !!!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Admin-Exclusive", 
        Unregistered = true, 
        Appraisable = false
    }, 
    ["Dr. Ishmael"] = {
        Icon = "rbxassetid://84562985809933", 
        BlockPassiveCapture = true, 
        WeightPool = {
            14, 
            14
        }, 
        Chance = 0, 
        Rarity = "Special", 
        Resilience = 30, 
        ForcedProgressEfficiency = 2, 
        Description = "He's got a PhD in being OVAR 9000!!!! He got it at Oxford....", 
        Hint = "???", 
        FavouriteBait = nil, 
        FavouriteTime = nil, 
        Price = 250000, 
        XP = 500000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "TENTACLES!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Admin-Exclusive", 
        Unregistered = true, 
        Appraisable = false
    }, 
    ["8-Bit Mr. Tentacles"] = {
        Icon = "rbxassetid://111905672808035", 
        BlockPassiveCapture = true, 
        WeightPool = {
            14, 
            14
        }, 
        Chance = 0, 
        Rarity = "Special", 
        Resilience = 30, 
        ForcedProgressEfficiency = 2, 
        Description = "His bits are 8, but someday they'll be OVAR 9000!!!!1!", 
        Hint = "???", 
        FavouriteBait = nil, 
        FavouriteTime = nil, 
        Price = 188888, 
        XP = 188888, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "TENTACLES!"
        }, 
        SparkleColor = Color3.fromRGB(255, 169, 107), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Admin-Exclusive", 
        Unregistered = true, 
        Appraisable = false
    }, 
    ["Tentacles Junior"] = {
        Icon = "rbxassetid://81067943650069", 
        BlockPassiveCapture = true, 
        WeightPool = {
            14, 
            14
        }, 
        Chance = 0, 
        Rarity = "Special", 
        Resilience = 30, 
        ForcedProgressEfficiency = 2, 
        Description = "We he grows up, he wants to be OVAR 9000!!!", 
        Hint = "???", 
        FavouriteBait = nil, 
        FavouriteTime = nil, 
        Price = 25000, 
        XP = 5000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "TENTACLES!"
        }, 
        SparkleColor = Color3.fromRGB(74, 161, 255), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Admin-Exclusive", 
        Unregistered = true, 
        Appraisable = false
    }, 
    ["Mrs. Tentacles"] = {
        Icon = "rbxassetid://116625861636109", 
        BlockPassiveCapture = true, 
        WeightPool = {
            14, 
            14
        }, 
        Chance = 0, 
        Rarity = "Special", 
        Resilience = 30, 
        ForcedProgressEfficiency = 2, 
        Description = "She eats people, but is otherwise very charming.", 
        Hint = "???", 
        FavouriteBait = nil, 
        FavouriteTime = nil, 
        Price = 25000, 
        XP = 5000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "TENTACLES!"
        }, 
        SparkleColor = Color3.fromRGB(209, 134, 255), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Admin-Exclusive", 
        Unregistered = true, 
        Appraisable = false
    }, 
    ["Cousin Tentacles"] = {
        Icon = "rbxassetid://73698113760893", 
        BlockPassiveCapture = true, 
        WeightPool = {
            14, 
            14
        }, 
        Chance = 0, 
        Rarity = "Special", 
        Resilience = 30, 
        ForcedProgressEfficiency = 2, 
        Description = "He's UNDAR 9000!!!!!!", 
        Hint = "???", 
        FavouriteBait = nil, 
        FavouriteTime = nil, 
        Price = 5000, 
        XP = 3000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "TENTACLES!"
        }, 
        SparkleColor = Color3.fromRGB(255, 176, 120), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Admin-Exclusive", 
        Unregistered = true, 
        Appraisable = false
    }, 
    ["Mr. Tentacles"] = {
        Icon = "rbxassetid://75076308924032", 
        BlockPassiveCapture = true, 
        WeightPool = {
            14, 
            14
        }, 
        Chance = 0, 
        Rarity = "Special", 
        Resilience = 30, 
        ForcedProgressEfficiency = 2, 
        Description = "ZOMG WHAT IS THAT ON YOUR HEAD!!!!! ITS OVAR 9000!!!!!!!!!111111111111111 *HEAD EXPLODES FROM EPIKNESS*", 
        Hint = "???", 
        FavouriteBait = nil, 
        FavouriteTime = nil, 
        Price = 5000, 
        XP = 3000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "TENTACLES!"
        }, 
        SparkleColor = Color3.fromRGB(255, 206, 137), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Admin-Exclusive", 
        Unregistered = true, 
        Appraisable = false
    }, 
    ["Brighteyes Egg"] = {
        Icon = "rbxassetid://139027521396832", 
        BlockPassiveCapture = true, 
        WeightPool = {
            10, 
            40
        }, 
        Chance = 0, 
        Rarity = "Special", 
        Resilience = 50, 
        ProgressEfficiency = 1.25, 
        Description = "Lavender is such a cool color", 
        Hint = "???", 
        FavouriteBait = "Green?", 
        FavouriteTime = nil, 
        Price = 10000, 
        XP = 5000, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "I\226\128\153VE BEEN WAITING\226\128\166 THE ANTICIPATION IS OVER!!!"
        }, 
        SparkleColor = Color3.fromRGB(136, 136, 136), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Admin-Exclusive", 
        Unregistered = true, 
        Appraisable = false
    }, 
    ["Royal Egg"] = {
        Icon = "rbxassetid://94575933759484", 
        BlockPassiveCapture = true, 
        WeightPool = {
            10, 
            40
        }, 
        Chance = 0, 
        Rarity = "Special", 
        Resilience = 50, 
        ProgressEfficiency = 0.5, 
        Description = "tarnished stinks", 
        Hint = "???", 
        FavouriteBait = "King", 
        FavouriteTime = nil, 
        Price = 10000, 
        XP = 5000, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "The Royal Egg is finally mine!", 
            "How did this get in the ocean..?", 
            "A TREASURE FIT FOR A KING!!!"
        }, 
        SparkleColor = Color3.fromRGB(136, 136, 136), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Admin-Exclusive", 
        Unregistered = true, 
        Appraisable = false
    }, 
    ["Stationary Egg"] = {
        Icon = "rbxassetid://101538037416517", 
        BlockPassiveCapture = true, 
        WeightPool = {
            10, 
            40
        }, 
        Chance = 0, 
        Rarity = "Special", 
        Resilience = 10000, 
        ForcedProgressEfficiency = 1, 
        Description = "why it so still", 
        Hint = "???", 
        FavouriteBait = "Water?", 
        FavouriteTime = nil, 
        Price = 10000, 
        XP = 5000, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Why isn't this egg moving..", 
            "So Still...", 
            "This egg is more still than Kita..."
        }, 
        SparkleColor = Color3.fromRGB(136, 136, 136), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Admin-Exclusive", 
        Unregistered = true, 
        Appraisable = false
    }, 
    ["Blinking Egg"] = {
        Icon = "rbxassetid://70588650432711", 
        BlockPassiveCapture = true, 
        WeightPool = {
            10, 
            40
        }, 
        Chance = 0, 
        Rarity = "Special", 
        Resilience = 75, 
        ProgressEfficiency = 1.25, 
        Description = "Cant win a staring contest.", 
        Hint = "???", 
        FavouriteBait = "Wink Wink", 
        FavouriteTime = nil, 
        Price = 10000, 
        XP = 5000, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "You blinked I win!", 
            "You blinked. I didn't.", 
            "Blink and you\226\128\153ll mis-, oh too late."
        }, 
        SparkleColor = Color3.fromRGB(136, 136, 136), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Admin-Exclusive", 
        Unregistered = true, 
        Appraisable = false
    }, 
    ["Bouncing Egg"] = {
        Icon = "rbxassetid://125201062461934", 
        BlockPassiveCapture = true, 
        WeightPool = {
            10, 
            40
        }, 
        Chance = 0, 
        Rarity = "Special", 
        Resilience = 25, 
        ProgressEfficiency = 1, 
        Description = "This egg just had its first coffee.", 
        Hint = "???", 
        FavouriteBait = "Trampoline", 
        FavouriteTime = nil, 
        Price = 10000, 
        XP = 5000, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Nice hops. Shame about the reflexes.", 
            "What goes up gets caught by me.", 
            "B o i n g B o i n g"
        }, 
        SparkleColor = Color3.fromRGB(136, 136, 136), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Admin-Exclusive", 
        Unregistered = true, 
        Appraisable = false
    }, 
    ["Cracked Egg"] = {
        Icon = "rbxassetid://80121327524009", 
        BlockPassiveCapture = true, 
        WeightPool = {
            10, 
            40
        }, 
        Chance = 0, 
        Rarity = "Special", 
        Resilience = 30, 
        ProgressEfficiency = 1.1, 
        Description = "I wonder what was inside..?", 
        Hint = "???", 
        FavouriteBait = "Scrambled Egg", 
        FavouriteTime = nil, 
        Price = 10000, 
        XP = 5000, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Why is it cracked open?", 
            "This egg is cracking me up..", 
            "HAHAHAHAHA!"
        }, 
        SparkleColor = Color3.fromRGB(136, 136, 136), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Admin-Exclusive", 
        Unregistered = true, 
        Appraisable = false
    }, 
    ["Puzzle Egg"] = {
        Icon = "rbxassetid://119828907008514", 
        BlockPassiveCapture = true, 
        WeightPool = {
            10, 
            40
        }, 
        Chance = 0, 
        Rarity = "Special", 
        Resilience = -40, 
        ForcedProgressEfficiency = 0.01, 
        Description = "Im puzzled how you even caught this. (see what i did there)", 
        Hint = "???", 
        FavouriteBait = "hi", 
        FavouriteTime = nil, 
        Price = 10000, 
        XP = 5000, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "I caught it\226\128\166 I think? It kind of caught me back.", 
            "uhhh hello?", 
            "Im puzzled on how i even caught this (get it)"
        }, 
        SparkleColor = Color3.fromRGB(136, 136, 136), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Admin-Exclusive", 
        Unregistered = true, 
        Appraisable = false
    }, 
    ["Golden Egg"] = {
        Icon = "rbxassetid://121469366536276", 
        BlockPassiveCapture = true, 
        WeightPool = {
            10, 
            40
        }, 
        Chance = 0, 
        Rarity = "Special", 
        Resilience = -40, 
        ForcedProgressEfficiency = 0.01, 
        Description = "its gold!", 
        Hint = "???", 
        FavouriteBait = "Au", 
        FavouriteTime = nil, 
        Price = 10000, 
        XP = 5000, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "PURE GOLD!"
        }, 
        SparkleColor = Color3.fromRGB(136, 136, 136), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Admin-Exclusive", 
        Unregistered = true, 
        Appraisable = false
    }, 
    ["Gygax Egg"] = {
        Icon = "rbxassetid://98156616152791", 
        BlockPassiveCapture = true, 
        WeightPool = {
            10, 
            40
        }, 
        Chance = 0, 
        Rarity = "Special", 
        Resilience = 5000, 
        ForcedProgressEfficiency = 0.01, 
        Description = "Roll me a 20..", 
        Hint = "???", 
        FavouriteBait = "Dice", 
        FavouriteTime = nil, 
        Price = 10000, 
        XP = 5000, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Eggceptional...", 
            "How does this thing even land?", 
            "Roll for hatch!"
        }, 
        SparkleColor = Color3.fromRGB(136, 136, 136), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Admin-Exclusive", 
        Unregistered = true, 
        Appraisable = false
    }, 
    ["Shadow Egg"] = {
        Icon = "rbxassetid://77980436603271", 
        BlockPassiveCapture = true, 
        WeightPool = {
            10, 
            40
        }, 
        Chance = 0, 
        Rarity = "Special", 
        Resilience = 75, 
        ProgressEfficiency = 1.25, 
        Description = "Found in the darkest light.", 
        Hint = "???", 
        FavouriteBait = "Refracting light", 
        FavouriteTime = nil, 
        Price = 10000, 
        XP = 5000, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "It weighs nothing and everything.", 
            "It doesn\226\128\153t belong here. But it waits here.", 
            "Fading from light arises the dark."
        }, 
        SparkleColor = Color3.fromRGB(136, 136, 136), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Admin-Exclusive", 
        Unregistered = true, 
        Appraisable = false
    }, 
    ["Bombastic Egg"] = {
        Icon = "rbxassetid://78210787051609", 
        BlockPassiveCapture = true, 
        WeightPool = {
            10, 
            40
        }, 
        Chance = 0, 
        Rarity = "Special", 
        Resilience = 20, 
        ForcedProgressEfficiency = 0.35, 
        Description = "boyy im soo tufff", 
        Hint = "???", 
        FavouriteBait = "Fire", 
        FavouriteTime = nil, 
        Price = 100000, 
        XP = 50000, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Mr Bombastic", 
            "KABOOM!", 
            "One crack... BOOM!"
        }, 
        SparkleColor = Color3.fromRGB(136, 136, 136), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Admin-Exclusive", 
        Unregistered = true, 
        Appraisable = false
    }, 
    ["Kind Egg"] = {
        Icon = "rbxassetid://99204215064174", 
        BlockPassiveCapture = true, 
        WeightPool = {
            10, 
            40
        }, 
        Chance = 0, 
        Rarity = "Special", 
        Resilience = 50, 
        ProgressEfficiency = 1.5, 
        Description = "Aweee its so sweet and caring <3.", 
        Hint = "???", 
        FavouriteBait = "Joy", 
        FavouriteTime = nil, 
        Price = 10000, 
        XP = 5000, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Great outfit!!!", 
            "Its so sweeeettt...", 
            "Nick couldnt think of something kind for this quip @nick and thank him."
        }, 
        SparkleColor = Color3.fromRGB(136, 136, 136), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Admin-Exclusive", 
        Unregistered = true, 
        Appraisable = false
    }, 
    ["Wanwood Egg"] = {
        Icon = "rbxassetid://85801152968338", 
        BlockPassiveCapture = true, 
        WeightPool = {
            10, 
            40
        }, 
        Chance = 0, 
        Rarity = "Special", 
        Resilience = 50, 
        ProgressEfficiency = 1.5, 
        Description = "Forged from the roots of the last waning grove.", 
        Hint = "???", 
        FavouriteBait = "Wood", 
        FavouriteTime = nil, 
        Price = 10000, 
        XP = 5000, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "I wonder what tree this came from.", 
            "Wan did i catch this wood. (laugh.)", 
            "This egg is a chip off the old block."
        }, 
        SparkleColor = Color3.fromRGB(136, 136, 136), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Admin-Exclusive", 
        Unregistered = true, 
        Appraisable = false
    }, 
    ["Bluesteel Egg"] = {
        Icon = "rbxassetid://134800248722371", 
        BlockPassiveCapture = true, 
        WeightPool = {
            10, 
            40
        }, 
        Chance = 0, 
        Rarity = "Special", 
        Resilience = 10, 
        ForcedProgressEfficiency = 0.3, 
        Description = "Heard to be the strongest egg..", 
        Hint = "???", 
        FavouriteBait = "Steel That Blue", 
        FavouriteTime = nil, 
        Price = 10000, 
        XP = 5000, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Sharper than it looks..", 
            "Eggstraordinary in blue steel", 
            "The yolk answers only the worthy"
        }, 
        SparkleColor = Color3.fromRGB(136, 136, 136), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Admin-Exclusive", 
        Unregistered = true, 
        Appraisable = false
    }, 
    ["Brainfreeze Egg"] = {
        Icon = "rbxassetid://93895707021642", 
        BlockPassiveCapture = true, 
        WeightPool = {
            10, 
            40
        }, 
        Chance = 0, 
        Rarity = "Special", 
        Resilience = 10000, 
        ForcedProgressEfficiency = 0.01, 
        Description = "BRAINFREEZE EGGS TO THE MOON!!!!", 
        Hint = "???", 
        FavouriteBait = "Tarnished", 
        FavouriteTime = nil, 
        Price = 100000, 
        XP = 5, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Shouldn't this be at Snowcap?", 
            "Frozen Egg...?"
        }, 
        SparkleColor = Color3.fromRGB(65, 105, 225), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Admin-Exclusive", 
        Unregistered = true, 
        Appraisable = false
    }, 
    Moon = {
        Icon = "rbxassetid://117017810074189", 
        BlockPassiveCapture = true, 
        WeightPool = {
            10000000, 
            30000000
        }, 
        Chance = 0, 
        Rarity = "Special", 
        Resilience = -500, 
        ForcedProgressEfficiency = 0.01, 
        Description = "\240\159\140\153", 
        Hint = "???", 
        FavouriteBait = "\240\159\140\153", 
        FavouriteTime = nil, 
        Price = 275000, 
        XP = 500000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "\240\159\140\153", 
            "THE WHOLE MOON?"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Admin-Exclusive", 
        Unregistered = true, 
        Appraisable = false
    }, 
    ["Rocket Ship"] = {
        Icon = "rbxassetid://111401036473126", 
        BlockPassiveCapture = true, 
        WeightPool = {
            1000000, 
            3000000
        }, 
        Chance = 0, 
        Rarity = "Special", 
        Resilience = -50, 
        ForcedProgressEfficiency = 0.05, 
        Description = "\240\159\154\128", 
        Hint = "???", 
        FavouriteBait = "\240\159\154\128", 
        FavouriteTime = nil, 
        Price = 170000, 
        XP = 200000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "\240\159\154\128", 
            "IT's LAUNCHING!!!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Admin-Exclusive", 
        Unregistered = true, 
        Appraisable = false
    }, 
    Star = {
        Icon = "rbxassetid://85895036109272", 
        BlockPassiveCapture = true, 
        WeightPool = {
            100, 
            300
        }, 
        Chance = 0, 
        Rarity = "Special", 
        Resilience = 30, 
        ForcedProgressEfficiency = 2, 
        Description = "\226\173\144", 
        Hint = "???", 
        FavouriteBait = "\226\173\144", 
        FavouriteTime = nil, 
        Price = 5000, 
        XP = 5000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "\226\173\144", 
            "A Star!?!"
        }, 
        SparkleColor = Color3.fromRGB(255, 236, 140), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Admin-Exclusive", 
        Unregistered = true, 
        Appraisable = false
    }, 
    ["Gargantuan Taco"] = {
        Icon = "rbxassetid://87597081132275", 
        BlockPassiveCapture = true, 
        WeightPool = {
            1000, 
            3000
        }, 
        Chance = 0, 
        Rarity = "Special", 
        Resilience = -50, 
        ForcedProgressEfficiency = -0.01, 
        Description = "\240\159\148\165\240\159\148\165\240\159\148\165", 
        Hint = "???", 
        FavouriteBait = "\240\159\148\165\240\159\148\165\240\159\148\165", 
        FavouriteTime = nil, 
        Price = 170000, 
        XP = 200000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "\240\159\148\165\240\159\148\165\240\159\148\165", 
            "Gargantuan Taco Tuesday?", 
            "Extra Spicy!!!", 
            "large yum"
        }, 
        SparkleColor = Color3.fromRGB(255, 157, 19), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Admin-Exclusive", 
        Unregistered = true, 
        Appraisable = false
    }, 
    Taco = {
        Icon = "rbxassetid://87539476182048", 
        BlockPassiveCapture = true, 
        WeightPool = {
            1, 
            3
        }, 
        Chance = 0, 
        Rarity = "Special", 
        Resilience = 50, 
        ForcedProgressEfficiency = 5, 
        Description = "\240\159\148\165", 
        Hint = "???", 
        FavouriteBait = "\240\159\148\165", 
        FavouriteTime = nil, 
        Price = 5000, 
        XP = 5000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "\240\159\148\165", 
            "Taco Tuesday?", 
            "Spicy!!!", 
            "yum"
        }, 
        SparkleColor = Color3.fromRGB(255, 157, 19), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Admin-Exclusive", 
        Unregistered = true, 
        Appraisable = false
    }, 
    ["Skeletal Serpent"] = {
        Icon = "rbxassetid://104034007206999", 
        BlockPassiveCapture = true, 
        WeightPool = {
            100000, 
            400000
        }, 
        Chance = 1, 
        Rarity = "Cataclysmic", 
        Resilience = -100, 
        ForcedProgressEfficiency = 0.03, 
        Description = "A monstrous, skeletal leviathan that coils through the lightless abyss, its bone-white form glowing with an unnatural, radiant sheen. Stirred from its ancient slumber by a catastrophic pulse of forbidden energy, it emerges from the deep when the seas fall silent, its haunting, resonant hum shattering sonar and reviving long-buried fears of the ocean's wrath. Sailors whisper it is a relic of a lost age, reborn in the wake of humanity's hubris.", 
        Hint = "???", 
        FavouriteBait = nil, 
        FavouriteTime = nil, 
        Price = 310000, 
        XP = 700000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "THE SKELETAL SERPENT?!", 
            "THAT THING'S MADE OF NIGHTMARES!", 
            "THE ABYSS HAS UNLEASHED ITS GUARDIAN!", 
            "MY SOUL JUST FROZE IN ITS GAZE!", 
            "NO SHIP COULD SURVIVE THIS MONSTER!"
        }, 
        SparkleColor = Color3.fromRGB(199, 199, 179), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "None", 
        Worlds = {
            "Sea 1"
        }, 
        HideInBestiary = true
    }, 
    ["Broken Scylla"] = {
        Icon = "rbxassetid://139893477524455", 
        BlockPassiveCapture = true, 
        WeightPool = {
            200000000, 
            500000000
        }, 
        Chance = 0, 
        Rarity = "Special", 
        Resilience = -100, 
        ForcedProgressEfficiency = -0.05, 
        Description = "what happened", 
        Hint = "???", 
        FavouriteBait = nil, 
        FavouriteTime = nil, 
        Price = 165425, 
        XP = 248, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "SCYLLA ITSELF!?!", 
            "IT'S REAL!?!?!?!", 
            "IT'S MASSIVE!!!", 
            "GET THE CAMERA!!!", 
            "THE LEGEND WAS TRUE!!!"
        }, 
        SparkleColor = Color3.fromRGB(255, 239, 201), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Admin-Exclusive", 
        Unregistered = true, 
        Appraisable = false
    }, 
    ["Glitched Shades"] = {
        Icon = "rbxassetid://90894371655626", 
        BlockPassiveCapture = true, 
        WeightPool = {
            1, 
            1
        }, 
        Chance = 0, 
        Rarity = "Special", 
        Resilience = 10, 
        ForcedProgressEfficiency = 1, 
        Description = "\240\159\148\167", 
        Hint = "???", 
        FavouriteBait = "\240\159\148\167", 
        FavouriteTime = nil, 
        Price = 50000, 
        XP = 50000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "\240\159\148\167"
        }, 
        SparkleColor = Color3.fromRGB(255, 157, 19), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Admin-Exclusive", 
        Unregistered = true, 
        Appraisable = false
    }, 
    ["Glitch Cap"] = {
        Icon = "rbxassetid://92878679528347", 
        BlockPassiveCapture = true, 
        WeightPool = {
            1, 
            1
        }, 
        Chance = 0, 
        Rarity = "Special", 
        Resilience = 10, 
        ForcedProgressEfficiency = 1, 
        Description = "\240\159\148\167", 
        Hint = "???", 
        FavouriteBait = "\240\159\148\167", 
        FavouriteTime = nil, 
        Price = 50000, 
        XP = 50000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "\240\159\148\167"
        }, 
        SparkleColor = Color3.fromRGB(255, 157, 19), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Admin-Exclusive", 
        Unregistered = true, 
        Appraisable = false
    }, 
    UFO = {
        Icon = "rbxassetid://133811860015401", 
        BlockPassiveCapture = true, 
        WeightPool = {
            10000, 
            40000
        }, 
        Chance = 0, 
        Rarity = "Special", 
        Resilience = -1000, 
        ForcedProgressEfficiency = 0.01, 
        Description = "\240\159\145\189", 
        Hint = "???", 
        FavouriteBait = "\240\159\145\189", 
        FavouriteTime = nil, 
        Price = 170000, 
        XP = 140000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "\240\159\145\189"
        }, 
        SparkleColor = Color3.fromRGB(255, 157, 19), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Admin-Exclusive", 
        Unregistered = true, 
        Appraisable = false
    }, 
    ["Alien Hat"] = {
        Icon = "rbxassetid://87472780107785", 
        BlockPassiveCapture = true, 
        WeightPool = {
            1, 
            1
        }, 
        Chance = 0, 
        Rarity = "Special", 
        Resilience = 100, 
        ForcedProgressEfficiency = 2, 
        Description = "\240\159\145\189", 
        Hint = "???", 
        FavouriteBait = "\240\159\145\189", 
        FavouriteTime = nil, 
        Price = 1000, 
        XP = 5000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "\240\159\145\189"
        }, 
        SparkleColor = Color3.fromRGB(255, 157, 19), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Admin-Exclusive", 
        Unregistered = true, 
        Appraisable = false
    }, 
    JellyBop = {
        Icon = "rbxassetid://122372591774816", 
        BlockPassiveCapture = true, 
        WeightPool = {
            1, 
            1
        }, 
        Chance = 0, 
        Rarity = "Special", 
        Resilience = 10, 
        ForcedProgressEfficiency = 0.03, 
        Description = "\240\159\145\189", 
        Hint = "???", 
        FavouriteBait = "\240\159\145\189", 
        FavouriteTime = nil, 
        Price = 50000, 
        XP = 50000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "\240\159\145\189"
        }, 
        SparkleColor = Color3.fromRGB(255, 157, 19), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Admin-Exclusive", 
        Unregistered = true, 
        Appraisable = false
    }, 
    Parasite = {
        Icon = "rbxassetid://110273813304381", 
        BlockPassiveCapture = true, 
        WeightPool = {
            10, 
            40
        }, 
        Chance = 0, 
        Rarity = "Special", 
        Resilience = -100, 
        ForcedProgressEfficiency = 0.5, 
        Description = "\240\159\145\189", 
        Hint = "???", 
        FavouriteBait = "\240\159\145\189", 
        FavouriteTime = nil, 
        Price = 10000, 
        XP = 9000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "\240\159\145\189"
        }, 
        SparkleColor = Color3.fromRGB(255, 157, 19), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Admin-Exclusive", 
        Unregistered = true, 
        Appraisable = false
    }, 
    ["Alien Buddy"] = {
        Icon = "rbxassetid://76763586364298", 
        BlockPassiveCapture = true, 
        WeightPool = {
            1, 
            4
        }, 
        Chance = 0, 
        Rarity = "Special", 
        Resilience = 100, 
        ForcedProgressEfficiency = 5, 
        Description = "\240\159\145\189", 
        Hint = "???", 
        FavouriteBait = "\240\159\145\189", 
        FavouriteTime = nil, 
        Price = 140000, 
        XP = 100000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "\240\159\145\189"
        }, 
        SparkleColor = Color3.fromRGB(255, 157, 19), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Admin-Exclusive", 
        Unregistered = true, 
        Appraisable = false
    }, 
    Frank = {
        Icon = "rbxassetid://82444978114724", 
        BlockPassiveCapture = true, 
        WeightPool = {
            1, 
            4
        }, 
        Chance = 0, 
        Rarity = "Special", 
        Resilience = 1000, 
        ForcedProgressEfficiency = 1.67, 
        Description = "yummy", 
        Hint = "???", 
        FavouriteBait = "Ketchup", 
        FavouriteTime = nil, 
        Price = 1000, 
        XP = 5000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "what the frank"
        }, 
        SparkleColor = Color3.fromRGB(255, 157, 19), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Admin-Exclusive", 
        Unregistered = true, 
        Appraisable = false
    }, 
    ["Mustard Hat"] = {
        Icon = "rbxassetid://94265963510911", 
        BlockPassiveCapture = true, 
        WeightPool = {
            14, 
            14
        }, 
        Chance = 0, 
        Rarity = "Special", 
        Resilience = 1000, 
        ForcedProgressEfficiency = 0.33, 
        Description = "it seems to have infinite mustard...", 
        Hint = "???", 
        FavouriteBait = "Mustard", 
        FavouriteTime = nil, 
        Price = 1000, 
        XP = 5000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "six", 
            "seven"
        }, 
        SparkleColor = Color3.fromRGB(255, 234, 0), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Admin-Exclusive", 
        Unregistered = true, 
        Appraisable = false
    }, 
    ["Freezing Shroom"] = {
        Icon = "rbxassetid://139002332681045", 
        WeightPool = {
            2, 
            7
        }, 
        Chance = 50, 
        Rarity = "Trash", 
        Resilience = 5, 
        ProgressEfficiency = 1.3, 
        Description = "A frost-covered mushroom that thrives in Snowburrow's icy crevices. Its brittle, chilled cap glows faintly under moonlight, often mistaken for a frozen gem by novice anglers.", 
        Hint = "???", 
        FavouriteBait = "None", 
        FavouriteTime = "Night", 
        Price = 65, 
        XP = 30, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A Freezing Shroom?", 
            "Brr, this mushroom's ice-cold!", 
            "Got a frosty shroom!"
        }, 
        SparkleColor = Color3.fromRGB(255, 82, 82), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Snowburrow"
    }, 
    ["Glacial Fragment"] = {
        Icon = "rbxassetid://94168451189554", 
        WeightPool = {
            10, 
            10
        }, 
        Chance = 1, 
        Rarity = "Fragment", 
        Resilience = 100, 
        ProgressEfficiency = 1.1, 
        Description = "A shimmering shard of ancient ice, etched with swirling patterns resembling turbulent ocean waves. Rumored to hold the essence of Snowburrow\226\128\153s frozen seas.", 
        Hint = "???", 
        FavouriteBait = "None", 
        FavouriteTime = "None", 
        Price = 3000, 
        XP = 1200, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Glacial Fragment!", 
            "This shard's freezing my hands!", 
            "Wow, an ancient icy relic!"
        }, 
        SparkleColor = Color3.fromRGB(126, 124, 123), 
        HoldAnimation = l_fish_0:WaitForChild("small"), 
        From = "Snowburrow"
    }, 
    Penguin = {
        Icon = "rbxassetid://103896418195207", 
        WeightPool = {
            10, 
            35
        }, 
        Chance = 1, 
        Rarity = "Mythical", 
        Resilience = 5, 
        ProgressEfficiency = 0.3, 
        Description = "A playful penguin, waddling gracefully on the icy slopes. Rarely caught, it\226\128\153s known for its curious nature and habit of stealing from traps.", 
        Hint = "Occasionally caught by traps.", 
        FavouriteBait = "None", 
        FavouriteTime = "Night", 
        Price = 9500, 
        XP = 7000, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A PENGUIN! Look at it waddle!", 
            "Caught a sneaky little penguin!", 
            "This one's a frosty friend!", 
            "How'd it get stuck here?"
        }, 
        SparkleColor = Color3.fromRGB(255, 82, 82), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Snowburrow"
    }, 
    ["White Sturgeon"] = {
        Icon = "rbxassetid://127042762092613", 
        WeightPool = {
            2000, 
            7000
        }, 
        Chance = 1, 
        Rarity = "Exotic", 
        Resilience = 5, 
        ProgressEfficiency = 0.2, 
        Description = "A majestic White Sturgeon, gliding through Snowburrow\226\128\153s icy depths. Its massive, armored body and silvery scales make it a legendary catch among anglers.", 
        Hint = "???", 
        FavouriteBait = "Truffle Worm", 
        FavouriteTime = "Night", 
        Price = 11500, 
        XP = 5000, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A WHITE STURGEON!", 
            "A LEGEND!", 
            "REELED IN A MASSIVE STURGEON!", 
            "IT'S HUGE!"
        }, 
        SparkleColor = Color3.fromRGB(255, 82, 82), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Snowburrow"
    }, 
    Ashclaw = {
        Icon = "rbxassetid://108850491070280", 
        BlockPassiveCapture = true, 
        WeightPool = {
            2000000, 
            5000000
        }, 
        Chance = 1, 
        Rarity = "Cataclysmic", 
        Resilience = -70, 
        ForcedProgressEfficiency = 0.05, 
        Description = "Born from magma and fury, the Ashclaw scuttles through the lowest point of lava within Roslit Bay's volcano. Its shell burns with the heat of a thousand eruptions, and its claws leave trails of ember wherever it walks.", 
        Hint = "???", 
        FavouriteBait = "Coal", 
        FavouriteTime = nil, 
        Price = 320000, 
        XP = 640000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "I SAVED US FROM THE ERUPTION!!!", 
            "VOLCANIC CRAB!!!", 
            "HOT HOT HOT!", 
            "MR. CR-... GIANT CRAB!"
        }, 
        SparkleColor = Color3.fromRGB(136, 112, 89), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Roslit Volcano"
    }, 
    Charybdis = {
        Icon = "rbxassetid://134631974573413", 
        BlockPassiveCapture = true, 
        WeightPool = {
            10000000, 
            40000000
        }, 
        Chance = 1, 
        Rarity = "Cataclysmic", 
        Resilience = -70, 
        ForcedProgressEfficiency = 0.05, 
        Description = "A colossal vortex given form; Charybdis devours all who draw near. Said to have once been a goddess cursed to hunger eternally, her swirling maw still consumes ships, storms, and even the sea itself.", 
        Hint = "???", 
        FavouriteBait = {
            "Meteor", 
            "Stag Beetle"
        }, 
        FavouriteTime = "Night", 
        Price = 315000, 
        XP = 647000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "FROM THE TRENCHES OF THE OCEAN!"
        }, 
        SparkleColor = Color3.fromRGB(136, 136, 136), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Ocean"
    }, 
    Lusca = {
        Icon = "rbxassetid://91580952772256", 
        BlockPassiveCapture = true, 
        WeightPool = {
            10000000, 
            40000000
        }, 
        Chance = 1, 
        Rarity = "Cataclysmic", 
        Resilience = -70, 
        ForcedProgressEfficiency = 0.05, 
        Description = "A terrifying hybrid of shark and octopus, Lusca is said to guard the sunken passages of the deep. Sailors whisper that its roar can split coral and drag down entire fleets beneath the waves.", 
        Hint = "???", 
        FavouriteBait = {
            "Meteor", 
            "Stag Beetle"
        }, 
        FavouriteTime = "Day", 
        Price = 312000, 
        XP = 651000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "FROM THE TRENCHES OF THE OCEAN!"
        }, 
        SparkleColor = Color3.fromRGB(136, 77, 78), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Ocean"
    }, 
    Akkorokamui = {
        Icon = "rbxassetid://137659114038895", 
        BlockPassiveCapture = true, 
        WeightPool = {
            10000000, 
            40000000
        }, 
        Chance = 1, 
        Rarity = "Cataclysmic", 
        Resilience = -70, 
        ForcedProgressEfficiency = 0.05, 
        Description = "A divine cephalopod from ancient legend, Akkorokamui's scarlet tendrils glow like veins of fire through the sea. It is said to grant great fortune to those it spares; and swift demise to those it doesn't.", 
        Hint = "???", 
        FavouriteBait = {
            "Meteor", 
            "Stag Beetle"
        }, 
        FavouriteTime = nil, 
        Price = 311000, 
        XP = 652000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "FROM THE TRENCHES OF THE OCEAN!"
        }, 
        SparkleColor = Color3.fromRGB(136, 44, 46), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Ocean"
    }, 
    ["Experimental Salmon"] = {
        Icon = "rbxassetid://94033445887927", 
        WeightPool = {
            20, 
            70
        }, 
        Chance = 0, 
        Rarity = "Secret", 
        Resilience = 90, 
        ProgressEfficiency = 1.2, 
        Description = "Common near Salmon Sockeye are Moosewood for known colours green vibrant red their, habits eggs laying interesting. Colder during such are very seasons Autumn most common, eggs the lay Salmon time as Sockeye is that.", 
        Hint = "Resides freshwaters Moosewood along some oceans in. Shrimp prefers.", 
        FavouriteBait = "Bagel", 
        FavouriteTime = nil, 
        Price = 45, 
        XP = 25, 
        Seasons = {
            "Autumn", 
            "Winter"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "Salmoff!", 
            "Woah!", 
            "Awesome!", 
            "An Experimental Salmon!", 
            "Woah, An Experimental Salmon!", 
            "A Experimental Salmon!"
        }, 
        SparkleColor = Color3.fromRGB(255, 160, 160), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "None", 
        HideInBestiary = true, 
        Unregistered = true
    }, 
    ["Beach Crate"] = {
        Icon = "rbxassetid://117219061539158", 
        WeightPool = {
            80, 
            80
        }, 
        Chance = 0, 
        Rarity = "Limited", 
        Resilience = 90, 
        Description = "A beachy wooden crate with patterned fabric over top to preserve the bait inside. It looks like it drifted ashore after a long walk at the beach! Opening it might reveal an assortment of sunny, seaside baits!", 
        Hint = "Only can be bought or fished up during Fischfest.", 
        FavouriteBait = "Magnet", 
        FavouriteTime = nil, 
        BuyMult = 2.3, 
        Price = 500, 
        Unpurchasable = true, 
        XP = 300, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Crate of Beach Bait!", 
            "A Beach Crate!", 
            "Woah! A Crate!", 
            "A Crate!", 
            "Who left this here?", 
            "Oh, the Beach Ball is still bouncing?", 
            "A Crate full of beach Umbrellas!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("crate"), 
        FromLimited = "Fischfest", 
        From = "Fischfest", 
        IsLimitedBestiary = true, 
        IsCrate = true, 
        CrateType = "All", 
        Currency = "Shells", 
        BaitContents = {
            "Umbrella", 
            "Beach Ball"
        }, 
        CoinContents = {
            2, 
            5
        }
    }, 
    Sunsquid = {
        Icon = "rbxassetid://84619389646807", 
        WeightPool = {
            10, 
            50
        }, 
        Chance = 100, 
        Rarity = "Limited", 
        Resilience = 100, 
        Description = "A radiant squid that shimmers under the summer sun, known for its bright, sunny disposition and ink that glows like sunlight.", 
        Hint = "Only can be caught by fishing during Fischfest.", 
        FavouriteBait = nil, 
        FavouriteTime = nil, 
        Price = 200, 
        XP = 100, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "Woah, a Sunsquid!", 
            "Caught a Sunsquid!", 
            "Sunny catch!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        FromLimited = "Fischfest", 
        From = "Fischfest", 
        IsLimitedBestiary = true
    }, 
    ["Surfboard Ray"] = {
        Icon = "rbxassetid://81461603380331", 
        WeightPool = {
            20, 
            100
        }, 
        Chance = 93, 
        Rarity = "Limited", 
        Resilience = 93, 
        Description = "A flat ray that glides through the waves like a surfboard, often seen riding currents near summer beaches.", 
        Hint = "Only can be caught by fishing during Fischfest.", 
        FavouriteBait = "Umbrella", 
        FavouriteTime = nil, 
        Price = 210, 
        XP = 180, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Woah, a Surfboard Ray!", 
            "Surf's up with this ray!", 
            "Caught a Surfboard Ray!"
        }, 
        SparkleColor = Color3.fromRGB(0, 191, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        FromLimited = "Fischfest", 
        From = "Fischfest", 
        IsLimitedBestiary = true
    }, 
    ["Beach Ball Pufferfish"] = {
        Icon = "rbxassetid://121965085861167", 
        WeightPool = {
            5, 
            30
        }, 
        Chance = 86, 
        Rarity = "Limited", 
        Resilience = 86, 
        Description = "A colorful pufferfish patterned like a beach ball, inflates to scare off predators during hot summer days.", 
        Hint = "Only can be caught by fishing during Fischfest.", 
        FavouriteBait = nil, 
        FavouriteTime = "Night", 
        Price = 430, 
        XP = 210, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "Woah, a Beach Ball Pufferfish!", 
            "Puffed up like a ball!", 
            "Beach Ball Pufferfish caught!"
        }, 
        SparkleColor = Color3.fromRGB(255, 0, 0), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        FromLimited = "Fischfest", 
        From = "Fischfest", 
        IsLimitedBestiary = true
    }, 
    Sunglasses = {
        Icon = "rbxassetid://80152092813336", 
        WeightPool = {
            1, 
            1
        }, 
        Chance = 79, 
        Rarity = "Limited", 
        Resilience = 79, 
        Description = "Stylish sunglasses lost by beachgoers, drifting in the ocean; essential for blocking those intense summer rays.", 
        Hint = "Only can be caught during Fischfest by the shoreline.", 
        FavouriteBait = "Umbrella", 
        FavouriteTime = nil, 
        Price = 640, 
        XP = 320, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Woah, Sunglasses!", 
            "Shades from the sea!", 
            "Caught some Sunglasses!"
        }, 
        SparkleColor = Color3.fromRGB(0, 0, 0), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        FromLimited = "Fischfest", 
        From = "Fischfest", 
        IsLimitedBestiary = true
    }, 
    ["Sea Sponge"] = {
        Icon = "rbxassetid://75625571998165", 
        WeightPool = {
            2, 
            10
        }, 
        Chance = 72, 
        Rarity = "Limited", 
        Resilience = 72, 
        Description = "A vibrant sea sponge flourishing in warm summer waters, filtering the ocean and adding color to reefs.", 
        Hint = "Only can be caught during Fischfest by the shoreline.", 
        FavouriteBait = "Beach Ball", 
        FavouriteTime = nil, 
        Price = 850, 
        XP = 420, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Clear", 
            "None", 
            "Foggy"
        }, 
        Quips = {
            "Woah, a Sea Sponge!", 
            "Spongy catch!", 
            "Sea Sponge hauled in!", 
            "Where's the pineapple?", 
            "I think it lost it's spatula..."
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 0), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        FromLimited = "Fischfest", 
        From = "Fischfest", 
        IsLimitedBestiary = true
    }, 
    ["Lifeguard Whistle"] = {
        Icon = "rbxassetid://118450294208398", 
        WeightPool = {
            1, 
            3
        }, 
        Chance = 65, 
        Rarity = "Limited", 
        Resilience = 65, 
        Description = "A bright red whistle used by lifeguards to signal during bustling summer beach days.", 
        Hint = "Only can be caught during Fischfest by the shoreline.", 
        FavouriteBait = "Umbrella", 
        FavouriteTime = "Night", 
        Price = 1070, 
        XP = 530, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Rain", 
            "Windy"
        }, 
        Quips = {
            "Woah, a Lifeguard Whistle!", 
            "Whistle from the waves!", 
            "Caught a Lifeguard Whistle!"
        }, 
        SparkleColor = Color3.fromRGB(255, 0, 0), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        FromLimited = "Fischfest", 
        From = "Fischfest", 
        IsLimitedBestiary = true
    }, 
    ["Sand Castle"] = {
        Icon = "rbxassetid://114665478018402", 
        WeightPool = {
            5, 
            20
        }, 
        Chance = 58, 
        Rarity = "Limited", 
        Resilience = 58, 
        Description = "A tiny sand castle sculpted by the tides, symbolizing endless summer fun on the beach.", 
        Hint = "Only can be caught during Fischfest by the shoreline.", 
        FavouriteBait = nil, 
        FavouriteTime = nil, 
        Price = 1280, 
        XP = 640, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "Woah, a Sand Castle!", 
            "Castle from the sea!", 
            "Who built this?"
        }, 
        SparkleColor = Color3.fromRGB(210, 180, 140), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        FromLimited = "Fischfest", 
        From = "Fischfest", 
        IsLimitedBestiary = true
    }, 
    ["Sunscreen Bottle"] = {
        Icon = "rbxassetid://136778032627072", 
        WeightPool = {
            2, 
            5
        }, 
        Chance = 51, 
        Rarity = "Limited", 
        Resilience = 51, 
        Description = "A half-used bottle of sunscreen, vital for protecting skin during long, sunny summer outings.", 
        Hint = "Only can be caught during Fischfest by the shoreline.", 
        FavouriteBait = nil, 
        FavouriteTime = nil, 
        Price = 1500, 
        XP = 700, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Foggy", 
            "Rain"
        }, 
        Quips = {
            "Woah, a Sunscreen Bottle!", 
            "Sun protection from the deep!", 
            "Caught a Sunscreen Bottle!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        FromLimited = "Fischfest", 
        From = "Fischfest", 
        IsLimitedBestiary = true
    }, 
    Tidepopper = {
        Icon = "rbxassetid://122494927908902", 
        WeightPool = {
            50, 
            150
        }, 
        Chance = 44, 
        Rarity = "Limited", 
        Resilience = 44, 
        Description = "A energetic fish that bursts from the tides, thriving in the dynamic waves of summer shores.", 
        Hint = "Only can be caught during Fischfest by the shoreline or by fishing.", 
        FavouriteBait = "Umbrella", 
        FavouriteTime = nil, 
        Price = 1710, 
        XP = 870, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Woah, a Tidepopper!", 
            "Popped a Tidepopper!", 
            "Tidepopper caught!"
        }, 
        SparkleColor = Color3.fromRGB(225, 169, 169), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        FromLimited = "Fischfest", 
        From = "Fischfest", 
        IsLimitedBestiary = true
    }, 
    Coconut = {
        Icon = "rbxassetid://130760391269228", 
        WeightPool = {
            5, 
            15
        }, 
        Chance = 37, 
        Rarity = "Limited", 
        Resilience = 37, 
        Description = "A ripe coconut floating in the ocean, embodying the tropical essence of summer vacations.", 
        Hint = "Only can be caught during Fischfest by the shoreline or by fishing.", 
        FavouriteBait = "Beach Ball", 
        FavouriteTime = nil, 
        Price = 1980, 
        XP = 960, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Foggy", 
            "Clear"
        }, 
        Quips = {
            "Woah, a Coconut!", 
            "Tropical treat caught!", 
            "Coconut from the sea!", 
            "NOT an ancient bowling ball!"
        }, 
        SparkleColor = Color3.fromRGB(139, 69, 19), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        FromLimited = "Fischfest", 
        From = "Fischfest", 
        IsLimitedBestiary = true
    }, 
    Shellphone = {
        Icon = "rbxassetid://123826918372013", 
        WeightPool = {
            2, 
            8
        }, 
        Chance = 30, 
        Rarity = "Limited", 
        Resilience = 30, 
        ProgressEfficiency = 0.95, 
        Description = "A large conch shell that functions like a phone, echoing the sounds of summer waves and seagulls.", 
        Hint = "Only can be caught during Fischfest by the shoreline or by fishing.", 
        FavouriteBait = "Umbrella", 
        FavouriteTime = "Night", 
        Price = 2120, 
        XP = 1070, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "None", 
            "Windy", 
            "Clear"
        }, 
        Quips = {
            "Woah, a Shellphone!", 
            "Shell yeah!", 
            "Caught a Shellphone!"
        }, 
        SparkleColor = Color3.fromRGB(225, 174, 255), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        FromLimited = "Fischfest", 
        From = "Fischfest", 
        IsLimitedBestiary = true
    }, 
    Popsicle = {
        Icon = "rbxassetid://137604909770864", 
        WeightPool = {
            1, 
            4
        }, 
        Chance = 23, 
        Rarity = "Limited", 
        Resilience = 23, 
        Description = "A melting popsicle lost in the water, a refreshing remnant of summer heatwaves.", 
        Hint = "Only can be caught during Fischfest by the shoreline or by fishing.", 
        FavouriteBait = nil, 
        FavouriteTime = nil, 
        Price = 2360, 
        XP = 1180, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Clear", 
            "Foggy", 
            "Windy"
        }, 
        Quips = {
            "Woah, a Popsicle!", 
            "Cool catch!", 
            "Popsicle from the ocean!"
        }, 
        SparkleColor = Color3.fromRGB(201, 234, 255), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        FromLimited = "Fischfest", 
        From = "Fischfest", 
        IsLimitedBestiary = true
    }, 
    ["Message in a Bottle"] = {
        Icon = "rbxassetid://107968047922066", 
        WeightPool = {
            3, 
            10
        }, 
        Chance = 16, 
        Rarity = "Limited", 
        Resilience = 16, 
        ProgressEfficiency = 0.9, 
        Description = "A sealed bottle with a secret message inside, carried by summer currents from distant shores.", 
        Hint = "Only can be caught during Fischfest by the shoreline or by fishing.", 
        FavouriteBait = "Umbrella", 
        FavouriteTime = nil, 
        Price = 2500, 
        XP = 1250, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "Woah, a Message in a Bottle!", 
            "Mysterious message caught!", 
            "Bottle with a note!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        ViewportSizeOffset = 2, 
        FromLimited = "Fischfest", 
        From = "Fischfest", 
        IsLimitedBestiary = true
    }, 
    ["Tiki Mask"] = {
        Icon = "rbxassetid://76829756398134", 
        WeightPool = {
            14, 
            14
        }, 
        Chance = 9, 
        Rarity = "Limited", 
        Resilience = 9, 
        ProgressEfficiency = 0.875, 
        Description = "An intricately carved tiki mask, representing tropical spirits and summer festivities!", 
        Hint = "Only can be caught during Fischfest by the shoreline or by fishing.", 
        FavouriteBait = "Beach Ball", 
        FavouriteTime = nil, 
        Price = 2780, 
        XP = 1390, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Woah, a Tiki Mask!", 
            "Tropical treasure!", 
            "Caught a Tiki Mask!"
        }, 
        SparkleColor = Color3.fromRGB(139, 69, 19), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        FromLimited = "Fischfest", 
        From = "Fischfest", 
        IsLimitedBestiary = true
    }, 
    Sandslasher = {
        Icon = "rbxassetid://107928250302719", 
        WeightPool = {
            140000, 
            200000
        }, 
        Chance = 1, 
        FinalChanceDivisor = 20, 
        Rarity = "Limited", 
        Resilience = -50, 
        ForcedProgressEfficiency = 0.1, 
        Description = "The Sandslasher is a colossal and feared predator of the arid wastes. Its elongated, armored body is lined with jagged, sandstone-like scales that blend seamlessly with the desert dunes. Rows of barbed fins run down its back, kicking up blinding clouds of sand as it moves beneath the surface. Near its head, two massive scythe-like claws extend outward, capable of tearing through prey; or unwary fishing lines; in a single motion. Hooking the Sandslasher is a rare feat; landing it marks an angler as nothing short of a desert legend.", 
        Hint = "???", 
        FavouriteBait = "Beached Pearl", 
        FavouriteTime = "Day", 
        Price = 30000, 
        XP = 15000, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A SANDSLASHER!!", 
            "IT'S HEAVY!", 
            "WHAT IS THIS THING?!", 
            "WOAH!!!", 
            "SERPENT!!!!!", 
            "SCOURGE OF THE SAND!!!"
        }, 
        SparkleColor = Color3.fromRGB(255, 237, 137), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        FromLimited = "Fischfest", 
        From = "Fischfest", 
        IsLimitedBestiary = true
    }, 
    ["Mango Smoothie"] = {
        Icon = "rbxassetid://89719581179365", 
        BlockPassiveCapture = true, 
        WeightPool = {
            8, 
            38
        }, 
        Chance = 0, 
        Rarity = "Special", 
        Resilience = 1000, 
        ForcedProgressEfficiency = 10, 
        Description = "\240\159\165\173", 
        Hint = "???", 
        FavouriteBait = "Mango", 
        FavouriteTime = nil, 
        Price = 10000, 
        XP = 8000, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "\240\159\165\173!", 
            "MANGO MANGO MANGO MANGO MANGO!"
        }, 
        SparkleColor = Color3.fromRGB(255, 157, 19), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Admin-Exclusive", 
        Unregistered = true, 
        Appraisable = false
    }, 
    Mango = {
        Icon = "rbxassetid://133455972417851", 
        BlockPassiveCapture = true, 
        WeightPool = {
            10, 
            40
        }, 
        Chance = 0, 
        Rarity = "Special", 
        Resilience = 100, 
        ForcedProgressEfficiency = 5, 
        Description = "\240\159\165\173", 
        Hint = "???", 
        FavouriteBait = "Mango", 
        FavouriteTime = nil, 
        Price = 1000, 
        XP = 5000, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "\240\159\165\173!", 
            "MANGO MANGO MANGO MANGO MANGO!"
        }, 
        SparkleColor = Color3.fromRGB(255, 157, 19), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Admin-Exclusive", 
        Unregistered = true, 
        Appraisable = false
    }, 
    ["Mango Whale"] = {
        Icon = "rbxassetid://79284730121010", 
        BlockPassiveCapture = true, 
        WeightPool = {
            100, 
            400
        }, 
        Chance = 0, 
        Rarity = "Special", 
        Resilience = 10, 
        ForcedProgressEfficiency = 1, 
        Description = "\240\159\165\173", 
        Hint = "???", 
        FavouriteBait = "Mango", 
        FavouriteTime = nil, 
        Price = 200000, 
        XP = 50000, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "\240\159\165\173!", 
            "MANGO MANGO MANGO MANGO MANGO!"
        }, 
        SparkleColor = Color3.fromRGB(255, 157, 19), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Admin-Exclusive", 
        Unregistered = true, 
        Appraisable = false
    }, 
    ["Black Iron Bucket"] = {
        Icon = "rbxassetid://79446027316811", 
        BlockPassiveCapture = true, 
        WeightPool = {
            10, 
            40
        }, 
        Chance = 0, 
        Rarity = "Special", 
        Resilience = 10000, 
        ForcedProgressEfficiency = 0.01, 
        Description = "tarnished stinks", 
        Hint = "???", 
        FavouriteBait = "$5", 
        FavouriteTime = nil, 
        Price = 100000, 
        XP = 5, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "I HATE TARNISHED!", 
            "PING @YVLYF FOR FREE NESSIES!", 
            "WRONG BUCKET!"
        }, 
        SparkleColor = Color3.fromRGB(136, 136, 136), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Admin-Exclusive", 
        Unregistered = true, 
        Appraisable = false
    }, 
    Flashlight = {
        Icon = "rbxassetid://136070923388171", 
        BlockPassiveCapture = true, 
        WeightPool = {
            5, 
            15
        }, 
        Chance = 0, 
        Rarity = "Special", 
        Resilience = 100, 
        ProgressEfficiency = 0.8, 
        Description = "It doesn't seem to turn off...", 
        Hint = "???", 
        FavouriteBait = "Magnet", 
        FavouriteTime = nil, 
        Price = 10000, 
        XP = 5000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "THE LIGHT!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Admin-Exclusive", 
        Unregistered = true, 
        Appraisable = false
    }, 
    Singularity = {
        Icon = "rbxassetid://106266362085397", 
        BlockPassiveCapture = true, 
        WeightPool = {
            99999999, 
            99999999
        }, 
        Chance = 0, 
        Rarity = "Special", 
        Resilience = -200, 
        ForcedProgressEfficiency = 0, 
        Description = "A point of infinite density where space, time, and the laws of physics cease to operate as we know them.", 
        Hint = "???", 
        FavouriteBait = nil, 
        FavouriteTime = nil, 
        Price = 0, 
        XP = 1000000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Impossible..."
        }, 
        SparkleColor = Color3.fromRGB(29, 29, 29), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Admin-Exclusive", 
        Unregistered = true, 
        Appraisable = false
    }, 
    Snowflake = {
        Icon = "rbxassetid://108520209984073", 
        BlockPassiveCapture = true, 
        WeightPool = {
            1, 
            1
        }, 
        Chance = 0, 
        Rarity = "Special", 
        Resilience = 50, 
        ProgressEfficiency = 2, 
        Description = "A delicate crystal of frozen perfection, each one uniquely sculpted by the winter wind.", 
        Hint = "???", 
        FavouriteBait = nil, 
        FavouriteTime = nil, 
        Price = 100, 
        XP = 200, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "How hasn't it melted?", 
            "Pretty!", 
            "Too unique to last!", 
            "Fragile!", 
            "Blink and it\226\128\153s gone!", 
            "One of a kind!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Admin-Exclusive", 
        Unregistered = true, 
        Appraisable = false
    }, 
    Snowman = {
        Icon = "rbxassetid://109308406263317", 
        BlockPassiveCapture = true, 
        WeightPool = {
            20, 
            100
        }, 
        Chance = 0, 
        Rarity = "Special", 
        Resilience = -50, 
        ProgressEfficiency = 0.1, 
        Description = "A jolly sentinel of snow, brought to life with a smile of coal and a heart of winter cheer!", 
        Hint = "???", 
        FavouriteBait = nil, 
        FavouriteTime = nil, 
        Price = 80000, 
        XP = 50000, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "FROSTY?", 
            "WINTER SPIRIT!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Admin-Exclusive", 
        Unregistered = true, 
        Appraisable = false
    }, 
    Fridge = {
        Icon = "rbxassetid://71109585429851", 
        BlockPassiveCapture = true, 
        WeightPool = {
            3000, 
            10000
        }, 
        Chance = 0, 
        Rarity = "Special", 
        Resilience = 10000, 
        ProgressEfficiency = 0.01, 
        Description = "where is my chicken sandwich", 
        Hint = "???", 
        FavouriteBait = nil, 
        FavouriteTime = nil, 
        Price = 100000, 
        XP = 300000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "any food left?"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Admin-Exclusive", 
        Unregistered = true, 
        Appraisable = false
    }, 
    Ghost = {
        Icon = "rbxassetid://70551777935380", 
        BlockPassiveCapture = true, 
        WeightPool = {
            1, 
            10
        }, 
        Chance = 0, 
        Rarity = "Special", 
        Resilience = -50, 
        ProgressEfficiency = 0.1, 
        Description = "A spectral entity, often a deceased person's spirit, lingering in the physical world.", 
        Hint = "???", 
        FavouriteBait = nil, 
        FavouriteTime = nil, 
        Price = 8000, 
        XP = 5000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "AHHH!", 
            "SPOOKY!", 
            "DON'T CURSE ME!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Admin-Exclusive", 
        Unregistered = true, 
        Appraisable = false
    }, 
    Ghoul = {
        Icon = "rbxassetid://80925659996967", 
        BlockPassiveCapture = true, 
        WeightPool = {
            2, 
            20
        }, 
        Chance = 0, 
        Rarity = "Special", 
        Resilience = -70, 
        ProgressEfficiency = 0.05, 
        Description = "A malevolent, ghost-like spirit that preys on the living, far more dangerous than a typical ghost.", 
        Hint = "???", 
        FavouriteBait = nil, 
        FavouriteTime = nil, 
        Price = 80000, 
        XP = 32000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "AHHH!", 
            "SPOOKY!", 
            "DON'T CURSE ME!"
        }, 
        SparkleColor = Color3.fromRGB(110, 73, 136), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Admin-Exclusive", 
        Unregistered = true, 
        Appraisable = false
    }, 
    Poltergeist = {
        Icon = "rbxassetid://77911586085757", 
        BlockPassiveCapture = true, 
        WeightPool = {
            30, 
            300
        }, 
        Chance = 0, 
        Rarity = "Special", 
        Resilience = -100, 
        ForcedProgressEfficiency = 0.02, 
        Description = "A malevolent and chaotic spirit with destructive power, capable of violently hurling objects, manipulating environments, and instilling terror through aggressive, unpredictable disturbances.", 
        Hint = "???", 
        FavouriteBait = nil, 
        FavouriteTime = nil, 
        Price = 152000, 
        XP = 520000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "AHHH!", 
            "SPOOKY!", 
            "DON'T CURSE ME!", 
            "IT'S REAL???"
        }, 
        SparkleColor = Color3.fromRGB(116, 114, 136), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Admin-Exclusive", 
        Unregistered = true, 
        Appraisable = false
    }, 
    ["Golden Nessie"] = {
        Icon = "rbxassetid://106097180345539", 
        BlockPassiveCapture = true, 
        WeightPool = {
            200000, 
            400000
        }, 
        Chance = 0, 
        Rarity = "Special", 
        Resilience = 5, 
        ProgressEfficiency = 0.2, 
        Description = "A once known myth, encased in pure gold...", 
        Hint = "???", 
        FavouriteBait = "Golden Worm", 
        FavouriteTime = nil, 
        Price = 155000, 
        XP = 300000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "WOAH, NESSIE!?!", 
            "MY BACCKK", 
            "I CAN'T BELIEVE IT! NESSIE!", 
            "I DIDN'T THINK IT WAS REAL!!", 
            "IT'S MADE OF GOLD?"
        }, 
        SparkleColor = Color3.fromRGB(255, 247, 130), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Admin-Exclusive", 
        Unregistered = true, 
        Appraisable = false
    }, 
    ["Golden Scylla"] = {
        Icon = "rbxassetid://91261408106664", 
        BlockPassiveCapture = true, 
        WeightPool = {
            20000000, 
            50000000
        }, 
        Chance = 0, 
        Rarity = "Special", 
        Resilience = -100, 
        ProgressEfficiency = 0.05, 
        Description = "The mythological, multi-headed being; touched by the purest of gold.", 
        Hint = "???", 
        FavouriteBait = "Golden Worm", 
        FavouriteTime = nil, 
        Price = 150000, 
        XP = 500000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "SCYLLA ITSELF!?!", 
            "IT'S REAL!?!?!?!", 
            "IT'S MASSIVE!!!", 
            "GET THE CAMERA!!!", 
            "THE LEGEND WAS TRUE!!!", 
            "IT'S MADE OF GOLD?"
        }, 
        SparkleColor = Color3.fromRGB(255, 247, 130), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Admin-Exclusive", 
        Unregistered = true, 
        Appraisable = false
    }, 
    ["Golden Coin"] = {
        Icon = "rbxassetid://117895646767362", 
        BlockPassiveCapture = true, 
        WeightPool = {
            3, 
            15
        }, 
        Chance = 0, 
        Rarity = "Special", 
        Resilience = 50, 
        ProgressEfficiency = 1.5, 
        Description = "A coin made of pure gold; a rare find!", 
        Hint = "???", 
        FavouriteBait = "Magnet", 
        FavouriteTime = nil, 
        Price = 5000, 
        XP = 5000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A GOLDEN COIN!", 
            "HOW MUCH IS IT WORTH?", 
            "I'M RICH!", 
            "A PIRATES DREAM!"
        }, 
        SparkleColor = Color3.fromRGB(255, 247, 130), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Admin-Exclusive", 
        Unregistered = true, 
        Appraisable = false
    }, 
    Slenderfish = {
        Icon = "rbxassetid://87686124457731", 
        BlockPassiveCapture = true, 
        WeightPool = {
            40, 
            175
        }, 
        Chance = 0, 
        Rarity = "Special", 
        Resilience = 80, 
        ProgressEfficiency = 0.15, 
        Description = "This isn't the end...", 
        Hint = "???", 
        FavouriteBait = "Night Shrimp", 
        FavouriteTime = nil, 
        Price = 12500, 
        XP = 35000, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "Wh\204\183a\204\180\205\151\205\157t\204\184\205\132\204\146?\204\182\205\130\205\155", 
            "Oh! I collected his pages!", 
            "Well, that's the end of him!", 
            "SLENDERMAN???", 
            "SLENDERFISH???"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Admin-Exclusive", 
        Unregistered = true
    }, 
    String = {
        Icon = "rbxassetid://86090245680337", 
        WeightPool = {
            1, 
            8
        }, 
        Chance = 100, 
        Rarity = "Trash", 
        Resilience = 200, 
        Description = "A string! It likely has some sort of purpose...", 
        Hint = "???", 
        FavouriteBait = nil, 
        FavouriteTime = nil, 
        Price = 2, 
        XP = 1, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "String?...", 
            "Seems pointless...", 
            "How did I even reel this?", 
            "CURSE YOU POLARIS!", 
            "PLEASE BE SERENE!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Desolate Deep", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Opalescent Catfish"] = {
        Icon = "rbxassetid://115253282265586", 
        WeightPool = {
            16, 
            62
        }, 
        Chance = 30, 
        Rarity = "Rare", 
        Resilience = 35, 
        Description = "This shimmering catfish glides through Crystal Cove with iridescent scales that reflect the clear waters of spring and winter, its whisker-like fins glowing softly.", 
        Hint = "Shimmers in clear spring waters.", 
        FavouriteBait = "Insect", 
        FavouriteTime = nil, 
        Price = 1200, 
        XP = 2200, 
        Seasons = {
            "Winter", 
            "Spring"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "Crystallized Kitty!", 
            "Cute whiskers!", 
            "Colors!"
        }, 
        SparkleColor = Color3.fromRGB(149, 255, 191), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Crystal Cove", 
        Worlds = {
            "Sea 1"
        }
    }, 
    Pufferflute = {
        Icon = "rbxassetid://136664915387720", 
        WeightPool = {
            16, 
            62
        }, 
        Chance = 30, 
        Rarity = "Rare", 
        Resilience = 35, 
        Description = "A curious fish with a flute-like body that inflates under clear conditions, creating melodic bubbles that echo through Crystal Cove.", 
        Hint = "Puffs up under clear autumn skies.", 
        FavouriteBait = "Flakes", 
        FavouriteTime = "Day", 
        Price = 1200, 
        XP = 2200, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "It's puffing!", 
            "Can I play it?", 
            "Cute flute!"
        }, 
        SparkleColor = Color3.fromRGB(255, 251, 120), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Crystal Cove", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Mutated Crystal Shrimp"] = {
        Icon = "rbxassetid://127517513847291", 
        WeightPool = {
            140, 
            600
        }, 
        Chance = 1, 
        Rarity = "Rare", 
        Resilience = 10, 
        Description = "A radiant shrimp adorned with crystalline growths, glowing vibrantly in the Crystal Cove, only caught by clever traps.", 
        Hint = "Gleams in rainy summer nights, only caught by clever traps.", 
        FavouriteBait = nil, 
        FavouriteTime = "Night", 
        Price = 1000, 
        XP = 2000, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "Pretty!", 
            "Crystals!", 
            "How does it taste?"
        }, 
        SparkleColor = Color3.fromRGB(152, 34, 255), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Crystal Cove", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Crystal Lobster"] = {
        Icon = "rbxassetid://132224144913221", 
        WeightPool = {
            140, 
            600
        }, 
        Chance = 1, 
        Rarity = "Legendary", 
        Resilience = 10, 
        Description = "A majestic lobster with a shell encrusted with dazzling crystals, shining brilliantly in the Crystal Cove, elusive to all but traps.", 
        Hint = "Sparkles in rainy summer nights, elusive to all but traps.", 
        FavouriteBait = nil, 
        FavouriteTime = "Night", 
        Price = 8000, 
        XP = 20000, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "PRETTY!", 
            "CRYSTALS!", 
            "HOW DOES IT TASTE?"
        }, 
        SparkleColor = Color3.fromRGB(237, 97, 255), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Crystal Cove", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Stringed Grouper"] = {
        Icon = "rbxassetid://129952372617867", 
        WeightPool = {
            140, 
            600
        }, 
        Chance = 5, 
        Rarity = "Legendary", 
        Resilience = -55, 
        Description = "A grouper with playable guitar strings, it's a mystery how this fish exists...", 
        Hint = "Strums in rainy summer days.", 
        FavouriteBait = "Shrimp", 
        FavouriteTime = "Day", 
        Price = 7000, 
        XP = 9000, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "PERFECT HARMONY!", 
            "LOOK AT THOSE STRINGS!", 
            "CAN I PLAY IT?"
        }, 
        SparkleColor = Color3.fromRGB(135, 84, 47), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Crystal Cove", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Crystal Frilled Shark"] = {
        Icon = "rbxassetid://110773511357216", 
        WeightPool = {
            14000, 
            60000
        }, 
        Chance = 3, 
        Rarity = "Legendary", 
        Resilience = -60, 
        Description = "A fierce shark with frilled gills and a crystal-coated body, lurking in the nights of Crystal Cove, its teeth a fearsome sight.", 
        Hint = "Lurks in rainy summer nights.", 
        FavouriteBait = "Shrimp", 
        FavouriteTime = "Night", 
        Price = 8000, 
        XP = 10000, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "CRYSTAL ENCRUSTED!", 
            "BEAUTY OF THE DEPTHS!", 
            "INCREDIBLE TEETH!"
        }, 
        SparkleColor = Color3.fromRGB(140, 140, 255), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Crystal Cove", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Musical Crab"] = {
        Icon = "rbxassetid://118110617332702", 
        WeightPool = {
            14, 
            60
        }, 
        Chance = 1, 
        Rarity = "Mythical", 
        Resilience = 10, 
        Description = "A tiny crab with a shell that hums musical notes, scuttling through the Crystal Cove, only caught by the craftiest traps.", 
        Hint = "Dances in rainy summer nights, only caught by the craftiest traps.", 
        FavouriteBait = nil, 
        FavouriteTime = "Night", 
        Price = 15000, 
        XP = 40000, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "MUSICAL!", 
            "THIS CRAB HAS TASTE!", 
            "TRUE ART!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Crystal Cove", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["DJ Spinopus"] = {
        Icon = "rbxassetid://108259304304399", 
        WeightPool = {
            30000, 
            120000
        }, 
        Chance = 1, 
        Rarity = "Mythical", 
        Resilience = -100, 
        Description = "A funky octopus with glowing tentacles that pulse to an unseen rhythm, spinning through Crystal Cove's clear nights.", 
        Hint = "Spins in clear spring nights.", 
        FavouriteBait = "Snare", 
        FavouriteTime = "Night", 
        Price = 12000, 
        XP = 20000, 
        Seasons = {
            "Summer", 
            "Spring"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "JAMMING!", 
            "DISCO!", 
            "SPIN THAT!"
        }, 
        SparkleColor = Color3.fromRGB(55, 168, 255), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Crystal Cove", 
        Worlds = {
            "Sea 1"
        }
    }, 
    Blobfish = {
        Icon = "rbxassetid://120040570276125", 
        WeightPool = {
            8, 
            80
        }, 
        Chance = 1, 
        Rarity = "Exotic", 
        Resilience = 100, 
        ProgressEfficiency = 1.65, 
        Description = "A blobfish is a bottom-dwelling fish that lives in deep waters, with a unique, squishy structure that helps it float effortlessly without expending much energy. Makes for a great best friend!", 
        Hint = "???", 
        FavouriteBait = "Shrimp", 
        FavouriteTime = nil, 
        Price = 20000, 
        XP = 8000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A BLOBFISH!!!!!!!", 
            "Slimey!", 
            "blobbed", 
            "Cute!", 
            "silly little blob.", 
            "Turn that frown upside-down!", 
            "Could use a cleaning...", 
            "SQUISH!"
        }, 
        SparkleColor = Color3.fromRGB(255, 152, 220), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Ocean", 
        Worlds = {
            "Sea 1"
        }, 
        BlockPassiveCapture = true
    }, 
    Manatee = {
        Icon = "rbxassetid://73168669588187", 
        WeightPool = {
            5000, 
            20000
        }, 
        Chance = 1, 
        Rarity = "Secret", 
        Resilience = 150, 
        ProgressEfficiency = 0.05, 
        Description = "A manatee is a large, slow-moving marine mammal with a rounded body and paddle-like tail. They are herbivores that graze on underwater plants in warm coastal waters.", 
        Hint = "???", 
        FavouriteBait = "Seaweed", 
        FavouriteTime = "Day", 
        Price = 20000, 
        XP = 8000, 
        Seasons = {
            "Spring", 
            "Winter"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A MANATEE!", 
            "COW!", 
            "GRACEFUL!", 
            "BIG!", 
            "VERY SLOW!", 
            "HEAVY!"
        }, 
        SparkleColor = Color3.fromRGB(111, 130, 136), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Terrapin", 
        Worlds = {
            "Sea 1"
        }, 
        BlockPassiveCapture = true
    }, 
    Him = {
        Icon = "rbxassetid://120861788678376", 
        WeightPool = {
            1, 
            100000
        }, 
        Chance = 0, 
        Rarity = "Secret", 
        Resilience = -100, 
        ForcedProgressEfficiency = 1, 
        Description = "is it him?", 
        Hint = "???", 
        FavouriteBait = nil, 
        FavouriteTime = nil, 
        Price = 50, 
        XP = 100, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "1/1000000"
        }, 
        SparkleColor = Color3.fromRGB(216, 216, 216), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "None", 
        Appraisable = false, 
        Worlds = {
            "Sea 1"
        }, 
        BlockPassiveCapture = true
    }, 
    ["\240\159\144\139"] = {
        Icon = "rbxassetid://131380228822418", 
        WeightPool = {
            1, 
            100000
        }, 
        Chance = 0, 
        Rarity = "Secret", 
        Resilience = -100, 
        ForcedProgressEfficiency = 2, 
        Description = "It doesn't seem real...", 
        Hint = "???", 
        FavouriteBait = nil, 
        FavouriteTime = nil, 
        Price = 5, 
        XP = 10, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "\240\159\144\139"
        }, 
        SparkleColor = Color3.fromRGB(64, 163, 255), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "None", 
        Appraisable = false, 
        Worlds = {
            "Sea 1"
        }, 
        BlockPassiveCapture = true
    }, 
    ["\240\159\166\136"] = {
        Icon = "rbxassetid://90384385365540", 
        WeightPool = {
            1, 
            100000
        }, 
        Chance = 0, 
        Rarity = "Secret", 
        Resilience = -100, 
        ForcedProgressEfficiency = 2, 
        Description = "It doesn't seem real...", 
        Hint = "???", 
        FavouriteBait = nil, 
        FavouriteTime = nil, 
        Price = 5, 
        XP = 10, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "\240\159\166\136"
        }, 
        SparkleColor = Color3.fromRGB(118, 118, 126), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "None", 
        Appraisable = false, 
        Worlds = {
            "Sea 1"
        }, 
        BlockPassiveCapture = true
    }, 
    ["\240\159\166\145"] = {
        Icon = "rbxassetid://93002700239933", 
        WeightPool = {
            1, 
            100000
        }, 
        Chance = 0, 
        Rarity = "Secret", 
        Resilience = -100, 
        ForcedProgressEfficiency = 2, 
        Description = "It doesn't seem real...", 
        Hint = "???", 
        FavouriteBait = nil, 
        FavouriteTime = nil, 
        Price = 5, 
        XP = 10, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "\240\159\166\145"
        }, 
        SparkleColor = Color3.fromRGB(255, 108, 196), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "None", 
        Appraisable = false, 
        Worlds = {
            "Sea 1"
        }, 
        BlockPassiveCapture = true
    }, 
    ["\240\159\144\161"] = {
        Icon = "rbxassetid://114436592672349", 
        WeightPool = {
            1, 
            100000
        }, 
        Chance = 0, 
        Rarity = "Secret", 
        Resilience = -100, 
        ForcedProgressEfficiency = 2, 
        Description = "It doesn't seem real...", 
        Hint = "???", 
        FavouriteBait = nil, 
        FavouriteTime = nil, 
        Price = 5, 
        XP = 10, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "\240\159\144\161"
        }, 
        SparkleColor = Color3.fromRGB(230, 161, 126), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "None", 
        Appraisable = false, 
        Worlds = {
            "Sea 1"
        }, 
        BlockPassiveCapture = true
    }, 
    ["\240\159\144\159"] = {
        Icon = "rbxassetid://79632511271596", 
        WeightPool = {
            1, 
            100000
        }, 
        Chance = 0, 
        Rarity = "Secret", 
        Resilience = -100, 
        ForcedProgressEfficiency = 2, 
        Description = "It doesn't seem real...", 
        Hint = "???", 
        FavouriteBait = nil, 
        FavouriteTime = nil, 
        Price = 5, 
        XP = 10, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "\240\159\144\159", 
            "\240\159\152\161", 
            "\240\159\154\189", 
            "\240\159\170\166", 
            "\240\159\164\150", 
            "\240\159\151\163\239\184\143", 
            "\240\159\142\163", 
            "\240\159\144\160", 
            "\240\159\165\182", 
            "\240\159\145\133", 
            "\240\159\145\145", 
            "\240\159\146\128", 
            "\240\159\153\143", 
            "\240\159\149\138\239\184\143", 
            "\240\159\134\153", 
            "\226\129\137\239\184\143", 
            "\240\159\164\147", 
            "\240\159\148\165", 
            "\240\159\152\173", 
            "\240\159\152\156", 
            "\240\159\164\148", 
            "\226\152\148", 
            "\240\159\146\176", 
            "\240\159\167\160", 
            "\240\159\142\137", 
            "\240\159\152\164", 
            "\240\159\164\162", 
            "\240\159\146\169", 
            "\240\159\152\136", 
            "\240\159\171\166", 
            "\240\159\140\138", 
            "shhhh \240\159\164\171", 
            "mane i dont want this \240\159\152\162"
        }, 
        SparkleColor = Color3.fromRGB(64, 163, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "None", 
        Appraisable = false, 
        Worlds = {
            "Sea 1"
        }, 
        BlockPassiveCapture = true
    }, 
    Doubloon = {
        Icon = "rbxassetid://-1", 
        WeightPool = {
            2, 
            2
        }, 
        Chance = 1e999, 
        Rarity = "Common", 
        Resilience = 120, 
        ProgressEfficiency = 1.05, 
        Description = "", 
        Hint = "", 
        FavouriteBait = "", 
        FavouriteTime = "", 
        Price = 1, 
        XP = 0, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {}, 
        SparkleColor = Color3.fromRGB(255, 142, 28), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = nil, 
        Worlds = {
            "Sea 1"
        }, 
        Unregistered = true
    }, 
    ["Friend Fish"] = {
        Icon = "rbxassetid://95707933700367", 
        WeightPool = {
            300, 
            3000
        }, 
        Chance = 0, 
        Rarity = "Secret", 
        Resilience = 0, 
        ProgressEfficiency = 0.5, 
        Description = "MY BEST FRIEND!", 
        Hint = "A very friendly fish...", 
        FavouriteBait = "Pizza", 
        FavouriteTime = nil, 
        Price = 1, 
        XP = 1, 
        Seasons = {
            "NONE!"
        }, 
        Weather = {
            "It would rather stay inside..."
        }, 
        Quips = {
            "MY BEST FRIEND!", 
            "TRUE FRIENDSHIP!", 
            "YAY!", 
            "FRIENDSHIP SECURED!", 
            "GOTCHA, PAL!", 
            "HUG ATTACK!", 
            "YOU'RE MINE NOW, BFF!", 
            "SNAGGED A FRIEND!", 
            "NO TAKEBACKS!", 
            "CAUGHT A WILD FRIEND!", 
            "FRIENDSHIP LEVEL: MAX!", 
            "BESTIES FOREVER!", 
            "GRABBED THE GREATEST!", 
            "CLOSE ENCOUNTER OF THE FRIEND KIND!", 
            "WELCOME TO THE FRIEND ZONE (the good kind)!", 
            "EMOTIONAL DAMAGE-IN A GOOD WAY!", 
            "TAG, YOU'RE MY BESTIE!", 
            "HEARTS INTERLOCKED!", 
            "WE'RE A TEAM NOW!", 
            "POWER OF FRIENDSHIP ACHIEVED!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        HideInBestiary = true, 
        From = "None", 
        Appraisable = false, 
        Worlds = {
            "Sea 1"
        }
    }, 
    Squirrelfish = {
        Icon = "rbxassetid://109093901275700", 
        WeightPool = {
            18, 
            50
        }, 
        Chance = 125, 
        Rarity = "Extinct", 
        Resilience = 120, 
        ProgressEfficiency = 1.05, 
        Description = "A vivid nocturnal dweller illuminating coral crevices.", 
        Hint = "Lurks in waters favored by pirates.", 
        FavouriteBait = "Bagel", 
        FavouriteTime = "Night", 
        Price = 80, 
        XP = 40, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Squirrelfish!", 
            "A burst of color!", 
            "Reef's bright scout!"
        }, 
        SparkleColor = Color3.fromRGB(255, 142, 28), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["French Grunt"] = {
        Icon = "rbxassetid://85074776570348", 
        WeightPool = {
            32, 
            95
        }, 
        Chance = 120, 
        Rarity = "Extinct", 
        Resilience = 115, 
        Description = "A striped wanderer patrolling warm, shallow reefs.", 
        Hint = "Lurks in waters favored by pirates.", 
        FavouriteBait = "Gale Grub", 
        FavouriteTime = "Day", 
        Price = 100, 
        XP = 50, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A French Grunt!", 
            "Stripes on patrol!", 
            "Reef's loyal guard!"
        }, 
        SparkleColor = Color3.fromRGB(255, 239, 12), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Sergeant Major"] = {
        Icon = "rbxassetid://104438098867886", 
        WeightPool = {
            35, 
            125
        }, 
        Chance = 115, 
        Rarity = "Extinct", 
        Resilience = 110, 
        Description = "A bold leader commanding tropical shallows.", 
        Hint = "Lurks in waters favored by pirates.", 
        FavouriteBait = "Worm", 
        FavouriteTime = "Day", 
        Price = 140, 
        XP = 70, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Sergeant Major!", 
            "Ruler of the reef!", 
            "Bold and bright!"
        }, 
        SparkleColor = Color3.fromRGB(255, 239, 115), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Coney Grouper"] = {
        Icon = "rbxassetid://75456163416958", 
        WeightPool = {
            140, 
            550
        }, 
        Chance = 110, 
        Rarity = "Extinct", 
        Resilience = 105, 
        Description = "A sturdy traveler roaming coastal boulder fields.", 
        Hint = "Lurks in waters favored by pirates.", 
        FavouriteBait = "Insect", 
        FavouriteTime = "Day", 
        Price = 180, 
        XP = 90, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "Windy"
        }, 
        Quips = {
            "A Coney Grouper!", 
            "Rocky reef roamer!", 
            "Stout and steady!"
        }, 
        SparkleColor = Color3.fromRGB(255, 0, 0), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Doctorfish Tang"] = {
        Icon = "rbxassetid://126342799854112", 
        WeightPool = {
            30, 
            90
        }, 
        Chance = 100, 
        Rarity = "Extinct", 
        Resilience = 100, 
        Description = "A diligent grazer scraping algae from sunlit rocks.", 
        Hint = "Lurks in waters favored by pirates.", 
        FavouriteBait = "Shrimp", 
        FavouriteTime = "Day", 
        Price = 200, 
        XP = 100, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Doctorfish Tang!", 
            "Reef's cleanup crew!", 
            "Grazing with grace!"
        }, 
        SparkleColor = Color3.fromRGB(82, 156, 87), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Bluehead Wrasse"] = {
        Icon = "rbxassetid://87109995167580", 
        WeightPool = {
            2, 
            8
        }, 
        Chance = 85, 
        Rarity = "Extinct", 
        Resilience = 75, 
        ProgressEfficiency = 1.1, 
        Description = "A swift dart weaving through vibrant coral jungles.", 
        Hint = "Lurks in waters favored by pirates.", 
        FavouriteBait = "Lushrooms", 
        FavouriteTime = "Day", 
        Price = 280, 
        XP = 140, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Bluehead Wrasse!", 
            "Darts like a bolt!", 
            "Coral's quick flash!"
        }, 
        SparkleColor = Color3.fromRGB(49, 91, 229), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Islandhopper Butterflyfish"] = {
        Icon = "rbxassetid://128849810574530", 
        WeightPool = {
            29, 
            87
        }, 
        Chance = 80, 
        Rarity = "Extinct", 
        Resilience = 70, 
        Description = "A delicate flitter dancing across tropical tides.", 
        Hint = "Lurks in waters favored by pirates.", 
        FavouriteBait = "Flakes", 
        FavouriteTime = "Day", 
        Price = 300, 
        XP = 150, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Islandhopper Butterflyfish!", 
            "Flutters through waves!", 
            "Tropical dancer!"
        }, 
        SparkleColor = Color3.fromRGB(255, 239, 12), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Stoplight Parrotfish"] = {
        Icon = "rbxassetid://74885676836651", 
        WeightPool = {
            30, 
            90
        }, 
        Chance = 55, 
        Rarity = "Extinct", 
        Resilience = 55, 
        Description = "A radiant chewer crunching through coral clusters.", 
        Hint = "Lurks in waters favored by pirates.", 
        FavouriteBait = "Squid", 
        FavouriteTime = "Day", 
        Price = 800, 
        XP = 400, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Stoplight Parrotfish!", 
            "Chomps the reef!", 
            "Bright as a beacon!"
        }, 
        SparkleColor = Color3.fromRGB(248, 167, 255), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Scrawled Filefish"] = {
        Icon = "rbxassetid://85250955243863", 
        WeightPool = {
            150, 
            500
        }, 
        Chance = 50, 
        Rarity = "Extinct", 
        Resilience = 50, 
        Description = "A mottled drifter gliding through twilight reefs.", 
        Hint = "Lurks in waters favored by pirates.", 
        FavouriteBait = "Minnow", 
        FavouriteTime = "Night", 
        Price = 900, 
        XP = 450, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Windy"
        }, 
        Quips = {
            "A Scrawled Filefish!", 
            "Drifts in the dark!", 
            "Reef's subtle wanderer!"
        }, 
        SparkleColor = Color3.fromRGB(11, 185, 136), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    Spadefish = {
        Icon = "rbxassetid://104270414083624", 
        WeightPool = {
            75, 
            245
        }, 
        Chance = 28, 
        Rarity = "Extinct", 
        Resilience = 45, 
        Description = "A sleek disk flashing through misty shallows.", 
        Hint = "Lurks in waters favored by pirates.", 
        FavouriteBait = "Lagoon Leech", 
        FavouriteTime = "Day", 
        Price = 1400, 
        XP = 1190, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A SPADEFISH!", 
            "FLASHES THROUGH FOG!", 
            "SLENDER AND SWIFT!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Ocean Triggerfish"] = {
        Icon = "rbxassetid://109225676428660", 
        WeightPool = {
            80, 
            250
        }, 
        Chance = 25, 
        Rarity = "Extinct", 
        Resilience = 40, 
        Description = "A bold striker prowling stormy ocean depths.", 
        Hint = "Lurks in waters favored by pirates.", 
        FavouriteBait = "Ember Berries", 
        FavouriteTime = "Night", 
        Price = 1500, 
        XP = 1200, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A OCEAN TRIGGERFISH!", 
            "STRIKES IN THE STORM!", 
            "DEEP SEA HUNTER!"
        }, 
        SparkleColor = Color3.fromRGB(0, 206, 209), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Rock Hind"] = {
        Icon = "rbxassetid://93902238632370", 
        WeightPool = {
            20000, 
            80000
        }, 
        Chance = 10, 
        Rarity = "Extinct", 
        Resilience = 20, 
        ProgressEfficiency = 0.55, 
        Description = "A rugged titan lurking in sunlit rocky chasms.", 
        Hint = "Lurks in waters favored by pirates.", 
        FavouriteBait = "Fish Head", 
        FavouriteTime = "Day", 
        Price = 3900, 
        XP = 2300, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A ROCK HIND!", 
            "GUARDS THE ROCKS!", 
            "MIGHTY AND BOLD!"
        }, 
        SparkleColor = Color3.fromRGB(255, 77, 23), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Rainbow Grouper"] = {
        Icon = "rbxassetid://114826318613407", 
        WeightPool = {
            130, 
            400
        }, 
        Chance = 8, 
        Rarity = "Extinct", 
        Resilience = 18, 
        ProgressEfficiency = 0.5, 
        Description = "A vibrant marvel streaking through foggy reefs.", 
        Hint = "Lurks in waters favored by pirates.", 
        FavouriteBait = "Crystal Bananas", 
        FavouriteTime = "Night", 
        Price = 4000, 
        XP = 2400, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A RAINBOW GROUPER!", 
            "SHINES IN THE MIST!", 
            "COLORFUL TITAN!"
        }, 
        SparkleColor = Color3.fromRGB(186, 89, 4), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Spotted Moray Eel"] = {
        Icon = "rbxassetid://78318948044973", 
        WeightPool = {
            300, 
            1400
        }, 
        Chance = 5, 
        Rarity = "Extinct", 
        Resilience = 12, 
        ProgressEfficiency = 0.35, 
        Description = "A stealthy serpent slithering through misty crevices.", 
        Hint = "Lurks in waters favored by pirates.", 
        FavouriteBait = "Mist Worms", 
        FavouriteTime = "Night", 
        Price = 6500, 
        XP = 3500, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A SPOTTED MORAY EEL!", 
            "SLINKS IN THE DARK!", 
            "HIDDEN PREDATOR!"
        }, 
        SparkleColor = Color3.fromRGB(71, 30, 0), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Great Barracuda"] = {
        Icon = "rbxassetid://118776350592044", 
        WeightPool = {
            1500, 
            5000
        }, 
        Chance = 4, 
        Rarity = "Extinct", 
        Resilience = 10, 
        ProgressEfficiency = 0.3, 
        Description = "A fierce hunter streaking through shadowed waters.", 
        Hint = "Lurks in waters favored by pirates.", 
        FavouriteBait = "Truffle Worm", 
        FavouriteTime = "Night", 
        Price = 7000, 
        XP = 4000, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A GREAT BARRACUDA!", 
            "STALKER OF THE DEEP!", 
            "SWIFT AND DEADLY!"
        }, 
        SparkleColor = Color3.fromRGB(69, 73, 103), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    Tilefish = {
        Icon = "rbxassetid://82806180739043", 
        WeightPool = {
            35000, 
            130000
        }, 
        Chance = 1, 
        Rarity = "Extinct", 
        Resilience = 5, 
        ProgressEfficiency = 0.1, 
        Description = "A deep-dwelling monarch ruling sunlit ocean floors.", 
        Hint = "Lurks in waters favored by pirates.", 
        FavouriteBait = "Sapphire Krill", 
        FavouriteTime = "Day", 
        Price = 15000, 
        XP = 8000, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A TILEFISH!", 
            "KING OF THE DEPTHS!", 
            "MAJESTIC RULER!"
        }, 
        SparkleColor = Color3.fromRGB(177, 148, 74), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Black Grouper"] = {
        Icon = "rbxassetid://79352972537804", 
        WeightPool = {
            50000, 
            180000
        }, 
        Chance = 1, 
        Rarity = "Extinct", 
        BlockPassiveCapture = true, 
        Resilience = 1, 
        ProgressEfficiency = 0.05, 
        Description = "A shadowy behemoth lurking in wintry depths.", 
        Hint = "Lurks in waters favored by pirates.", 
        FavouriteBait = "Shark Head", 
        FavouriteTime = "Night", 
        Price = 50000, 
        XP = 20000, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A BLACK GROUPER!", 
            "SHADOW OF THE SEA!", 
            "MYSTERIOUS GIANT!"
        }, 
        SparkleColor = Color3.fromRGB(255, 239, 208), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Clowned Triggerfish"] = {
        Icon = "rbxassetid://80482312288118", 
        WeightPool = {
            14, 
            55
        }, 
        Chance = 100, 
        Rarity = "Common", 
        Resilience = 100, 
        Description = "A colorful fish with vibrant patterns, blending into coral shadows.", 
        Hint = "Lurks in waters favored by pirates.", 
        FavouriteBait = "Gale Grub", 
        FavouriteTime = "Day", 
        Price = 50, 
        XP = 70, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Clowned Triggerfish!", 
            "Such bright colors!", 
            "Coral's best friend!"
        }, 
        SparkleColor = Color3.fromRGB(255, 239, 12), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Castaway Cliffs", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Flamekissed Hawkfish"] = {
        Icon = "rbxassetid://118698040894750", 
        WeightPool = {
            17, 
            60
        }, 
        Chance = 80, 
        Rarity = "Common", 
        Resilience = 90, 
        Description = "A fiery-hued fish darting through warm, shallow reefs.", 
        Hint = "Lurks in waters favored by pirates.", 
        FavouriteBait = "Bagel", 
        FavouriteTime = "Night", 
        Price = 70, 
        XP = 80, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Windy"
        }, 
        Quips = {
            "A Flamekissed Hawkfish!", 
            "Blazing through the water!", 
            "Quick as a spark!"
        }, 
        SparkleColor = Color3.fromRGB(175, 55, 55), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Castaway Cliffs", 
        Worlds = {
            "Sea 1"
        }
    }, 
    Mandarinfish = {
        Icon = "rbxassetid://118834234554042", 
        WeightPool = {
            15, 
            50
        }, 
        Chance = 55, 
        Rarity = "Uncommon", 
        Resilience = 70, 
        ProgressEfficiency = 1.05, 
        Description = "A small, ornate fish shimmering in tropical currents.", 
        Hint = "Lurks in waters favored by pirates.", 
        FavouriteBait = "Insect", 
        FavouriteTime = "Day", 
        Price = 100, 
        XP = 100, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A Mandarinfish!", 
            "A dazzling beauty!", 
            "Tropical gem!"
        }, 
        SparkleColor = Color3.fromRGB(0, 41, 191), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Castaway Cliffs", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Cobalt Angelfish"] = {
        Icon = "rbxassetid://125976172564465", 
        WeightPool = {
            30, 
            90
        }, 
        Chance = 45, 
        Rarity = "Uncommon", 
        Resilience = 60, 
        Description = "A sleek fish with deep blue hues, gliding gracefully.", 
        Hint = "Lurks in waters favored by pirates.", 
        FavouriteBait = "Worm", 
        FavouriteTime = "Night", 
        Price = 110, 
        XP = 105, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A Cobalt Angelfish!", 
            "Blue as the deep sea!", 
            "Graceful swimmer!"
        }, 
        SparkleColor = Color3.fromRGB(0, 136, 209), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Castaway Cliffs", 
        Worlds = {
            "Sea 1"
        }
    }, 
    Trevally = {
        Icon = "rbxassetid://112104990424057", 
        WeightPool = {
            20, 
            80
        }, 
        Chance = 25, 
        Rarity = "Unusual", 
        Resilience = 50, 
        Description = "A swift fish cutting through open waters with ease.", 
        Hint = "Lurks in waters favored by pirates.", 
        FavouriteBait = "Minnow", 
        FavouriteTime = "Day", 
        Price = 300, 
        XP = 180, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Trevally!", 
            "Fast and fierce!", 
            "Master of the currents!"
        }, 
        SparkleColor = Color3.fromRGB(255, 247, 138), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Castaway Cliffs", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Warty Frogfish"] = {
        Icon = "rbxassetid://130210946583761", 
        WeightPool = {
            13, 
            40
        }, 
        Chance = 15, 
        Rarity = "Rare", 
        Resilience = 30, 
        ProgressEfficiency = 1.1, 
        Description = "A camouflaged oddity lurking among rocky outcrops.", 
        Hint = "Lurks in waters favored by pirates.", 
        FavouriteBait = "Flakes", 
        FavouriteTime = "Night", 
        Price = 320, 
        XP = 190, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A Warty Frogfish!", 
            "Hidden in plain sight!", 
            "Strange and sneaky!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Castaway Cliffs", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Hidden Pipefish"] = {
        Icon = "rbxassetid://109987938411517", 
        WeightPool = {
            10, 
            40
        }, 
        Chance = 7, 
        Rarity = "Legendary", 
        Resilience = 15, 
        ProgressEfficiency = 0.5, 
        Description = "A slender enigma weaving through coral mazes.", 
        Hint = "Lurks in waters favored by pirates.", 
        FavouriteBait = "Seaweed", 
        FavouriteTime = "Night", 
        Price = 4000, 
        XP = 1800, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A HIDDEN PIPEFISH!", 
            "SLIPPING THROUGH SHADOWS!", 
            "IT WAS HIDING!"
        }, 
        SparkleColor = Color3.fromRGB(127, 59, 0), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Castaway Cliffs", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Mirage Toadfish"] = {
        Icon = "rbxassetid://97785651084947", 
        WeightPool = {
            1500, 
            5000
        }, 
        Chance = 4, 
        Rarity = "Mythical", 
        Resilience = 10, 
        ProgressEfficiency = 0.3, 
        Description = "A ghostly fish shimmering in the ocean\226\128\153s depths.", 
        Hint = "Lurks in waters favored by pirates.", 
        FavouriteBait = "Squid", 
        FavouriteTime = "Night", 
        Price = 6800, 
        XP = 2200, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A MIRAGE TOADFISH!", 
            "VANISHES LIKE A DREAM!", 
            "MYTH OF THE SEAS!"
        }, 
        SparkleColor = Color3.fromRGB(0, 0, 0), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Castaway Cliffs", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Scalloped Hammerhead"] = {
        Icon = "rbxassetid://97876313285810", 
        WeightPool = {
            55000, 
            150000
        }, 
        Chance = 1, 
        Rarity = "Exotic", 
        Resilience = 5, 
        ProgressEfficiency = 0.1, 
        Description = "A majestic predator patrolling the open seas.", 
        Hint = "Lurks in waters favored by pirates.", 
        FavouriteBait = "Fish Head", 
        FavouriteTime = "Day", 
        Price = 14000, 
        XP = 5000, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A SCALLOPED HAMMERHEAD!", 
            "RULER OF THE OCEAN!", 
            "FEARSOME AND MIGHTY!"
        }, 
        SparkleColor = Color3.fromRGB(116, 84, 53), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Castaway Cliffs", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Great Goldcursed Shark"] = {
        Icon = "rbxassetid://115584288591221", 
        WeightPool = {
            100000, 
            250000
        }, 
        Chance = 1, 
        Rarity = "Secret", 
        BlockPassiveCapture = true, 
        Resilience = 1, 
        ProgressEfficiency = 0.05, 
        Description = "A golden titan shrouded in ancient mystery.", 
        Hint = "Lurks in waters favored by pirates.", 
        FavouriteBait = "Fish Head", 
        FavouriteTime = "Night", 
        Price = 50000, 
        XP = 20000, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A GREAT GOLDCURSED SHARK!", 
            "LEGEND OF THE DEEP!", 
            "GOLDEN TERROR!"
        }, 
        SparkleColor = Color3.fromRGB(255, 149, 0), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Castaway Cliffs", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Bloop Fish"] = {
        Icon = "rbxassetid://84676091673435", 
        BlockPassiveCapture = true, 
        WeightPool = {
            2000000, 
            5000000
        }, 
        Chance = 1, 
        Rarity = "Apex", 
        Resilience = -40, 
        ForcedProgressEfficiency = 0.03, 
        Description = "A colossal, elusive deep-sea creature said to dwell in the lightless abyss of the ocean, surfacing only when the water is deathly still. Its presence heralded by a haunting, low-frequency sound that rattles sonar equipment and stirs ancient maritime fears.", 
        Hint = "???", 
        FavouriteBait = "Luminous Larva", 
        FavouriteTime = "Night", 
        Price = 250000, 
        XP = 600000, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A BLOOP FISH!?!?!", 
            "I CAN'T BELIEVE IT!", 
            "IT WAS REAL?!", 
            "BLOOP!", 
            "MASSIVE!"
        }, 
        SparkleColor = Color3.fromRGB(255, 244, 244), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "None", 
        Worlds = {
            "Sea 1"
        }, 
        HideInBestiary = true
    }, 
    ["Baby Bloop Fish"] = {
        Icon = "rbxassetid://105810326444747", 
        BlockPassiveCapture = true, 
        WeightPool = {
            500, 
            2000
        }, 
        Chance = 1, 
        Rarity = "Secret", 
        Resilience = 20, 
        ProgressEfficiency = 0.1, 
        Description = "Potentially cute, likely dangerous!", 
        Hint = "???", 
        FavouriteBait = "Luminous Larva", 
        FavouriteTime = "Night", 
        Price = 100000, 
        XP = 80000, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A BABY BLOOP FISH!?!?!", 
            "BLOOP!", 
            "CUTE!"
        }, 
        SparkleColor = Color3.fromRGB(255, 244, 244), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "None", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Magician Narwhal"] = {
        Icon = "rbxassetid://111381609563342", 
        BlockPassiveCapture = true, 
        WeightPool = {
            1000000, 
            2500000
        }, 
        Chance = 1, 
        Rarity = "Apex", 
        Resilience = -20, 
        ForcedProgressEfficiency = 0.04, 
        Description = "A whimsical narwhal with a neat top hat and an enchanted magician's wand, casting spells beneath waves.", 
        Hint = "???", 
        FavouriteBait = "Golden Worm", 
        FavouriteTime = nil, 
        Price = 230000, 
        XP = 500000, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A MAGICIAN NARWHAL!?!?!", 
            "I CAN'T BELIEVE IT!", 
            "IT WAS REAL?!", 
            "PURE MAGIC!", 
            "THAT WAS MY CARD!", 
            "HOW DID IT DO THAT?!?", 
            "THAT'S A NICE HAT!"
        }, 
        SparkleColor = Color3.fromRGB(19, 34, 127), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Ocean", 
        Worlds = {
            "Sea 1"
        }, 
        HideInBestiary = true
    }, 
    Beluga = {
        Icon = "rbxassetid://96005629558952", 
        BlockPassiveCapture = true, 
        WeightPool = {
            8000, 
            30000
        }, 
        Chance = 4, 
        Rarity = "Apex", 
        Resilience = 1, 
        ProgressEfficiency = 0.05, 
        Description = "A sociable white whale with a rounded forehead, typically known for its vocal chirps and playful personality.", 
        Hint = "???", 
        FavouriteBait = "Squid", 
        FavouriteTime = "Night", 
        Price = 150000, 
        XP = 130000, 
        Seasons = {
            "Spring", 
            "Summer"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A BELUGA!?!", 
            "THIS ONE'S VOCAL!", 
            "SILLY WHITE WHALE!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Ocean", 
        Worlds = {
            "Sea 1"
        }, 
        HideInBestiary = true
    }, 
    Narwhal = {
        Icon = "rbxassetid://88731690497358", 
        BlockPassiveCapture = true, 
        WeightPool = {
            5400, 
            20000
        }, 
        Chance = 5, 
        Rarity = "Apex", 
        Resilience = 5, 
        ProgressEfficiency = 0.1, 
        Description = "A peculiar Arctic whale particularly known for its long, spiral tusk that resembles a unicorn horn.", 
        Hint = "???", 
        FavouriteBait = "Shrimp", 
        FavouriteTime = "Day", 
        Price = 130000, 
        XP = 120000, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A NARWHAL!?!", 
            "LIKE A UNICORN!", 
            "CAUSING A COMMOTION!"
        }, 
        SparkleColor = Color3.fromRGB(96, 46, 127), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Ocean", 
        Worlds = {
            "Sea 1"
        }, 
        HideInBestiary = true
    }, 
    ["Apex Leviathan"] = {
        Icon = "rbxassetid://84284963960836", 
        BlockPassiveCapture = true, 
        WeightPool = {
            3000000, 
            10000000
        }, 
        Chance = 1, 
        Rarity = "Extinct", 
        Resilience = -10, 
        ForcedProgressEfficiency = 0.03, 
        Description = "A shadowed serpent of the abyss, vast and coiling, its pale eyes pierce the darkness as it swallows ships whole.", 
        Hint = "???", 
        FavouriteBait = "Luminous Larva", 
        FavouriteTime = nil, 
        Price = 200000, 
        XP = 400000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "AN APEX LEVIATHAN!?!?!", 
            "I CAN'T BELIEVE IT!", 
            "IT WAS REAL?!"
        }, 
        SparkleColor = Color3.fromRGB(31, 111, 127), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }, 
        HideInBestiary = true
    }, 
    Mosslurker = {
        Icon = "rbxassetid://138877273682281", 
        BlockPassiveCapture = true, 
        WeightPool = {
            1000000, 
            4000000
        }, 
        Chance = 1, 
        Rarity = "Apex", 
        Resilience = -5, 
        ForcedProgressEfficiency = 0.05, 
        Description = "An ancient, moss-draped titan, its towering shell cradles forests and ruins, moving with the weight of forgotten epochs.", 
        Hint = "???", 
        FavouriteBait = "Shark Head", 
        FavouriteTime = "Night", 
        Price = 200000, 
        XP = 400000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A MOSSLURKER!?!?!", 
            "I CAN'T BELIEVE IT!", 
            "IT WAS REAL?!"
        }, 
        SparkleColor = Color3.fromRGB(76, 127, 27), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Ocean", 
        Worlds = {
            "Sea 1"
        }, 
        HideInBestiary = true
    }, 
    ["Carrot Goldfish"] = {
        Icon = "rbxassetid://115276761742692", 
        WeightPool = {
            10, 
            30
        }, 
        Chance = 100, 
        Rarity = "Common", 
        Resilience = 120, 
        ProgressEfficiency = 1.3, 
        Description = "A shy goldfish with a soft carrot glow and green sprouts, drifting in the murk.", 
        Hint = "Found in the vibrant carrot pool!", 
        FavouriteBait = "None", 
        FavouriteTime = "None", 
        Price = 100, 
        XP = 100, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Carrot Goldfish!", 
            "Shining so bright!", 
            "Healthy!"
        }, 
        SparkleColor = Color3.fromRGB(76, 127, 27), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Carrot Garden", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Carrot Pufferfish"] = {
        Icon = "rbxassetid://80728513266395", 
        WeightPool = {
            16, 
            36
        }, 
        Chance = 85, 
        Rarity = "Common", 
        Resilience = 103, 
        ProgressEfficiency = 1.25, 
        Description = "A cute pufferfish with carrot-dusted scales and green fins, puffing in the roots.", 
        Hint = "Found in the vibrant carrot pool!", 
        FavouriteBait = "None", 
        FavouriteTime = "None", 
        Price = 150, 
        XP = 150, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A Carrot Pufferfish!", 
            "Puffing up so big!", 
            "Carrot spots galore!"
        }, 
        SparkleColor = Color3.fromRGB(76, 127, 27), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Carrot Garden", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Carrot Minnow"] = {
        Icon = "rbxassetid://118960625894895", 
        WeightPool = {
            22, 
            52
        }, 
        Chance = 70, 
        Rarity = "Uncommon", 
        Resilience = 86, 
        ProgressEfficiency = 1.2, 
        Description = "A zippy minnow with a grubby sheen and sprouting streaks, flashing through the soil.", 
        Hint = "Found in the vibrant carrot pool!", 
        FavouriteBait = "None", 
        FavouriteTime = "None", 
        Price = 500, 
        XP = 500, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A Carrot Minnow!", 
            "Zippy little swimmer!", 
            "Shiny carrot glow!"
        }, 
        SparkleColor = Color3.fromRGB(76, 127, 27), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Carrot Garden", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Carrot Eel"] = {
        Icon = "rbxassetid://89496014572275", 
        WeightPool = {
            28, 
            58
        }, 
        Chance = 55, 
        Rarity = "Uncommon", 
        Resilience = 69, 
        ProgressEfficiency = 1.15, 
        Description = "A graceful eel with light-brown skin and green bands, gliding smoothly.", 
        Hint = "Found in the vibrant carrot pool!", 
        FavouriteBait = "None", 
        FavouriteTime = "None", 
        Price = 700, 
        XP = 700, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "Windy"
        }, 
        Quips = {
            "A Carrot Eel!", 
            "Slipping through the water!", 
            "Carrot scales sparkle!"
        }, 
        SparkleColor = Color3.fromRGB(76, 127, 27), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Carrot Garden", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Carrot Salmon"] = {
        Icon = "rbxassetid://133212550618455", 
        WeightPool = {
            34, 
            84
        }, 
        Chance = 40, 
        Rarity = "Rare", 
        Resilience = 52, 
        ProgressEfficiency = 1.1, 
        Description = "A lively salmon with dirty tones and green flecks, swimming energetically.", 
        Hint = "Found in the vibrant carrot pool!", 
        FavouriteBait = "None", 
        FavouriteTime = "None", 
        Price = 1000, 
        XP = 1000, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Carrot Salmon!", 
            "Leaping so high!", 
            "Orange like a carrot!"
        }, 
        SparkleColor = Color3.fromRGB(76, 127, 27), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Carrot Garden", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Carrot Turtle"] = {
        Icon = "rbxassetid://105722497808580", 
        WeightPool = {
            80, 
            240
        }, 
        Chance = 20, 
        Rarity = "Legendary", 
        Resilience = 35, 
        ProgressEfficiency = 0.65, 
        Description = "A serene turtle with a natural green shell, ambling peacefully.", 
        Hint = "Found in the vibrant carrot pool!", 
        FavouriteBait = "None", 
        FavouriteTime = "None", 
        Price = 3000, 
        XP = 3000, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A CARROT TURTLE!", 
            "CARROT SHELL!", 
            "SLOW BUT STEADY!"
        }, 
        SparkleColor = Color3.fromRGB(76, 127, 27), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Carrot Garden", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Carrot Snapper"] = {
        Icon = "rbxassetid://117663818734096", 
        WeightPool = {
            55, 
            125
        }, 
        Chance = 10, 
        Rarity = "Mythical", 
        Resilience = 12, 
        ProgressEfficiency = 0.8, 
        Description = "A calm snapper with covered in dirt and natural green highlights, nibbling gently.", 
        Hint = "Found in the vibrant carrot pool!", 
        FavouriteBait = "None", 
        FavouriteTime = "None", 
        Price = 4000, 
        XP = 4000, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A CARROT SNAPPER!", 
            "NIBBLING!", 
            "CARROT SHINE!"
        }, 
        SparkleColor = Color3.fromRGB(76, 127, 27), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Carrot Garden", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Carrot Shark"] = {
        Icon = "rbxassetid://98516812141486", 
        WeightPool = {
            150, 
            470
        }, 
        Chance = 1, 
        Rarity = "Exotic", 
        Resilience = 8, 
        ProgressEfficiency = 0.2, 
        Description = "A grand shark with a dusty carrot sheen and a growing sprout, cruising the gardens.", 
        Hint = "???", 
        FavouriteBait = "None", 
        FavouriteTime = "None", 
        Price = 8000, 
        XP = 8000, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "Windy"
        }, 
        Quips = {
            "A CARROT SHARK!!!", 
            "GLIDING SO GRAND!!!", 
            "A SPROUT!!!"
        }, 
        SparkleColor = Color3.fromRGB(76, 127, 27), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Carrot Garden", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Moon Idol Sea 1"] = {
        Icon = "rbxassetid://140635213153226", 
        BlockPassiveCapture = true, 
        WeightPool = {
            500, 
            500
        }, 
        Chance = 1, 
        Rarity = "Secret", 
        Resilience = 150, 
        ProgressEfficiency = 0.2, 
        Description = "A moon shaped stone with an unmatched spirit...", 
        Hint = "???", 
        FavouriteBait = "None", 
        FavouriteTime = "None", 
        Price = 30000, 
        XP = 20000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A MOON IDOL!?!?!", 
            "CELESTIAL GREATNESS!!!", 
            "UNMATCHED POWERS!!!"
        }, 
        SparkleColor = Color3.fromRGB(255, 244, 176), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        HideInBestiary = true
    }, 
    ["Moon Idol"] = {
        Icon = "rbxassetid://140635213153226", 
        BlockPassiveCapture = true, 
        WeightPool = {
            500, 
            500
        }, 
        Chance = 1, 
        Rarity = "Secret", 
        Resilience = 150, 
        ProgressEfficiency = 0.2, 
        Description = "A moon shaped stone with an unmatched spirit...", 
        Hint = "???", 
        FavouriteBait = "None", 
        FavouriteTime = "None", 
        Price = 30000, 
        XP = 20000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A MOON IDOL!?!?!", 
            "CELESTIAL GREATNESS!!!", 
            "UNMATCHED POWERS!!!"
        }, 
        SparkleColor = Color3.fromRGB(255, 244, 176), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Blue Moon - First Sea"
    }, 
    ["Moon Arctic Char"] = {
        Icon = "rbxassetid://113858607309335", 
        WeightPool = {
            120, 
            300
        }, 
        Chance = 110, 
        Rarity = "Common", 
        Resilience = 75, 
        ProgressEfficiency = 1.35, 
        Description = "A sleek fish with silvery scales that reflect the moon's gentle glow.", 
        Hint = "It glides where the ice meets the dawn's first light.", 
        FavouriteBait = "Insect", 
        FavouriteTime = nil, 
        Price = 400, 
        XP = 280, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Moon Arctic Char!", 
            "Silvery swimmer!", 
            "Lunar catch!"
        }, 
        SparkleColor = Color3.fromRGB(128, 187, 219), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Blue Moon - First Sea"
    }, 
    ["Silver Scuttler"] = {
        Icon = "rbxassetid://81571343142363", 
        WeightPool = {
            900, 
            2400
        }, 
        Chance = 95, 
        Rarity = "Common", 
        Resilience = 80, 
        ProgressEfficiency = 1.1, 
        Description = "A small, quick fish with shimmering scales that skitter across the ice.", 
        Hint = "It darts beneath the frozen winds.", 
        FavouriteBait = "Bagel", 
        FavouriteTime = nil, 
        Price = 580, 
        XP = 370, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Windy"
        }, 
        Quips = {
            "A Silver Scuttler!", 
            "Gleaming skitterer!", 
            "Quick catch!"
        }, 
        SparkleColor = Color3.fromRGB(160, 160, 160), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Blue Moon - First Sea"
    }, 
    ["Pale Ghost Lumpfish"] = {
        Icon = "rbxassetid://126941365600312", 
        WeightPool = {
            2, 
            8
        }, 
        Chance = 90, 
        Rarity = "Uncommon", 
        Resilience = 60, 
        ProgressEfficiency = 1.4, 
        Description = "A round, pallid fish that clings to ice with an eerie, spectral presence.", 
        Hint = "It haunts the foggy chill of dusk.", 
        FavouriteBait = "Flakes", 
        FavouriteTime = nil, 
        Price = 1000, 
        XP = 750, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A Pale Ghost Lumpfish!", 
            "Spooky lump!", 
            "Ghostly grab!"
        }, 
        SparkleColor = Color3.fromRGB(200, 200, 200), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Blue Moon - First Sea"
    }, 
    ["Frost Ray"] = {
        Icon = "rbxassetid://135376186443805", 
        WeightPool = {
            800, 
            2400
        }, 
        Chance = 85, 
        Rarity = "Uncommon", 
        Resilience = 55, 
        ProgressEfficiency = 1.05, 
        Description = "A flat, icy creature with wings that ripple like frozen waves.", 
        Hint = "It sweeps through the snowy tides.", 
        FavouriteBait = "Worm", 
        FavouriteTime = nil, 
        Price = 1900, 
        XP = 900, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Windy"
        }, 
        Quips = {
            "A Frost Ray!", 
            "Icy wings!", 
            "Cold glider!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Blue Moon - First Sea"
    }, 
    ["Blue Langanose"] = {
        Icon = "rbxassetid://100875351246693", 
        WeightPool = {
            600, 
            1800
        }, 
        Chance = 80, 
        Rarity = "Unusual", 
        Resilience = 62, 
        ProgressEfficiency = 1.15, 
        Description = "A long fish with a deep blue hue, blending into the icy abyss.", 
        Hint = "It probes the clear, cold depths.", 
        FavouriteBait = "Seaweed", 
        FavouriteTime = nil, 
        Price = 2850, 
        XP = 1880, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Blue Langanose!", 
            "Frozen whiskers!", 
            "Blue beauty!"
        }, 
        SparkleColor = Color3.fromRGB(18, 49, 247), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Blue Moon - First Sea"
    }, 
    ["Starbellied Wolf Fish"] = {
        Icon = "rbxassetid://89388598287015", 
        WeightPool = {
            70, 
            240
        }, 
        Chance = 70, 
        Rarity = "Rare", 
        Resilience = 50, 
        ProgressEfficiency = 1.25, 
        Description = "A fierce predator with a surface speckled like a starry night sky.", 
        Hint = "It hunts under the rainy mist.", 
        FavouriteBait = "Minnow", 
        FavouriteTime = nil, 
        Price = 3500, 
        XP = 2950, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A Starbellied Wolf Fish!", 
            "Starry jaws!", 
            "Lunar hunter!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 0), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Blue Moon - First Sea"
    }, 
    ["Icy Daggerfish"] = {
        Icon = "rbxassetid://135539930141529", 
        WeightPool = {
            80, 
            235
        }, 
        Chance = 60, 
        Rarity = "Legendary", 
        Resilience = 45, 
        ProgressEfficiency = 1.2, 
        Description = "A slender, glowing fish with a sharp, icy form that pierces the dark.", 
        Hint = "It flashes within the deep fog.", 
        FavouriteBait = "Truffle Worm", 
        FavouriteTime = nil, 
        Price = 4600, 
        XP = 3100, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "AN ICY DAGGERFISH!", 
            "SHARP GLOW!", 
            "FROSTY BLADE!"
        }, 
        SparkleColor = Color3.fromRGB(128, 187, 219), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Blue Moon - First Sea"
    }, 
    ["Lunar Monkfish"] = {
        Icon = "rbxassetid://82672626514771", 
        WeightPool = {
            800, 
            2500
        }, 
        Chance = 50, 
        Rarity = "Mythical", 
        Resilience = 40, 
        ProgressEfficiency = 0.85, 
        Description = "A grotesque, moon-kissed beast lurking in the icy abyss.", 
        Hint = "It waits where the winds howl over frozen waves.", 
        FavouriteBait = "Shark Head", 
        FavouriteTime = nil, 
        Price = 8000, 
        XP = 5500, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Windy"
        }, 
        Quips = {
            "A LUNAR MONKFISH!", 
            "MOONLIT HORROR!", 
            "WIDE GUY!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 0), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Blue Moon - First Sea"
    }, 
    ["Moon Idol Sea 2"] = {
        Icon = "rbxassetid://140635213153226", 
        BlockPassiveCapture = true, 
        WeightPool = {
            500, 
            500
        }, 
        Chance = 1, 
        Rarity = "Secret", 
        Resilience = 150, 
        ProgressEfficiency = 0.2, 
        Description = "A moon shaped stone with an unmatched spirit...", 
        Hint = "???", 
        FavouriteBait = "None", 
        FavouriteTime = "None", 
        Price = 30000, 
        XP = 20000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A MOON IDOL!?!?!", 
            "CELESTIAL GREATNESS!!!", 
            "UNMATCHED POWERS!!!"
        }, 
        SparkleColor = Color3.fromRGB(255, 244, 176), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        HideInBestiary = true
    }, 
    ["Moonveil Killifish"] = {
        Icon = "rbxassetid://126477157825621", 
        WeightPool = {
            40, 
            120
        }, 
        Chance = 110, 
        Rarity = "Common", 
        Resilience = 75, 
        ProgressEfficiency = 1.4, 
        Description = "A blue delicate fish with a spotted pattern.", 
        Hint = "It dances where the fog cloaks the edge.", 
        FavouriteBait = "Ember Berries", 
        FavouriteTime = nil, 
        Price = 200, 
        XP = 480, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A Moonveil Killifish!", 
            "Misty glimmer!", 
            "Veiled catch!"
        }, 
        SparkleColor = Color3.fromRGB(13, 105, 172), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Blue Moon - First Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Gloamfin Gar"] = {
        Icon = "rbxassetid://110150591793772", 
        WeightPool = {
            400, 
            1200
        }, 
        Chance = 95, 
        Rarity = "Common", 
        Resilience = 80, 
        ProgressEfficiency = 1.15, 
        Description = "A long, sinewy fish with a pattern that glow brightly in the dusk.", 
        Hint = "It slinks through the rainy shallows.", 
        FavouriteBait = "Gale Grub", 
        FavouriteTime = nil, 
        Price = 290, 
        XP = 1055, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A Gloamfin Gar!", 
            "Glowing prowler!", 
            "Purple swimmer!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 0), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Blue Moon - First Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Lurking Crescent Pike"] = {
        Icon = "rbxassetid://131036635264697", 
        WeightPool = {
            70, 
            180
        }, 
        Chance = 90, 
        Rarity = "Uncommon", 
        Resilience = 60, 
        ProgressEfficiency = 1.45, 
        Description = "A slender fish with crescent markings, hiding in the shadows.", 
        Hint = "It waits where the winds stir the bog's surface.", 
        FavouriteBait = "Lagoon Leech", 
        FavouriteTime = nil, 
        Price = 500, 
        XP = 1525, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Windy"
        }, 
        Quips = {
            "A Lurking Crescent Pike!", 
            "Crescent shadow!", 
            "Starry!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 0), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Blue Moon - First Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Moonridge Catfish"] = {
        Icon = "rbxassetid://106024360957639", 
        WeightPool = {
            20, 
            60
        }, 
        Chance = 85, 
        Rarity = "Unusual", 
        Resilience = 55, 
        ProgressEfficiency = 1.25, 
        Description = "A sleek fish with whiskers that lightly glow like moonlight.", 
        Hint = "It swims where the waters clear under starlight.", 
        FavouriteBait = "Mist Worms", 
        FavouriteTime = nil, 
        Price = 950, 
        XP = 2350, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Moonridge Catfish!", 
            "Whiskered wanderer!", 
            "Moonlit whiskers!"
        }, 
        SparkleColor = Color3.fromRGB(103, 128, 158), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Blue Moon - First Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Crescent Madtom"] = {
        Icon = "rbxassetid://72266570463259", 
        WeightPool = {
            30, 
            90
        }, 
        Chance = 80, 
        Rarity = "Rare", 
        Resilience = 50, 
        ProgressEfficiency = 1.2, 
        Description = "A small, feisty fish with glowing eyes, darting through the tides.", 
        Hint = "It flails where the rain feeds the water's heart.", 
        FavouriteBait = "Lushrooms", 
        FavouriteTime = nil, 
        Price = 1425, 
        XP = 3820, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A Crescent Madtom!", 
            "Tiny terror!", 
            "Crescent catfish!"
        }, 
        SparkleColor = Color3.fromRGB(103, 128, 158), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Blue Moon - First Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Bog Lantern Goby"] = {
        Icon = "rbxassetid://107526449346405", 
        WeightPool = {
            15, 
            40
        }, 
        Chance = 70, 
        Rarity = "Legendary", 
        Resilience = 45, 
        ProgressEfficiency = 1.3, 
        Description = "A tiny fish with a large black eyes, looming within the bog's depths.", 
        Hint = "It gleams where the fog hides the secrets.", 
        FavouriteBait = "Crystal Bananas", 
        FavouriteTime = nil, 
        Price = 1750, 
        XP = 5425, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A BOG LANTERN GOBY!", 
            "GLOWING GUIDE!", 
            "BOGGED LIGHT!"
        }, 
        SparkleColor = Color3.fromRGB(103, 128, 158), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Blue Moon - First Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Tarnished Moongill"] = {
        Icon = "rbxassetid://100194202489039", 
        WeightPool = {
            10, 
            35
        }, 
        Chance = 60, 
        Rarity = "Mythical", 
        Resilience = 35, 
        ProgressEfficiency = 1.05, 
        Description = "A small fish with gills that shimmer like silver under moonlight.", 
        Hint = "It glides where the winds carve the bog's surface.", 
        FavouriteBait = "Sapphire Krill", 
        FavouriteTime = nil, 
        Price = 2300, 
        XP = 8500, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Windy"
        }, 
        Quips = {
            "A TARNISHED MOONGILL!", 
            "SILVER SHINE!", 
            "stinky tarnished"
        }, 
        SparkleColor = Color3.fromRGB(103, 128, 158), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Blue Moon - First Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    Shell = {
        Icon = "rbxassetid://80553083768726", 
        WeightPool = {
            5, 
            10
        }, 
        Chance = 0, 
        Rarity = "Extinct", 
        Resilience = 100, 
        ProgressEfficiency = 1, 
        Description = "A swift, shrimp-like creature with a tail that flicks like a whip, stashing shells in hidden burrows.", 
        Hint = "It darts through the mist where the waves whisper.", 
        FavouriteBait = nil, 
        FavouriteTime = nil, 
        Price = 0, 
        XP = 0, 
        Seasons = nil, 
        Weather = nil, 
        Quips = {
            "A Shrimpanzee!", 
            "Tail-whippin' treasure!", 
            "Burrow bandit!"
        }, 
        SparkleColor = Color3.fromRGB(159, 132, 115), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = nil, 
        Worlds = {
            "Sea 1"
        }
    }, 
    Shrimpanzee = {
        Icon = "rbxassetid://80553083768726", 
        WeightPool = {
            80000, 
            250000
        }, 
        Chance = 30, 
        Rarity = "Limited", 
        Resilience = 60, 
        ProgressEfficiency = 1.15, 
        Description = "A swift, shrimp-like creature with a tail that flicks like a whip, stashing shells in hidden burrows.", 
        Hint = "It darts through the mist where the waves whisper.", 
        FavouriteBait = "Phantom Leech", 
        FavouriteTime = nil, 
        Price = 250, 
        XP = 1150, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A Shrimpanzee!", 
            "Tail-whippin' treasure!", 
            "Burrow bandit!"
        }, 
        SparkleColor = Color3.fromRGB(159, 132, 115), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Octophant", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Royal Tigerfish"] = {
        Icon = "rbxassetid://116436800778784", 
        WeightPool = {
            350, 
            790
        }, 
        Chance = 25, 
        Rarity = "Limited", 
        Resilience = 30, 
        ProgressEfficiency = 0.85, 
        Description = "A sleek predator with a striped body, awaiting a target.", 
        Hint = "It prowls where the sun blazes through the surface.", 
        FavouriteBait = "Ember Berries", 
        FavouriteTime = nil, 
        Price = 900, 
        XP = 1400, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Royal Tigerfish!", 
            "King of tigers!", 
            "Tiger of the tides!", 
            "Royalty of the rivers!"
        }, 
        SparkleColor = Color3.fromRGB(232, 174, 81), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Octophant", 
        Worlds = {
            "Sea 1"
        }
    }, 
    Slurpfloth = {
        Icon = "rbxassetid://85215653083400", 
        WeightPool = {
            950, 
            3700
        }, 
        Chance = 20, 
        Rarity = "Limited", 
        Resilience = 25, 
        ProgressEfficiency = 0.55, 
        Description = "A lazy, sloth-like swimmer with drooping fins, nibbling slowly in the dark waters.", 
        Hint = "It hangs where the rain drizzles over the sea.", 
        FavouriteBait = "Fish Head", 
        FavouriteTime = nil, 
        Price = 1200, 
        XP = 1700, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A Slurpfloth!", 
            "Sloth of the sea!", 
            "Lazy tide lounger!", 
            "Slow-munchin\226\128\153 drifter!"
        }, 
        SparkleColor = Color3.fromRGB(68, 54, 47), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Octophant", 
        Worlds = {
            "Sea 1"
        }
    }, 
    Flamangler = {
        Icon = "rbxassetid://123390569043670", 
        WeightPool = {
            720, 
            2800
        }, 
        Chance = 15, 
        Rarity = "Limited", 
        Resilience = 10, 
        ProgressEfficiency = 0.25, 
        Description = "A graceful fish with pink fins and a beak-like snout, wading through coral shallows.", 
        Hint = "It struts where the wind ripples the surface.", 
        FavouriteBait = "Lagoon Leech", 
        FavouriteTime = nil, 
        Price = 1500, 
        XP = 2000, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "Windy"
        }, 
        Quips = {
            "A Flamangler!", 
            "Pink-legged prince!", 
            "Reef-wading wonder!", 
            "Adequate lighting!"
        }, 
        SparkleColor = Color3.fromRGB(255, 179, 242), 
        HoldAnimation = l_fish_0:WaitForChild("small"), 
        From = "Octophant", 
        Worlds = {
            "Sea 1"
        }
    }, 
    Orcanda = {
        Icon = "rbxassetid://110031930947706", 
        WeightPool = {
            30000, 
            100000
        }, 
        Chance = 10, 
        Rarity = "Limited", 
        Resilience = 5, 
        ProgressEfficiency = 0.1, 
        Description = "A large, slow-moving beast with a dorsal fin that cuts through the sea like a plow.", 
        Hint = "It lumbers where the fog cloaks the horizon.", 
        FavouriteBait = "Sapphire Krill", 
        FavouriteTime = nil, 
        Price = 2000, 
        XP = 3000, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "AN ORCANDA!", 
            "IS IT AN ORCA OR A PANDA!?", 
            "FIN LIKE A MOUNTAIN!", 
            "GIANT OF THE GULF!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Octophant", 
        Worlds = {
            "Sea 1"
        }
    }, 
    Octophant = {
        Icon = "rbxassetid://110543339307346", 
        WeightPool = {
            80000, 
            250000
        }, 
        Chance = 1, 
        Rarity = "Limited", 
        Resilience = 1, 
        ProgressEfficiency = 0.05, 
        Description = "A massive creature with strong tusks, sifting the ocean floor with ancient grace.", 
        Hint = "It drifts where the sun warms the stillness.", 
        FavouriteBait = "Golden Worm", 
        FavouriteTime = nil, 
        Price = 45000, 
        XP = 100000, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "AN OCTOPHANT!", 
            "TENTACLED TITAN!", 
            "TRUNK OF THE TRENCH!", 
            "COLOSSAL CUTENESS!"
        }, 
        SparkleColor = Color3.fromRGB(150, 150, 150), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Octophant", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Wretched Guppy"] = {
        Icon = "rbxassetid://105045431285579", 
        WeightPool = {
            80, 
            180
        }, 
        Chance = 35, 
        Rarity = "Limited", 
        Resilience = 110, 
        ProgressEfficiency = 1.1, 
        Description = "In the shadowed shallows, the Wretched Guppy festers, with scales peeling like forgotten curses.", 
        Hint = "Can only be caught in the Cursed Pool.", 
        FavouriteBait = "None", 
        FavouriteTime = nil, 
        Price = 1300, 
        XP = 100, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Wretched Guppy!", 
            "Tiny terror!", 
            "Sorrowful..."
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        FromLimited = "Cults Curse", 
        IsLimitedBestiary = true, 
        From = "Cults Curse"
    }, 
    ["Hollow Gazer"] = {
        Icon = "rbxassetid://82043991450361", 
        WeightPool = {
            300, 
            780
        }, 
        Chance = 25, 
        Rarity = "Limited", 
        Resilience = 45, 
        ProgressEfficiency = 0.85, 
        Description = "From darkest depths, the Hollow Gazer stares, with empty eyes inviting the coldest embrace.", 
        Hint = "Can only be caught in the Cursed Pool.", 
        FavouriteBait = "None", 
        FavouriteTime = nil, 
        Price = 2200, 
        XP = 800, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Hollow Gazer!", 
            "Hypnotic gaze...", 
            "Doesn't seem hollow to me!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        FromLimited = "Cults Curse", 
        IsLimitedBestiary = true, 
        From = "Cults Curse"
    }, 
    ["Eldritch Spineback"] = {
        Icon = "rbxassetid://97819315465161", 
        WeightPool = {
            700, 
            1800
        }, 
        Chance = 20, 
        Rarity = "Limited", 
        Resilience = 40, 
        ProgressEfficiency = 0.65, 
        Description = "Ancient and wrecked, the Eldritch Spineback lurks, with jagged spines whispering secrets of the forgotten age.", 
        Hint = "Can only be caught in the Cursed Pool.", 
        FavouriteBait = "None", 
        FavouriteTime = nil, 
        Price = 2500, 
        XP = 900, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "An Eldritch Spineback!", 
            "Older than time itself!", 
            "A fossil with teeth..."
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        FromLimited = "Cults Curse", 
        IsLimitedBestiary = true, 
        From = "Cults Curse"
    }, 
    ["Abyssal Maw"] = {
        Icon = "rbxassetid://132297023833361", 
        WeightPool = {
            6000, 
            17000
        }, 
        Chance = 18, 
        Rarity = "Limited", 
        Resilience = 10, 
        ProgressEfficiency = 0.45, 
        Description = "A gaping jagged maw rises from the abyss, with devastating hunger for more than what is imaginable.", 
        Hint = "Can only be caught in the Cursed Pool.", 
        FavouriteBait = "None", 
        FavouriteTime = nil, 
        Price = 2900, 
        XP = 1100, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "An Abyssal Maw!", 
            "It ate a bit more than my bait...", 
            "Molar strength of the abyss!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("bigbasic"), 
        FromLimited = "Cults Curse", 
        IsLimitedBestiary = true, 
        From = "Cults Curse"
    }, 
    ["Bloodscript Eel"] = {
        Icon = "rbxassetid://112659110841268", 
        WeightPool = {
            180, 
            450
        }, 
        Chance = 3, 
        Rarity = "Limited", 
        Resilience = 5, 
        ProgressEfficiency = 0.3, 
        Description = "Slithering through scarlet currents, the Bloodscript Eel etches itself within the veins of the unwary.", 
        Hint = "Can only be caught in the Cursed Pool.", 
        FavouriteBait = "None", 
        FavouriteTime = nil, 
        Price = 6800, 
        XP = 2400, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Bloodscript Eel!?", 
            "Slippery and sinister!", 
            "It almost caught me!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        FromLimited = "Cults Curse", 
        IsLimitedBestiary = true, 
        From = "Cults Curse"
    }, 
    ["Veilborn Parasite"] = {
        Icon = "rbxassetid://111709084035086", 
        WeightPool = {
            85, 
            230
        }, 
        Chance = 2, 
        Rarity = "Limited", 
        Resilience = 5, 
        ProgressEfficiency = 0.25, 
        Description = "From an unknown origin, the Veilborn Parasite clings, with tendrils threading through its target.", 
        Hint = "Can only be caught in the Cursed Pool.", 
        FavouriteBait = "None", 
        FavouriteTime = nil, 
        Price = 7000, 
        XP = 2600, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Veilborn Parasite!?", 
            "Not quite appetizing...", 
            "Parasitic!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        FromLimited = "Cults Curse", 
        IsLimitedBestiary = true, 
        From = "Cults Curse"
    }, 
    ["Profane Ray"] = {
        Icon = "rbxassetid://86916024375422", 
        WeightPool = {
            1200, 
            2800
        }, 
        Chance = 15, 
        Rarity = "Limited", 
        Resilience = 20, 
        ProgressEfficiency = 0.3, 
        Description = "Displaying an unholy glow, the Profane Ray glides, with wings casting silhouettes that profane the silence.", 
        Hint = "Can only be caught in the Cursed Pool.", 
        FavouriteBait = "None", 
        FavouriteTime = nil, 
        Price = 4500, 
        XP = 1550, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Profane Ray!", 
            "Cursed!", 
            "A sin with fins!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        FromLimited = "Cults Curse", 
        IsLimitedBestiary = true, 
        From = "Cults Curse"
    }, 
    ["The Whispering One"] = {
        Icon = "rbxassetid://114020294523055", 
        WeightPool = {
            5000, 
            14000
        }, 
        Chance = 1, 
        Rarity = "Limited", 
        Resilience = 1, 
        ProgressEfficiency = 0.05, 
        Description = "In the stillness, The Whispering One mutters, with a voice exhibiting a choir of dread from beyond the unknown.", 
        Hint = "Can only be caught in the Cursed Pool.", 
        FavouriteBait = "None", 
        FavouriteTime = nil, 
        Price = 15000, 
        XP = 6500, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "THE WHISPERING ONE!?!?", 
            "DEADLY TRANQUILITY!", 
            "DEAFENING SILENCE!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        FromLimited = "Cults Curse", 
        IsLimitedBestiary = true, 
        From = "Cults Curse"
    }, 
    Minnowse = {
        Icon = "rbxassetid://140472962459296", 
        WeightPool = {
            5, 
            17
        }, 
        Chance = 100, 
        Rarity = "Limited", 
        Resilience = 120, 
        ProgressEfficiency = 1.15, 
        Description = "A tiny swimmer with twitching whiskers, scurrying through the shallows.", 
        Hint = "It squeaks where the fog blankets the morning tide.", 
        FavouriteBait = "Flakes", 
        FavouriteTime = nil, 
        Price = 250, 
        XP = 425, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A Minnowse!", 
            "Cheese!", 
            "Squeak!"
        }, 
        SparkleColor = Color3.fromRGB(161, 135, 116), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Animals1", 
        Worlds = {
            "Sea 1"
        }
    }, 
    Kittyfish = {
        Icon = "rbxassetid://75195976218261", 
        WeightPool = {
            45, 
            213
        }, 
        Chance = 80, 
        Rarity = "Limited", 
        Resilience = 130, 
        ProgressEfficiency = 1.1, 
        Description = "A feline swimmer with whiskers, purring through the warm currents.", 
        Hint = "It meows where the summer sun warms the currents.", 
        FavouriteBait = "Fish Head", 
        FavouriteTime = nil, 
        Price = 300, 
        XP = 650, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Kittyfish!", 
            "Whiskers in the waves!", 
            "Cat of the sea!", 
            "A best friend!", 
            "Aggressive purring!", 
            "meow meow meow meow meow", 
            "This isn't Mila...", 
            ":3", 
            "car"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Animals1", 
        Worlds = {
            "Sea 1"
        }
    }, 
    Parrotfish = {
        Icon = "rbxassetid://74639413269289", 
        WeightPool = {
            45, 
            120
        }, 
        Chance = 70, 
        Rarity = "Limited", 
        Resilience = 50, 
        ProgressEfficiency = 1.05, 
        Description = "A vibrant fish with a beak, squawking through the coral reefs.", 
        Hint = "It chatters where the winds stir the tropical waters.", 
        FavouriteBait = "Crystal Bananas", 
        FavouriteTime = nil, 
        Price = 280, 
        XP = 880, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Windy"
        }, 
        Quips = {
            "A Parrotfish!", 
            "Parrot of the deep!", 
            "Colorful catch!"
        }, 
        SparkleColor = Color3.fromRGB(113, 255, 97), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Animals1", 
        Worlds = {
            "Sea 1"
        }
    }, 
    Pengwhal = {
        Icon = "rbxassetid://94159581572250", 
        WeightPool = {
            150, 
            440
        }, 
        Chance = 60, 
        Rarity = "Limited", 
        Resilience = 70, 
        ProgressEfficiency = 0.95, 
        Description = "A sleek swimmer with a horned snout, waddling through icy seas.", 
        Hint = "It spears the chill where snow dusts the waves.", 
        FavouriteBait = "Squid", 
        FavouriteTime = nil, 
        Price = 450, 
        XP = 1000, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Pengwhal!", 
            "Penguin of the sea!", 
            "Icebound swimmer!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Animals1", 
        Worlds = {
            "Sea 1"
        }
    }, 
    Racuda = {
        Icon = "rbxassetid://126520579702144", 
        WeightPool = {
            65, 
            250
        }, 
        Chance = 50, 
        Rarity = "Limited", 
        Resilience = 40, 
        ProgressEfficiency = 0.85, 
        Description = "A sneaky fish with a masked face, rummaging through murky waters.", 
        Hint = "It scavenges where the rain muddies the depths.", 
        FavouriteBait = "Bagel", 
        FavouriteTime = nil, 
        Price = 650, 
        XP = 1150, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A Racuda!", 
            "Masked marauder!", 
            "Raccoon of the reef!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Animals1", 
        Worlds = {
            "Sea 1"
        }
    }, 
    Crocokoi = {
        Icon = "rbxassetid://86079154768543", 
        WeightPool = {
            5000, 
            14000
        }, 
        Chance = 40, 
        Rarity = "Limited", 
        Resilience = 15, 
        ProgressEfficiency = 0.75, 
        Description = "A scaly swimmer with snapping jaws, lurking in the shallows.", 
        Hint = "It snaps where the fog cloaks the swampy tides.", 
        FavouriteBait = "Minnow", 
        FavouriteTime = nil, 
        Price = 700, 
        XP = 1500, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A Crocokoi!", 
            "Jaws of the deep!", 
            "Croc in the current!"
        }, 
        SparkleColor = Color3.fromRGB(245, 227, 66), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Animals1", 
        Worlds = {
            "Sea 1"
        }
    }, 
    Krabbit = {
        Icon = "rbxassetid://118920669604134", 
        WeightPool = {
            7500, 
            22000
        }, 
        Chance = 30, 
        Rarity = "Limited", 
        Resilience = 20, 
        ProgressEfficiency = 0.65, 
        Description = "A hopping fish with long ears, nibbling through the weeds.", 
        Hint = "It bounces where the spring blooms touch the water.", 
        FavouriteBait = "Shrimp", 
        FavouriteTime = nil, 
        Price = 900, 
        XP = 2700, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Krabbit!", 
            "Hopper of the sea!", 
            "Ears in the tide!"
        }, 
        SparkleColor = Color3.fromRGB(134, 64, 41), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Animals1", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Siren Sheep"] = {
        Icon = "rbxassetid://90218266378032", 
        WeightPool = {
            3000, 
            8000
        }, 
        Chance = 25, 
        Rarity = "Limited", 
        Resilience = 35, 
        ProgressEfficiency = 0.55, 
        Description = "A woolly fish with a haunting bleat, drifting through misty waters.", 
        Hint = "It baas where the wind howls over the waves.", 
        FavouriteBait = "Seaweed", 
        FavouriteTime = nil, 
        Price = 1200, 
        XP = 3100, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Windy"
        }, 
        Quips = {
            "A Siren Sheep!", 
            "Sheep of the sea!", 
            "Woolly wonder!"
        }, 
        SparkleColor = Color3.fromRGB(141, 188, 184), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Animals1", 
        Worlds = {
            "Sea 1"
        }
    }, 
    Capybass = {
        Icon = "rbxassetid://84310452827133", 
        WeightPool = {
            250, 
            750
        }, 
        Chance = 20, 
        Rarity = "Limited", 
        Resilience = 25, 
        ProgressEfficiency = 0.5, 
        Description = "A laid-back fish with a friendly snout, basking in calm waters.", 
        Hint = "It lounges where the autumn sun softens the ripples.", 
        FavouriteBait = "Seaweed", 
        FavouriteTime = nil, 
        Price = 1500, 
        XP = 3700, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Capybass!", 
            "Fantastic swimmer!", 
            "Friendliest catch!"
        }, 
        SparkleColor = Color3.fromRGB(108, 92, 75), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Animals1", 
        Worlds = {
            "Sea 1"
        }
    }, 
    Cluckfin = {
        Icon = "rbxassetid://77638446765066", 
        WeightPool = {
            95, 
            390
        }, 
        Chance = 100, 
        Rarity = "Limited", 
        Resilience = 90, 
        ProgressEfficiency = 1.05, 
        Description = "A feathered fish, crowing beneath the waves.", 
        Hint = "It clucks where the summer sun dances on the waves.", 
        FavouriteBait = "Flakes", 
        FavouriteTime = nil, 
        Price = 250, 
        XP = 425, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Cluckfin!", 
            "Feathers and fins!", 
            "Rotisserie!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Animals1"
    }, 
    Zebrafishlet = {
        Icon = "rbxassetid://127797733096795", 
        WeightPool = {
            85, 
            350
        }, 
        Chance = 90, 
        Rarity = "Limited", 
        Resilience = 80, 
        ProgressEfficiency = 1.08, 
        Description = "A tiny striped swimmer, darting through the currents like a zebra in the herd.", 
        Hint = "Its zebra stripes flicker where the river bends in the fog.", 
        FavouriteBait = "Insect", 
        FavouriteTime = nil, 
        Price = 300, 
        XP = 650, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A Zebrafishlet!", 
            "Striped!", 
            "A zebra in the deep!", 
            "Black and white!"
        }, 
        SparkleColor = Color3.fromRGB(15, 15, 15), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Animals1"
    }, 
    ["Piglet Pike"] = {
        Icon = "rbxassetid://102101720419012", 
        WeightPool = {
            115, 
            410
        }, 
        Chance = 80, 
        Rarity = "Limited", 
        Resilience = 70, 
        ProgressEfficiency = 0.96, 
        Description = "A stout fish with a snout, wallowing in the muddy depths.", 
        Hint = "It snorts and snuffles where cool rains turn the waters murky.", 
        FavouriteBait = "Shrimp", 
        FavouriteTime = nil, 
        Price = 280, 
        XP = 880, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A Piglet Pike!", 
            "A pig in the pond!", 
            "Muddy and proud!"
        }, 
        SparkleColor = Color3.fromRGB(255, 152, 220), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Animals1"
    }, 
    Squirrelray = {
        Icon = "rbxassetid://83156169492063", 
        WeightPool = {
            90, 
            290
        }, 
        Chance = 70, 
        Rarity = "Limited", 
        Resilience = 60, 
        ProgressEfficiency = 1.03, 
        Description = "A nimble ray with a bushy tail, hoarding treasures in the sand.", 
        Hint = "It scurries where the winds whip the surface.", 
        FavouriteBait = "Bagel", 
        FavouriteTime = nil, 
        Price = 450, 
        XP = 1050, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Windy"
        }, 
        Quips = {
            "A Squirrelray!", 
            "Nuts!", 
            "Tail of the tide!", 
            "Squirrel of the sea!"
        }, 
        SparkleColor = Color3.fromRGB(98, 54, 5), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Animals1"
    }, 
    ["Duckfin Tuna"] = {
        Icon = "rbxassetid://110717843323075", 
        WeightPool = {
            850, 
            3900
        }, 
        Chance = 60, 
        Rarity = "Limited", 
        Resilience = 50, 
        ProgressEfficiency = 1.07, 
        Description = "A quacking tuna with webbed fins, paddling through the deep.", 
        Hint = "It waddles in the water when the flowers bloom.", 
        FavouriteBait = "Flakes", 
        FavouriteTime = nil, 
        Price = 650, 
        XP = 1150, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Duckfin Tuna!", 
            "Quack attack!", 
            "Duck in the deep!", 
            "Waddle I do now?"
        }, 
        SparkleColor = Color3.fromRGB(44, 101, 29), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Animals1"
    }, 
    Porcufish = {
        Icon = "rbxassetid://85718883692768", 
        WeightPool = {
            500, 
            1400
        }, 
        Chance = 50, 
        Rarity = "Limited", 
        Resilience = 30, 
        ProgressEfficiency = 0.85, 
        Description = "A spiky swimmer with quills that shimmer in the dark waters.", 
        Hint = "It bristles in the chill where the rain drums.", 
        FavouriteBait = "Squid", 
        FavouriteTime = nil, 
        Price = 1800, 
        XP = 1700, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A Porcufish!", 
            "Prickly and proud!", 
            "Quills in the current!", 
            "Ouch, that's sharp!"
        }, 
        SparkleColor = Color3.fromRGB(195, 186, 161), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Animals1"
    }, 
    Piranhamunk = {
        Icon = "rbxassetid://132499310365024", 
        WeightPool = {
            750, 
            2500
        }, 
        Chance = 35, 
        Rarity = "Limited", 
        Resilience = 25, 
        ProgressEfficiency = 0.55, 
        Description = "A chittering fish with razor teeth, gnawing through the shadows.", 
        Hint = "It bites where the fog hides the shore.", 
        FavouriteBait = "Minnow", 
        FavouriteTime = nil, 
        Price = 2600, 
        XP = 2400, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A Piranhamunk!", 
            "Chomper!", 
            "Teeth of the tide!", 
            "Monkey with attitude!"
        }, 
        SparkleColor = Color3.fromRGB(131, 116, 88), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Animals1"
    }, 
    Salmoose = {
        Icon = "rbxassetid://74678661777712", 
        WeightPool = {
            950, 
            3000
        }, 
        Chance = 20, 
        Rarity = "Limited", 
        Resilience = 15, 
        ProgressEfficiency = 0.5, 
        Description = "A majestic fish with antlers, swimming through icy streams.", 
        Hint = "Its antlers sway where snow dusts the water.", 
        FavouriteBait = "Truffle Worm", 
        FavouriteTime = nil, 
        Price = 3500, 
        XP = 3400, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A SALMOOSE!", 
            "MOOSE ON THE LOOSE!", 
            "ANTLERS AHOY!"
        }, 
        SparkleColor = Color3.fromRGB(255, 237, 198), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Animals1"
    }, 
    ["Mained Lionfish"] = {
        Icon = "rbxassetid://106599430074891", 
        WeightPool = {
            1500, 
            4500
        }, 
        Chance = 10, 
        Rarity = "Limited", 
        Resilience = 10, 
        ProgressEfficiency = 0.45, 
        Description = "A regal fish with a fiery mane, ruling the coral depths.", 
        Hint = "Its mane flares where the sun ignites the waves.", 
        FavouriteBait = "Fish Head", 
        FavouriteTime = nil, 
        Price = 6500, 
        XP = 5000, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A MAINED LIONFISH!", 
            "ROAR OF THE REEF!", 
            "KING OF THE CURRENT!", 
            "MANE AND MAJESTY!"
        }, 
        SparkleColor = Color3.fromRGB(208, 104, 0), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Animals1"
    }, 
    Seacow = {
        Icon = "rbxassetid://118193612403596", 
        WeightPool = {
            7500, 
            35000
        }, 
        Chance = 5, 
        Rarity = "Limited", 
        Resilience = 5, 
        ProgressEfficiency = 0.15, 
        Description = "A gentle giant grazing the ocean floor, its bulk a marvel of the deep.", 
        Hint = "Its graze drifts where winds calm the sea.", 
        FavouriteBait = "Shark Head", 
        FavouriteTime = nil, 
        Price = 14000, 
        XP = 10000, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Windy"
        }, 
        Quips = {
            "A SEACOW!", 
            "MOO FROM THE BLUE!", 
            "COW OF THE CORAL!", 
            "GRASS-EATER OF THE GULF!"
        }, 
        SparkleColor = Color3.fromRGB(101, 96, 19), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Animals1"
    }, 
    ["Mama Poot"] = {
        Icon = "rbxassetid://87302760562299", 
        WeightPool = {
            30, 
            80
        }, 
        Chance = 30, 
        Rarity = "Limited", 
        Resilience = 55, 
        ProgressEfficiency = 1.25, 
        Description = "A nurturing Smurf who loves to care for others.", 
        Hint = "Exclusively obtainable during the Smurf event!", 
        FavouriteBait = nil, 
        FavouriteTime = nil, 
        Price = 3000, 
        XP = 1000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "Mama Poot?!?", 
            "So cute!", 
            "Wow!"
        }, 
        SparkleColor = Color3.fromRGB(85, 170, 255), 
        HoldAnimation = l_fish_0:WaitForChild("heavybasic"), 
        From = "Smurf Event Pool"
    }, 
    Ken = {
        Icon = "rbxassetid://95896982414204", 
        WeightPool = {
            90, 
            210
        }, 
        Chance = 19, 
        Rarity = "Limited", 
        Resilience = 15, 
        ProgressEfficiency = 0.55, 
        Description = "A cool, laid-back Smurf with a knack for adventure.", 
        Hint = "Exclusively obtainable during the Smurf event!", 
        FavouriteBait = nil, 
        FavouriteTime = nil, 
        Price = 7300, 
        XP = 3400, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A Smurf?!?", 
            "So blue!", 
            "Wow!"
        }, 
        SparkleColor = Color3.fromRGB(85, 170, 255), 
        HoldAnimation = l_fish_0:WaitForChild("heavybasic"), 
        From = "Smurf Event Pool"
    }, 
    ["Grouchy Smurf"] = {
        Icon = "rbxassetid://97444798993240", 
        WeightPool = {
            90, 
            210
        }, 
        Chance = 14, 
        Rarity = "Limited", 
        Resilience = 35, 
        ProgressEfficiency = 0.75, 
        Description = "A grumpy Smurf always being a pessimist.", 
        Hint = "Exclusively obtainable during the Smurf event!", 
        FavouriteBait = nil, 
        FavouriteTime = nil, 
        Price = 6000, 
        XP = 2700, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A Smurf?!?", 
            "So blue!", 
            "Wow!"
        }, 
        SparkleColor = Color3.fromRGB(85, 170, 255), 
        HoldAnimation = l_fish_0:WaitForChild("heavybasic"), 
        From = "Smurf Event Pool"
    }, 
    ["No Name"] = {
        Icon = "rbxassetid://120952479748253", 
        WeightPool = {
            90, 
            210
        }, 
        Chance = 11, 
        Rarity = "Limited", 
        Resilience = 35, 
        ProgressEfficiency = 0.85, 
        Description = "A mysterious Smurf with an unknown identity.", 
        Hint = "Exclusively obtainable during the Smurf event!", 
        FavouriteBait = nil, 
        FavouriteTime = nil, 
        Price = 5400, 
        XP = 2400, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A Smurf?!?", 
            "So blue!", 
            "Wow!"
        }, 
        SparkleColor = Color3.fromRGB(85, 170, 255), 
        HoldAnimation = l_fish_0:WaitForChild("heavybasic"), 
        From = "Smurf Event Pool"
    }, 
    Hefty = {
        Icon = "rbxassetid://79851632386212", 
        WeightPool = {
            90, 
            210
        }, 
        Chance = 12, 
        Rarity = "Limited", 
        Resilience = 35, 
        ProgressEfficiency = 0.8, 
        Description = "A strong Smurf who lifts everyone's spirits.", 
        Hint = "Exclusively obtainable during the Smurf event!", 
        FavouriteBait = nil, 
        FavouriteTime = nil, 
        Price = 5700, 
        XP = 2600, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A Smurf?!?", 
            "So blue!", 
            "Wow!"
        }, 
        SparkleColor = Color3.fromRGB(85, 170, 255), 
        HoldAnimation = l_fish_0:WaitForChild("heavybasic"), 
        From = "Smurf Event Pool"
    }, 
    Vanity = {
        Icon = "rbxassetid://108565005294964", 
        WeightPool = {
            90, 
            210
        }, 
        Chance = 15, 
        Rarity = "Limited", 
        Resilience = 35, 
        ProgressEfficiency = 0.7, 
        Description = "A Smurf obsessed with their own reflection.", 
        Hint = "Exclusively obtainable during the Smurf event!", 
        FavouriteBait = nil, 
        FavouriteTime = nil, 
        Price = 6300, 
        XP = 2900, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A Smurf?!?", 
            "So blue!", 
            "Wow!"
        }, 
        SparkleColor = Color3.fromRGB(85, 170, 255), 
        HoldAnimation = l_fish_0:WaitForChild("heavybasic"), 
        From = "Smurf Event Pool"
    }, 
    ["Brainy Smurf"] = {
        Icon = "rbxassetid://114827910259460", 
        WeightPool = {
            90, 
            210
        }, 
        Chance = 10, 
        Rarity = "Limited", 
        Resilience = 35, 
        ProgressEfficiency = 0.9, 
        Description = "A clever Smurf with a knack for problem-solving.", 
        Hint = "Exclusively obtainable during the Smurf event!", 
        FavouriteBait = nil, 
        FavouriteTime = nil, 
        Price = 5100, 
        XP = 2200, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A Smurf?!?", 
            "So blue!", 
            "Wow!"
        }, 
        SparkleColor = Color3.fromRGB(85, 170, 255), 
        HoldAnimation = l_fish_0:WaitForChild("heavybasic"), 
        From = "Smurf Event Pool"
    }, 
    ["Clumsy Smurf"] = {
        Icon = "rbxassetid://130363185464176", 
        WeightPool = {
            90, 
            210
        }, 
        Chance = 5, 
        Rarity = "Limited", 
        Resilience = 35, 
        ProgressEfficiency = 1.1, 
        Description = "A well-meaning Smurf who trips over everything.", 
        Hint = "Exclusively obtainable during the Smurf event!", 
        FavouriteBait = nil, 
        FavouriteTime = nil, 
        Price = 3900, 
        XP = 1500, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A Smurf?!?", 
            "So blue!", 
            "Wow!"
        }, 
        SparkleColor = Color3.fromRGB(85, 170, 255), 
        HoldAnimation = l_fish_0:WaitForChild("heavybasic"), 
        From = "Smurf Event Pool"
    }, 
    ["Papa Smurf"] = {
        Icon = "rbxassetid://86893208355346", 
        WeightPool = {
            90, 
            210
        }, 
        Chance = 14, 
        Rarity = "Limited", 
        Resilience = 15, 
        ProgressEfficiency = 0.1, 
        Description = "The wise leader of the Smurf village.", 
        Hint = "Exclusively obtainable during the Smurf event! Find him in Smurf Storms.", 
        FavouriteBait = nil, 
        FavouriteTime = nil, 
        Price = 10000, 
        XP = 5000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A Smurf?!?", 
            "So blue!", 
            "Wow!"
        }, 
        SparkleColor = Color3.fromRGB(85, 170, 255), 
        HoldAnimation = l_fish_0:WaitForChild("heavybasic"), 
        From = "Smurf Event Pool"
    }, 
    Moxie = {
        Icon = "rbxassetid://121051058336080", 
        WeightPool = {
            90, 
            210
        }, 
        Chance = 17, 
        Rarity = "Limited", 
        Resilience = 25, 
        ProgressEfficiency = 0.6, 
        Description = "A bold Smurf full of courage and spunk.", 
        Hint = "Exclusively obtainable during the Smurf event!", 
        FavouriteBait = nil, 
        FavouriteTime = nil, 
        Price = 7000, 
        XP = 3300, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A Smurf?!?", 
            "So blue!", 
            "Wow!"
        }, 
        SparkleColor = Color3.fromRGB(85, 170, 255), 
        HoldAnimation = l_fish_0:WaitForChild("heavybasic"), 
        From = "Smurf Event Pool"
    }, 
    ["Sunny O'Coin"] = {
        Icon = "rbxassetid://119725034311950", 
        WeightPool = {
            900, 
            2100
        }, 
        Chance = 2, 
        Rarity = "Limited", 
        Resilience = 15, 
        ProgressEfficiency = 0.25, 
        Description = "A bright yellow fish with a fitting eyepatch, it basks where gold is prevalent. A sunny St. Patrick's treasure!", 
        Hint = "Appears randomly in Lucky Event pools, lured by a rainbow glow.", 
        FavouriteBait = "Lucky", 
        FavouriteTime = nil, 
        Price = 6500, 
        XP = 2500, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "SUNNY O'COIN!", 
            "GOLDEN GLIMMER!", 
            "LEPRECHAUN'S SHINY CATCH!"
        }, 
        SparkleColor = Color3.fromRGB(38, 252, 95), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Lucky Event"
    }, 
    ["Rowdy McCharm"] = {
        Icon = "rbxassetid://119725034311950", 
        WeightPool = {
            600, 
            1500
        }, 
        Chance = 1, 
        Rarity = "Limited", 
        Resilience = 5, 
        ProgressEfficiency = 0.15, 
        Description = "A lively red fish with eyes that glow like embers, it darts through waters with St. Patrick's playful charm!", 
        Hint = "Appears randomly in Lucky Event pools, lured by a rainbow glow.", 
        FavouriteBait = "Lucky", 
        FavouriteTime = nil, 
        Price = 10000, 
        XP = 5000, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "ROWDY MCCHARM!", 
            "LUCKY LITTLE DANCER!", 
            "CHARMED AND READY!"
        }, 
        SparkleColor = Color3.fromRGB(38, 252, 95), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Lucky Event"
    }, 
    ["Plumrick O'Luck"] = {
        Icon = "rbxassetid://119725034311950", 
        WeightPool = {
            1200, 
            3000
        }, 
        Chance = 4, 
        Rarity = "Limited", 
        Resilience = 20, 
        ProgressEfficiency = 0.45, 
        Description = "A hefty purple fish with stylish shades, it glides through pools where St. Patrick's luck runs deep!", 
        Hint = "Appears randomly in Lucky Event pools, lured by a rainbow glow.", 
        FavouriteBait = "Lucky", 
        FavouriteTime = nil, 
        Price = 5000, 
        XP = 1900, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "PLUMRICK O'LUCK!", 
            "PURPLE CHASER!", 
            "LUCKY DISGUISE!"
        }, 
        SparkleColor = Color3.fromRGB(38, 252, 95), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Lucky Event"
    }, 
    ["O'Mango Goldgrin"] = {
        Icon = "rbxassetid://119725034311950", 
        WeightPool = {
            800, 
            2400
        }, 
        Chance = 5, 
        Rarity = "Limited", 
        Resilience = 25, 
        ProgressEfficiency = 0.5, 
        Description = "An orange fish sporting circular glasses, it grins through warm waters with a St. Patrick's golden glow!", 
        Hint = "Appears randomly in Lucky Event pools, lured by a rainbow glow.", 
        FavouriteBait = "Lucky", 
        FavouriteTime = nil, 
        Price = 4500, 
        XP = 1700, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "O'MANGO GOLDGRIN!", 
            "DOES IT TASTE LIKE A MANGO?", 
            "GOLDEN GIGGLER!"
        }, 
        SparkleColor = Color3.fromRGB(38, 252, 95), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Lucky Event"
    }, 
    ["Blarney McBreeze"] = {
        Icon = "rbxassetid://119725034311950", 
        WeightPool = {
            650, 
            1600
        }, 
        Chance = 3, 
        Rarity = "Limited", 
        Resilience = 10, 
        ProgressEfficiency = 0.35, 
        Description = "A sleek blue fish that rides warm currents, its scales sparkle like shamrocks. A St. Patrick's breezy delight!", 
        Hint = "Appears randomly in Lucky Event pools, lured by a rainbow glow.", 
        FavouriteBait = "Lucky", 
        FavouriteTime = nil, 
        Price = 5500, 
        XP = 2200, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "BLARNEY MCBREEZE!", 
            "SHAMROCK SWIMMER!", 
            "BREEZY LUCK BRINGER!"
        }, 
        SparkleColor = Color3.fromRGB(38, 252, 95), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Lucky Event"
    }, 
    ["Magma Leviathan"] = {
        BlockPassiveCapture = true, 
        Icon = "rbxassetid://119725034311950", 
        WeightPool = {
            500000, 
            1400000
        }, 
        Chance = 0.1, 
        FinalChanceDivisor = 20, 
        Rarity = "Exotic", 
        Resilience = 3, 
        ProgressEfficiency = 0.1, 
        Description = "A behemoth of the volcanic depths, its scales radiate intense heat, turning the water around it into steam. Some say it sleeps for centuries, only waking during great eruptions.", 
        Hint = "Surfaces in thick fog, as if the volcano itself breathes it to life.", 
        FavouriteBait = "Truffle Worm", 
        FavouriteTime = "Day", 
        Price = 25000, 
        XP = 12000, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "THE MAGMA LEVIATHAN!?!", 
            "A TITAN OF FLAME AND FURY!", 
            "SCORCHING KRAKEN!?"
        }, 
        SparkleColor = Color3.fromRGB(255, 102, 46), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Volcanic Vents"
    }, 
    ["Anglers Lantern"] = {
        Icon = "rbxassetid://127503265905341", 
        WeightPool = {
            18, 
            20
        }, 
        Chance = 0.1, 
        Rarity = "Exotic", 
        Resilience = 3, 
        ProgressEfficiency = 0.05, 
        Description = "A glowing anglerfish lantern with eerie deep-sea bioluminescence and sharp teeth.", 
        Hint = "Can be collected by feeding a baby anglerfish", 
        FavouriteBait = "None", 
        FavouriteTime = "None", 
        Price = 1200, 
        XP = 350, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A baby angler fish lantern", 
            "I love angler fish", 
            "SPOOKY!"
        }, 
        SparkleColor = Color3.fromRGB(29, 30, 77), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "None", 
        Unregistered = true
    }, 
    ["Crowned Anglerfish"] = {
        BlockPassiveCapture = true, 
        Icon = "rbxassetid://126962069215447", 
        WeightPool = {
            500000, 
            1400000
        }, 
        Chance = 0.1, 
        FinalChanceDivisor = 4, 
        Rarity = "Exotic", 
        Resilience = 3, 
        ProgressEfficiency = 0.05, 
        Description = "A monstrous kraken-like anglerfish, with a crown shaped lure and teeth as sharper than excalibur. It is said to be the ruler of the abyss.", 
        Hint = "Appears during the darkest nights, when the ocean is still.", 
        FavouriteBait = "Truffle Worm", 
        FavouriteTime = "Night", 
        Price = 22000, 
        XP = 16000, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "THE CROWNED ANGLERFISH!?!", 
            "THE ABYSSAL KING!", 
            "SPOOKY KRAKEN!?"
        }, 
        SparkleColor = Color3.fromRGB(29, 30, 77), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Abyssal Zenith"
    }, 
    ["Crystallized Seadragon"] = {
        BlockPassiveCapture = true, 
        WeightPool = {
            500000, 
            1700000
        }, 
        Chance = 0.1, 
        FinalChanceDivisor = 12, 
        Rarity = "Exotic", 
        Resilience = 1, 
        ProgressEfficiency = 0.05, 
        Description = "A majestic, dragon-like creature with crystal scales that shimmer in the light. It is said to be the guardian of the Calm Zone.", 
        Hint = "Appears during the calmest days, when the wind is strong.", 
        FavouriteBait = "Shark Head", 
        FavouriteTime = nil, 
        Price = 35000, 
        XP = 40000, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "Windy"
        }, 
        Quips = {
            "THE CRYSTALLIZED SEADRAGON!?!", 
            "PRETTY COLORS!", 
            "CRYSTAL KRAKEN!?"
        }, 
        SparkleColor = Color3.fromRGB(85, 250, 220), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Calm Zone"
    }, 
    Scylla = {
        BlockPassiveCapture = true, 
        WeightPool = {
            2000000, 
            5000000
        }, 
        Chance = 0.1, 
        Rarity = "Secret", 
        Resilience = 1, 
        Description = "A mythological, multi-headed being said to lurk in the ocean\226\128\153s deepest abyss. Its serpent-like heads move independently, striking prey with razor-toothed maws, and some believe they regenerate when severed. A myth to most, it is feared as an immortal guardian of the sea, appearing only in the deadliest storms to drag the unwary into the depths.", 
        Hint = "???", 
        FavouriteBait = "Shark Head", 
        FavouriteTime = nil, 
        Price = 200000, 
        XP = 500000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "SCYLLA ITSELF!?!", 
            "IT'S REAL!?!?!?!", 
            "IT'S MASSIVE!!!", 
            "GET THE CAMERA!!!", 
            "THE LEGEND WAS TRUE!!!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Veil of the Forsaken", 
        CustomProgressEfficiency = {
            {
                Value = -0.95
            }
        }
    }, 
    ["Ember Catfish"] = {
        BlockPassiveCapture = true, 
        WeightPool = {
            130, 
            200
        }, 
        Chance = 90, 
        Rarity = "Limited", 
        Resilience = 85, 
        Description = "A faintly glowing body with whiskers that spark indefinitely, the Ember Catfish is a peculiar fish.", 
        Hint = "Only can be caught during Ashfall.", 
        FavouriteBait = "Bagel", 
        FavouriteTime = nil, 
        Price = 275, 
        XP = 130, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "Woah, an Ember Catfish!", 
            "Why isn't it purring?", 
            "Smoldering!", 
            "A little fire hazard!"
        }, 
        SparkleColor = Color3.fromRGB(154, 218, 143), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        FromLimited = "Ashfall", 
        IsLimitedBestiary = true, 
        From = "Ashfall"
    }, 
    ["Blistered Eel"] = {
        BlockPassiveCapture = true, 
        WeightPool = {
            115, 
            190
        }, 
        Chance = 80, 
        Rarity = "Limited", 
        Resilience = 45, 
        Description = "Despite blistering skin, the Blistered Eel is capable of withstanding extreme temperatures.", 
        Hint = "Only can be caught during Ashfall.", 
        FavouriteBait = "Worm", 
        FavouriteTime = nil, 
        Price = 300, 
        XP = 140, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Windy"
        }, 
        Quips = {
            "Woah, a Blistered Eel!", 
            "It comes cooked!", 
            "It's well done!", 
            "Could use skin care..."
        }, 
        SparkleColor = Color3.fromRGB(154, 218, 143), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        FromLimited = "Ashfall", 
        IsLimitedBestiary = true, 
        From = "Ashfall"
    }, 
    ["Lava Lamprey"] = {
        BlockPassiveCapture = true, 
        WeightPool = {
            450, 
            750
        }, 
        Chance = 75, 
        Rarity = "Limited", 
        Resilience = 90, 
        Description = "With a resemblance to a lava lamp, the Lava Lamprey has a stylish color scheme. Don't look too close...", 
        Hint = "Only can be caught during Ashfall.", 
        FavouriteBait = "Insect", 
        FavouriteTime = nil, 
        Price = 350, 
        XP = 170, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "Woah. a Lava Lamprey!", 
            "Pretty!", 
            "Straight out of the '60s!", 
            "Trippy!"
        }, 
        SparkleColor = Color3.fromRGB(154, 218, 143), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        FromLimited = "Ashfall", 
        IsLimitedBestiary = true, 
        From = "Ashfall"
    }, 
    ["Molten Minnow"] = {
        BlockPassiveCapture = true, 
        WeightPool = {
            4, 
            7
        }, 
        Chance = 70, 
        Rarity = "Limited", 
        Resilience = 80, 
        Description = "Leaving behind a trail of glowing embers, the Molten Minnow proves to be threatening.", 
        Hint = "Only can be caught during Ashfall.", 
        FavouriteBait = "Flakes", 
        FavouriteTime = nil, 
        Price = 400, 
        XP = 180, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "Woah, a Molten Minnow!", 
            "Searing hot!", 
            "My hands!"
        }, 
        SparkleColor = Color3.fromRGB(154, 218, 143), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        FromLimited = "Ashfall", 
        IsLimitedBestiary = true, 
        From = "Ashfall"
    }, 
    ["Pyro Pike"] = {
        BlockPassiveCapture = true, 
        WeightPool = {
            25, 
            45
        }, 
        Chance = 30, 
        Rarity = "Limited", 
        Resilience = 50, 
        Description = "A small fish with a strong glow, the Pyro Pike shows unmatched aggression towards its prey.", 
        Hint = "Only can be caught during Ashfall.", 
        FavouriteBait = "Shrimp", 
        FavouriteTime = nil, 
        Price = 500, 
        XP = 240, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "Woah, a Pyro Pike!", 
            "It melted my bobber!", 
            "It lunged at me!", 
            "Sizzling!"
        }, 
        SparkleColor = Color3.fromRGB(154, 218, 143), 
        HoldAnimation = l_fish_0:WaitForChild("bigbasic"), 
        FromLimited = "Ashfall", 
        IsLimitedBestiary = true, 
        From = "Ashfall"
    }, 
    ["Cinder Carp"] = {
        BlockPassiveCapture = true, 
        WeightPool = {
            50, 
            80
        }, 
        Chance = 5.0E-4, 
        Rarity = "Limited", 
        Resilience = 60, 
        Description = "Despite its small size, the Cinder Carp packs incomprehensible heat.", 
        Hint = "Only can be caught during Ashfall.", 
        FavouriteBait = "Minnow", 
        FavouriteTime = nil, 
        Price = 600, 
        XP = 275, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "Woah, a Cinder Carp!", 
            "I think it's still smoking?", 
            "It's glowing!", 
            "Everlasting heat!"
        }, 
        SparkleColor = Color3.fromRGB(154, 218, 143), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        FromLimited = "Ashfall", 
        IsLimitedBestiary = true, 
        From = "Ashfall"
    }, 
    ["Scooty Salmon"] = {
        BlockPassiveCapture = true, 
        WeightPool = {
            70, 
            130
        }, 
        Chance = 0.005, 
        Rarity = "Limited", 
        Resilience = 70, 
        Description = "Coated in fine soot, the Scooty Salmon exhibits extreme volcanic tolerance.", 
        Hint = "Only can be caught during Ashfall.", 
        FavouriteBait = "Seaweed", 
        FavouriteTime = nil, 
        Price = 750, 
        XP = 350, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Windy"
        }, 
        Quips = {
            "Woah, a Scooty Salmon!", 
            "Toasted!", 
            "Could use a rinse."
        }, 
        SparkleColor = Color3.fromRGB(154, 218, 143), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        FromLimited = "Ashfall", 
        IsLimitedBestiary = true, 
        From = "Ashfall"
    }, 
    ["Burnt Betta"] = {
        BlockPassiveCapture = true, 
        WeightPool = {
            2000, 
            8000
        }, 
        Chance = 0.05, 
        Rarity = "Limited", 
        Resilience = 25, 
        ProgressEfficiency = 0.7, 
        Description = "With fierce intent, the Burnt Betta thrives in molten lava.", 
        Hint = "Only can be caught during Ashfall.", 
        FavouriteBait = "Squid", 
        FavouriteTime = nil, 
        Price = 3000, 
        XP = 1500, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Windy"
        }, 
        Quips = {
            "Woah, a Burnt Betta!", 
            "How can it survive?", 
            "Crispy!"
        }, 
        SparkleColor = Color3.fromRGB(154, 218, 143), 
        HoldAnimation = l_fish_0:WaitForChild("bigbasic"), 
        FromLimited = "Ashfall", 
        IsLimitedBestiary = true, 
        From = "Ashfall"
    }, 
    ["Ashcloud Archerfish"] = {
        BlockPassiveCapture = true, 
        WeightPool = {
            10000, 
            16000
        }, 
        Chance = 1, 
        Rarity = "Limited", 
        Resilience = 5, 
        ProgressEfficiency = 0.1, 
        Description = "The guardian of Ashfall, wreathing in plumes of smoke and flickering embers. With masterful precision, the Ashcloud Archerfish shoots scorching lava at its targets with ferocious intent. Nothing is left behind...", 
        Hint = "Only can be caught during Ashfall.", 
        FavouriteBait = "Coal", 
        FavouriteTime = nil, 
        Price = 24000, 
        XP = 6000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "HOT HOT HOT!!!", 
            "IT'S HUGE!", 
            "STILL DRIPPING LAVA!", 
            "WHAT IS IT AIMING FOR!?", 
            "THE ASHCLOUD ARCHERFISH?!?", 
            "THE LEGEND IS TRUE!"
        }, 
        SparkleColor = Color3.fromRGB(154, 218, 143), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        FromLimited = "Ashfall", 
        IsLimitedBestiary = true, 
        From = "Ashfall"
    }, 
    ["Slain Maw"] = {
        BlockPassiveCapture = true, 
        WeightPool = {
            10, 
            50
        }, 
        Chance = 60, 
        Rarity = "Limited", 
        Resilience = 70, 
        Description = "\240\159\142\182", 
        Hint = "???", 
        FavouriteBait = nil, 
        FavouriteTime = nil, 
        Price = 110, 
        XP = 80, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "\240\159\142\181", 
            "\240\159\142\188", 
            "\240\159\142\185", 
            "\240\159\142\186", 
            "\240\159\142\184", 
            "\240\159\142\183"
        }, 
        SparkleColor = Color3.fromRGB(0, 155, 0), 
        HoldAnimation = l_fish_0:WaitForChild("small"), 
        From = "Crypt"
    }, 
    ["Black Veil Ray"] = {
        BlockPassiveCapture = true, 
        WeightPool = {
            10, 
            50
        }, 
        Chance = 60, 
        Rarity = "Limited", 
        Resilience = 70, 
        Description = "\240\159\142\182", 
        Hint = "???", 
        FavouriteBait = nil, 
        FavouriteTime = nil, 
        Price = 110, 
        XP = 80, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "\240\159\142\181", 
            "\240\159\142\188", 
            "\240\159\142\185", 
            "\240\159\142\186", 
            "\240\159\142\184", 
            "\240\159\142\183"
        }, 
        SparkleColor = Color3.fromRGB(0, 155, 0), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Crypt"
    }, 
    ["Bone Lanternfish"] = {
        BlockPassiveCapture = true, 
        WeightPool = {
            10, 
            50
        }, 
        Chance = 60, 
        Rarity = "Limited", 
        Resilience = 70, 
        Description = "\240\159\142\182", 
        Hint = "???", 
        FavouriteBait = nil, 
        FavouriteTime = nil, 
        Price = 110, 
        XP = 80, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "\240\159\142\181", 
            "\240\159\142\188", 
            "\240\159\142\185", 
            "\240\159\142\186", 
            "\240\159\142\184", 
            "\240\159\142\183"
        }, 
        SparkleColor = Color3.fromRGB(0, 155, 0), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Crypt"
    }, 
    ["Harbinger Koi"] = {
        BlockPassiveCapture = true, 
        WeightPool = {
            10, 
            50
        }, 
        Chance = 60, 
        Rarity = "Limited", 
        Resilience = 70, 
        Description = "\240\159\142\182", 
        Hint = "???", 
        FavouriteBait = nil, 
        FavouriteTime = nil, 
        Price = 110, 
        XP = 80, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "\240\159\142\181", 
            "\240\159\142\188", 
            "\240\159\142\185", 
            "\240\159\142\186", 
            "\240\159\142\184", 
            "\240\159\142\183"
        }, 
        SparkleColor = Color3.fromRGB(0, 155, 0), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Crypt"
    }, 
    ["Hexeye Snapper"] = {
        BlockPassiveCapture = true, 
        WeightPool = {
            10, 
            50
        }, 
        Chance = 60, 
        Rarity = "Limited", 
        Resilience = 70, 
        Description = "\240\159\142\182", 
        Hint = "???", 
        FavouriteBait = nil, 
        FavouriteTime = nil, 
        Price = 110, 
        XP = 80, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "\240\159\142\181", 
            "\240\159\142\188", 
            "\240\159\142\185", 
            "\240\159\142\186", 
            "\240\159\142\184", 
            "\240\159\142\183"
        }, 
        SparkleColor = Color3.fromRGB(0, 155, 0), 
        HoldAnimation = l_fish_0:WaitForChild("small"), 
        From = "Crypt"
    }, 
    ["Rotfin Eel"] = {
        BlockPassiveCapture = true, 
        WeightPool = {
            10, 
            50
        }, 
        Chance = 60, 
        Rarity = "Limited", 
        Resilience = 70, 
        Description = "\240\159\142\182", 
        Hint = "???", 
        FavouriteBait = nil, 
        FavouriteTime = nil, 
        Price = 110, 
        XP = 80, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "\240\159\142\181", 
            "\240\159\142\188", 
            "\240\159\142\185", 
            "\240\159\142\186", 
            "\240\159\142\184", 
            "\240\159\142\183"
        }, 
        SparkleColor = Color3.fromRGB(0, 155, 0), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Crypt"
    }, 
    ["Siren\226\128\153s Guppy"] = {
        BlockPassiveCapture = true, 
        WeightPool = {
            10, 
            50
        }, 
        Chance = 60, 
        Rarity = "Limited", 
        Resilience = 70, 
        Description = "\240\159\142\182", 
        Hint = "???", 
        FavouriteBait = nil, 
        FavouriteTime = nil, 
        Price = 110, 
        XP = 80, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "\240\159\142\181", 
            "\240\159\142\188", 
            "\240\159\142\185", 
            "\240\159\142\186", 
            "\240\159\142\184", 
            "\240\159\142\183"
        }, 
        SparkleColor = Color3.fromRGB(0, 155, 0), 
        HoldAnimation = l_fish_0:WaitForChild("small"), 
        From = "Crypt"
    }, 
    Wraithfin = {
        BlockPassiveCapture = true, 
        WeightPool = {
            10, 
            50
        }, 
        Chance = 60, 
        Rarity = "Limited", 
        Resilience = 70, 
        Description = "\240\159\142\182", 
        Hint = "???", 
        FavouriteBait = nil, 
        FavouriteTime = nil, 
        Price = 110, 
        XP = 80, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "\240\159\142\181", 
            "\240\159\142\188", 
            "\240\159\142\185", 
            "\240\159\142\186", 
            "\240\159\142\184", 
            "\240\159\142\183"
        }, 
        SparkleColor = Color3.fromRGB(0, 155, 0), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Crypt"
    }, 
    ["Lovestorm Eel"] = {
        BlockPassiveCapture = true, 
        WeightPool = {
            100000, 
            270000
        }, 
        Chance = 1.0E-4, 
        Rarity = "Limited", 
        Resilience = 3, 
        ProgressEfficiency = 0.1, 
        Description = "A lovely yet dangerous creature, striking with unpredictable ruthlessness. It thrives in a rare storm, leaving chaos behind it as it travels through the waters.", 
        Hint = "When the storm rages, the passion approaches.", 
        FavouriteBait = "Chocolate Fish", 
        FavouriteTime = nil, 
        Price = 15000, 
        XP = 10000, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "THE LOVE EEL?", 
            "ELECTRIC LOVE!", 
            "A KISS OF THUNDER!", 
            "SHOCKINGLY SWEET!"
        }, 
        SparkleColor = Color3.fromRGB(254, 222, 255), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        FromLimited = "Love", 
        From = "Love"
    }, 
    ["Lovestorm Eel Supercharged"] = {
        BlockPassiveCapture = true, 
        WeightPool = {
            100000, 
            285000
        }, 
        Chance = 0.001, 
        Rarity = "Limited", 
        Resilience = 1, 
        ProgressEfficiency = 0.05, 
        Description = "A Love Eel infused with fury of the tempest, with power beyond comprehension.", 
        Hint = "???", 
        FavouriteBait = "Chocolate Fish", 
        FavouriteTime = nil, 
        Price = 25000, 
        XP = 20000, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "SUPERCHARGED?", 
            "UNSTOPPABLE LOVE!", 
            "INCARNATE OF THUNDER!", 
            "DESTRUCTIVE LOVE!"
        }, 
        SparkleColor = Color3.fromRGB(255, 214, 212), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        FromLimited = "Love", 
        From = "Love"
    }, 
    ["Tempest Ray"] = {
        WeightPool = {
            5, 
            20
        }, 
        Chance = 65, 
        Rarity = "Uncommon", 
        Resilience = 65, 
        Description = "A swift, flat-bodied ray with unique storm-pattern markings. They use their wing-like fins to glide through turbulent waters with ease, often found in groups near the surface of stormy seas.", 
        Hint = "Found swimming in the upper waters of the Atlantean Storm.", 
        FavouriteBait = "Seaweed", 
        FavouriteTime = "None", 
        Price = 250, 
        XP = 150, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Windy"
        }, 
        Quips = {
            "A Tempest Ray!", 
            "The storm's getting Ray-l!", 
            "I caught a Tempest Ray!"
        }, 
        SparkleColor = Color3.fromRGB(0, 0, 0), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Atlantean Storm"
    }, 
    ["Abyss Snapper"] = {
        WeightPool = {
            15, 
            40
        }, 
        Chance = 55, 
        Rarity = "Uncommon", 
        Resilience = 60, 
        Description = "A territorial fish with sharp teeth and storm-grey scales. These snappers have adapted to the constant turbulence of the Atlantean Storm, using the currents to ambush their prey.", 
        Hint = "Found in the mid-depths of the Atlantean Storm.", 
        FavouriteBait = "Fish Head", 
        FavouriteTime = "None", 
        Price = 300, 
        XP = 180, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "An Abyss Snapper!", 
            "Watch those teeth!", 
            "That's one angry fish!"
        }, 
        SparkleColor = Color3.fromRGB(0, 0, 0), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Atlantean Storm"
    }, 
    ["Whirlpool Marlin"] = {
        WeightPool = {
            40, 
            90
        }, 
        Chance = 35, 
        Rarity = "Unusual", 
        Resilience = 55, 
        Description = "A powerful marlin species that thrives in the chaotic waters of the Atlantean Storm. Their distinctive spiral-patterned bill helps them navigate through powerful currents while hunting.", 
        Hint = "Found in the deeper parts of the Atlantean Storm.", 
        FavouriteBait = "Squid", 
        FavouriteTime = "None", 
        Price = 450, 
        XP = 250, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A Whirlpool Marlin!", 
            "This one's a fighter!", 
            "What a spectacular catch!"
        }, 
        SparkleColor = Color3.fromRGB(0, 0, 0), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Atlantean Storm"
    }, 
    ["Vortex Barracuda"] = {
        WeightPool = {
            80, 
            160
        }, 
        Chance = 20, 
        Rarity = "Unusual", 
        Resilience = 50, 
        Description = "An aggressive predator with spiral markings and enhanced swimming muscles. These barracuda have learned to use the storm's currents to their advantage when hunting, creating their own miniature whirlpools.", 
        Hint = "Found patrolling the storm's edge.", 
        FavouriteBait = "Minnow", 
        FavouriteTime = "None", 
        Price = 600, 
        XP = 300, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Vortex Barracuda!", 
            "It's creating its own whirlpool!", 
            "What a powerful fish!"
        }, 
        SparkleColor = Color3.fromRGB(0, 0, 0), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Atlantean Storm"
    }, 
    ["Typhoon Tuna"] = {
        WeightPool = {
            200, 
            450
        }, 
        Chance = 12, 
        Rarity = "Rare", 
        Resilience = 45, 
        Description = "A massive tuna species with storm-cloud coloring and unusual fin patterns. They swim in the heart of the Atlantean Storm, using the powerful currents to achieve incredible speeds.", 
        Hint = "Found in the storm's strongest currents.", 
        FavouriteBait = "Fish Head", 
        FavouriteTime = "None", 
        Price = 900, 
        XP = 450, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A Typhoon Tuna!", 
            "The storm's fury incarnate!", 
            "This one's massive!"
        }, 
        SparkleColor = Color3.fromRGB(0, 0, 0), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Atlantean Storm"
    }, 
    ["Cyclone Mako"] = {
        WeightPool = {
            400, 
            800
        }, 
        Chance = 6, 
        Rarity = "Rare", 
        Resilience = 35, 
        Description = "An evolved species of mako shark with specialized fins that can withstand incredible water pressure. These sharks are known to create powerful water currents with their rapid movements.", 
        Hint = "Found in the deepest parts of the Atlantean Storm.", 
        FavouriteBait = "Fish Head", 
        FavouriteTime = "None", 
        Price = 1200, 
        XP = 600, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "Windy"
        }, 
        Quips = {
            "A Cyclone Mako!", 
            "The storm shark appears!", 
            "What raw power!"
        }, 
        SparkleColor = Color3.fromRGB(0, 0, 0), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Atlantean Storm"
    }, 
    ["Maelstorm Shark"] = {
        WeightPool = {
            2500, 
            5000
        }, 
        Chance = 0.5, 
        Rarity = "Legendary", 
        Resilience = 25, 
        ProgressEfficiency = 0.4, 
        Description = "A legendary shark species that seems to control the very currents of the Atlantean Storm. Their presence is said to intensify the surrounding waters, creating massive whirlpools wherever they swim.", 
        Hint = "???", 
        FavouriteBait = "Truffle Worm", 
        FavouriteTime = "None", 
        Price = 3000, 
        XP = 1500, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "THE MAELSTORM SHARK!", 
            "MASTER OF THE STORM!", 
            "I CAN'T BELIEVE IT!", 
            "MY ARMS!!"
        }, 
        SparkleColor = Color3.fromRGB(0, 0, 0), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Atlantean Storm"
    }, 
    ["Void Angler"] = {
        WeightPool = {
            7000, 
            12000
        }, 
        Chance = 0.01, 
        Rarity = "Mythical", 
        Resilience = 15, 
        ProgressEfficiency = 0.25, 
        Description = "An ancient deep-sea predator that dwells in the darkest depths of the Atlantean Storm. Their bioluminescent lures create hypnotic patterns that mirror the swirling waters above, attracting both prey and the unwary.", 
        Hint = "???", 
        FavouriteBait = "Truffle Worm", 
        FavouriteTime = "None", 
        Price = 4500, 
        XP = 2000, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "THE VOID ANGLER EXISTS!", 
            "I CAN'T BELIEVE MY EYES!", 
            "THOSE PATTERNS... HYPNOTIC!", 
            "IS THIS EVEN REAL?!"
        }, 
        SparkleColor = Color3.fromRGB(0, 0, 0), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Atlantean Storm"
    }, 
    ["Reef Minnow"] = {
        WeightPool = {
            1, 
            6
        }, 
        Chance = 65, 
        Rarity = "Common", 
        Resilience = 90, 
        Description = "A quick, small reef fish that swims in tight groups near coral formations. They use their silvery scales and small size to hide from predators, darting between coral branches when threatened.", 
        Hint = "Found swimming among shallow coral reefs.", 
        FavouriteBait = "Seaweed", 
        FavouriteTime = "None", 
        Price = 85, 
        XP = 65, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Small but dangerous.."
        }, 
        SparkleColor = Color3.fromRGB(161, 255, 247), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Grand Reef"
    }, 
    ["Coral Chromis"] = {
        WeightPool = {
            5, 
            20
        }, 
        Chance = 55, 
        Rarity = "Common", 
        Resilience = 85, 
        Description = "A small reef fish with distinctive bright scales. Coral Chromis clean and protect their home corals from parasites, making them vital to reef health.", 
        Hint = "Found in schools near healthy coral formations.", 
        FavouriteBait = "Flakes", 
        FavouriteTime = "None", 
        Price = 120, 
        XP = 95, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Could've been on Roslit.. but hey!"
        }, 
        SparkleColor = Color3.fromRGB(161, 255, 247), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Grand Reef"
    }, 
    ["Reef Goby"] = {
        WeightPool = {
            10, 
            30
        }, 
        Chance = 35, 
        Rarity = "Uncommon", 
        Resilience = 80, 
        Description = "A bottom-dwelling fish that makes its home in abandoned coral holes. They form partnerships with larger reef fish, cleaning parasites off their scales in exchange for protection.", 
        Hint = "Look for them in coral crevices.", 
        FavouriteBait = "Worm", 
        FavouriteTime = "None", 
        Price = 200, 
        XP = 150, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "So colorful!"
        }, 
        SparkleColor = Color3.fromRGB(161, 255, 247), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Grand Reef"
    }, 
    ["Coral Guard"] = {
        WeightPool = {
            40, 
            90
        }, 
        Chance = 20, 
        Rarity = "Uncommon", 
        Resilience = 70, 
        Description = "A territorial reef fish with sharp spines along its body. Named for their protective behavior, they chase away anything that threatens their chosen coral home.", 
        Hint = "Found guarding specific coral territories.", 
        FavouriteBait = "Shrimp", 
        FavouriteTime = "None", 
        Price = 250, 
        XP = 180, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Ya think he's strong?"
        }, 
        SparkleColor = Color3.fromRGB(161, 255, 247), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Grand Reef"
    }, 
    ["Crystal Wrasse"] = {
        WeightPool = {
            40, 
            90
        }, 
        Chance = 12, 
        Rarity = "Unusual", 
        Resilience = 65, 
        Description = "A unique reef predator with transparent fins and a needle-like snout. They hunt by picking off small prey trapped in coral branches, using their pointed mouth to reach deep into crevices.", 
        Hint = "???", 
        FavouriteBait = "Insect", 
        FavouriteTime = "None", 
        Price = 450, 
        XP = 300, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "I love crystals.."
        }, 
        SparkleColor = Color3.fromRGB(161, 255, 247), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Grand Reef"
    }, 
    ["Reef Parrotfish"] = {
        WeightPool = {
            70, 
            200
        }, 
        Chance = 4, 
        Rarity = "Rare", 
        Resilience = 35, 
        Description = "A large reef fish with a beak-like mouth used to scrape algae from coral. Their powerful jaws can grind coral into fine sand, helping create the beaches around reef areas.", 
        Hint = "???", 
        FavouriteBait = "Coral", 
        FavouriteTime = "None", 
        Price = 900, 
        XP = 600, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "At least this one doesn't yap like a parrot.."
        }, 
        SparkleColor = Color3.fromRGB(161, 255, 247), 
        HoldAnimation = l_fish_0:WaitForChild("heavybasic"), 
        From = "Grand Reef"
    }, 
    ["Coral Emperor"] = {
        WeightPool = {
            150, 
            300
        }, 
        Chance = 0.04, 
        Rarity = "Legendary", 
        Resilience = 20, 
        ProgressEfficiency = 0.4, 
        Description = "A massive reef predator that controls large territories. Their powerful fins and sharp teeth make them feared hunters, though they rarely stray far from their chosen coral domain.", 
        Hint = "???", 
        FavouriteBait = "Fish Head", 
        FavouriteTime = "None", 
        Price = 4000, 
        XP = 1800, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "WOAH!! A CORAL EMPEROR!", 
            "THE EMPEROR OF THE REEF!!", 
            "I CAUGHT THE CORAL EMPEROR!!", 
            "MY ARMS!!"
        }, 
        SparkleColor = Color3.fromRGB(161, 255, 247), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Grand Reef"
    }, 
    ["Grand Reef Guardian"] = {
        WeightPool = {
            400, 
            800
        }, 
        Chance = 0.008, 
        Rarity = "Mythical", 
        Resilience = 25, 
        ProgressEfficiency = 0.25, 
        Description = "An ancient fish species that dwells in the deepest parts of the reef. Their massive size and mysterious bioluminescent patterns have led many to believe they protect the reef's most sacred spaces.", 
        Hint = "???", 
        FavouriteBait = "Truffle Worm", 
        FavouriteTime = "None", 
        Price = 7000, 
        XP = 3500, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "THE GUARDIAN OF THE REEF!!", 
            "I CAN'T BELIEVE IT!! THE GRAND REEF GUARDIAN!", 
            "ALKSJDAHASBDJH", 
            "MY SPINE!!", 
            "IS THIS EVEN REAL?!"
        }, 
        SparkleColor = Color3.fromRGB(161, 255, 247), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Grand Reef"
    }, 
    ["Glacier Glowfish"] = {
        WeightPool = {
            80, 
            150
        }, 
        Chance = 0.01, 
        Rarity = "Limited", 
        Resilience = 65, 
        Description = "Glows brightly, guiding travelers through dark, icy waters.", 
        Hint = "???", 
        FavouriteBait = "Shrimp", 
        FavouriteTime = "None", 
        Price = 1800, 
        XP = 450, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "THATS A GLACIER GLOWFISH!"
        }, 
        SparkleColor = Color3.fromRGB(161, 255, 247), 
        HoldAnimation = l_fish_0:WaitForChild("bigbasic"), 
        FromLimited = "Winter's Edge", 
        IsLimitedBestiary = true, 
        From = "Winter's Edge"
    }, 
    ["Frozen Fangfish"] = {
        WeightPool = {
            50, 
            80
        }, 
        Chance = 1, 
        Rarity = "Limited", 
        Resilience = 45, 
        Description = "Icy predator with razor fins, feared in frozen depths.", 
        Hint = "???", 
        FavouriteBait = "Shrimp", 
        FavouriteTime = "None", 
        Price = 650, 
        XP = 250, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "FROZEN FANGFISH!"
        }, 
        SparkleColor = Color3.fromRGB(33, 55, 255), 
        HoldAnimation = l_fish_0:WaitForChild("bigbasic"), 
        FromLimited = "Winter's Edge", 
        IsLimitedBestiary = true, 
        From = "Winter's Edge"
    }, 
    ["Hollow Flake Catfish"] = {
        WeightPool = {
            20, 
            50
        }, 
        Chance = 7, 
        Rarity = "Limited", 
        Resilience = 30, 
        Description = "Ghostly fish with translucent scales, haunting frozen streams.", 
        Hint = "???", 
        FavouriteBait = "Squid", 
        FavouriteTime = "None", 
        Price = 450, 
        XP = 135, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Found a Hollow Flake Catfish!"
        }, 
        SparkleColor = Color3.fromRGB(29, 255, 247), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        FromLimited = "Winter's Edge", 
        IsLimitedBestiary = true, 
        From = "Winter's Edge"
    }, 
    ["Crystal Carp"] = {
        WeightPool = {
            10, 
            18
        }, 
        Chance = 15, 
        Rarity = "Limited", 
        Resilience = 25, 
        Description = "This little guy was found frozen in ice crystals!", 
        Hint = "???", 
        FavouriteBait = "Maggot", 
        FavouriteTime = "None", 
        Price = 375, 
        XP = 90, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Found a Crystal Carp!"
        }, 
        SparkleColor = Color3.fromRGB(59, 255, 24), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        FromLimited = "Winter's Edge", 
        IsLimitedBestiary = true, 
        From = "Winter's Edge"
    }, 
    ["Hollyscale Trout"] = {
        WeightPool = {
            5, 
            10
        }, 
        Chance = 30, 
        Rarity = "Limited", 
        Resilience = 25, 
        Description = "Colorful and proud, even if he's not that rare.", 
        Hint = "???", 
        FavouriteBait = "Insect", 
        FavouriteTime = "None", 
        Price = 150, 
        XP = 50, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Found a Hollyscale Trout!"
        }, 
        SparkleColor = Color3.fromRGB(25, 255, 21), 
        HoldAnimation = l_fish_0:WaitForChild("small"), 
        FromLimited = "Winter's Edge", 
        IsLimitedBestiary = true, 
        From = "Winter's Edge"
    }, 
    ["Red Energy Crystal"] = {
        Requiriments = {
            GatesOpened = {
                "RedShardDoor"
            }
        }, 
        WeightPool = {
            25, 
            50
        }, 
        Chance = 0.001, 
        Rarity = "Mythical", 
        Resilience = 100, 
        Description = "A red-hued crystal, told to possess mystical powers.", 
        Hint = "???", 
        FavouriteBait = "None", 
        FavouriteTime = nil, 
        BuyMult = 50000, 
        Price = 5, 
        XP = 250, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Found a Red Energy Crystal!"
        }, 
        SparkleColor = Color3.fromRGB(33, 55, 255), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "None"
    }, 
    ["Green Energy Crystal"] = {
        WeightPool = {
            25, 
            50
        }, 
        Chance = 0.001, 
        Rarity = "Mythical", 
        Resilience = 100, 
        Description = "A green-hued crystal, told to possess mystical powers.", 
        Hint = "???", 
        FavouriteBait = "None", 
        FavouriteTime = nil, 
        Price = 0, 
        XP = 250, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Found a Green Energy Crystal!"
        }, 
        SparkleColor = Color3.fromRGB(33, 55, 255), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "None"
    }, 
    ["Yellow Energy Crystal"] = {
        WeightPool = {
            25, 
            50
        }, 
        Chance = 0.001, 
        Rarity = "Mythical", 
        Resilience = 100, 
        Description = "A yellow-hued crystal, told to possess mystical powers.", 
        Hint = "???", 
        FavouriteBait = "None", 
        FavouriteTime = nil, 
        Price = 0, 
        XP = 250, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Found a Yellow Energy Crystal!"
        }, 
        SparkleColor = Color3.fromRGB(33, 55, 255), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "None"
    }, 
    ["Blue Energy Crystal"] = {
        WeightPool = {
            25, 
            50
        }, 
        Chance = 0.001, 
        Rarity = "Mythical", 
        Resilience = 100, 
        Description = "A blue-hued crystal, told to possess mystical powers.", 
        Hint = "???", 
        FavouriteBait = "None", 
        FavouriteTime = nil, 
        Price = 0, 
        XP = 250, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Found a Blue Energy Crystal!"
        }, 
        SparkleColor = Color3.fromRGB(33, 55, 255), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "None"
    }, 
    ["Glass Diamond"] = {
        WeightPool = {
            25, 
            50
        }, 
        Chance = 0.001, 
        Rarity = "Mythical", 
        Resilience = 100, 
        Description = "An incredibly unique translucent diamond from within the Earth's most frigid caves.", 
        Hint = "???", 
        FavouriteBait = "None", 
        FavouriteTime = nil, 
        Price = 1500, 
        XP = 250, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Glass Diamond!", 
            "Compressed carbon!", 
            "Two more for a pickaxe!"
        }, 
        SparkleColor = Color3.fromRGB(33, 55, 255), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Overgrowth Caves"
    }, 
    ["Ice Anchovy"] = {
        WeightPool = {
            2, 
            6
        }, 
        Chance = 65, 
        Rarity = "Uncommon", 
        Resilience = 75, 
        Description = "A small, silvery fish with crystalline scales that shimmer like fresh frost.", 
        Hint = "Schools in the shallow waters of Overgrowth Caves.", 
        FavouriteBait = "Worm", 
        FavouriteTime = "Day", 
        Price = 140, 
        XP = 80, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "An Ice Anchovy!", 
            "Small and frosty!", 
            "Like a frozen jewel!"
        }, 
        SparkleColor = Color3.fromRGB(151, 227, 255), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Overgrowth Caves"
    }, 
    ["Icy Salmon"] = {
        WeightPool = {
            40, 
            100
        }, 
        Chance = 60, 
        Rarity = "Uncommon", 
        Resilience = 70, 
        Description = "A sleek salmon with scales that appear to be coated in a permanent layer of frost.", 
        Hint = "Found in the flowing waters of the cave's streams.", 
        FavouriteBait = "Worm", 
        FavouriteTime = "Day", 
        Price = 180, 
        XP = 95, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "An Icy Salmon!", 
            "Frozen upstream swimmer!", 
            "So graceful!"
        }, 
        SparkleColor = Color3.fromRGB(139, 234, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Overgrowth Caves"
    }, 
    ["Icy Carp"] = {
        WeightPool = {
            30, 
            70
        }, 
        Chance = 45, 
        Rarity = "Unusual", 
        Resilience = 65, 
        Description = "A hardy carp whose scales have adapted to form intricate ice-crystal patterns.", 
        Hint = "Prefers the deeper pools within the cave.", 
        FavouriteBait = "Bagel", 
        FavouriteTime = "None", 
        Price = 250, 
        XP = 120, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "An Icy Carp!", 
            "Look at those patterns!", 
            "Quite the catch!"
        }, 
        SparkleColor = Color3.fromRGB(156, 239, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Overgrowth Caves"
    }, 
    ["Frigid Crab"] = {
        WeightPool = {
            15, 
            35
        }, 
        Chance = 40, 
        Rarity = "Unusual", 
        Resilience = 60, 
        Description = "A uniquely adapted crab with a shell that resembles cracked ice.", 
        Hint = "Scuttles along the icy cave floor.", 
        FavouriteBait = "Fish Head", 
        FavouriteTime = "None", 
        Price = 300, 
        XP = 140, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Frigid Crab!", 
            "Watch those claws!", 
            "Ice cold pinchers!"
        }, 
        SparkleColor = Color3.fromRGB(137, 220, 255), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Overgrowth Caves"
    }, 
    ["Icy Tuna"] = {
        WeightPool = {
            100, 
            250
        }, 
        Chance = 25, 
        Rarity = "Rare", 
        Resilience = 45, 
        Description = "A powerful tuna with fins edged in crystalline ice and a frost-covered body.", 
        Hint = "Patrols the cave's larger water chambers.", 
        FavouriteBait = "Fish Head", 
        FavouriteTime = "None", 
        Price = 600, 
        XP = 250, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "An Icy Tuna!", 
            "Such power!", 
            "What a catch!"
        }, 
        SparkleColor = Color3.fromRGB(149, 241, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Overgrowth Caves"
    }, 
    ["Icy Goldfish"] = {
        WeightPool = {
            200, 
            400
        }, 
        Chance = 10, 
        Rarity = "Rare", 
        Resilience = 40, 
        Description = "A mystical goldfish with scales that sparkle like ice crystals in sunlight.", 
        Hint = "Found in the cave's illuminated pools.", 
        FavouriteBait = "Flakes", 
        FavouriteTime = "Day", 
        Price = 800, 
        XP = 300, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "An Icy Goldfish!", 
            "So beautiful!", 
            "Like frozen gold!"
        }, 
        SparkleColor = Color3.fromRGB(135, 239, 255), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Overgrowth Caves"
    }, 
    ["Frigid Antlers"] = {
        WeightPool = {
            500, 
            1000
        }, 
        Chance = 1, 
        Rarity = "Legendary", 
        Resilience = 25, 
        ProgressEfficiency = 0.8, 
        Description = "Ancient reindeer antlers preserved perfectly in magical ice, still radiating a mysterious energy.", 
        Hint = "Hidden in the deepest, coldest parts of the cave.", 
        FavouriteBait = "None", 
        FavouriteTime = "None", 
        Price = 1200, 
        XP = 800, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "FROZEN ANTLERS!", 
            "AN ANCIENT RELIC!", 
            "INCREDIBLE!"
        }, 
        SparkleColor = Color3.fromRGB(255, 237, 137), 
        HoldAnimation = l_fish_0:WaitForChild("crate"), 
        From = "Overgrowth Caves"
    }, 
    ["Frozen Walnut"] = {
        WeightPool = {
            500, 
            1000
        }, 
        Chance = 0.01, 
        Rarity = "Mythical", 
        Resilience = 15, 
        ProgressEfficiency = 0.6, 
        Description = "A prehistoric walnut encased in magical ice, perfectly preserved from the age of giants.", 
        Hint = "Only appears in the most ancient sections of the cave.", 
        FavouriteBait = "None", 
        FavouriteTime = "None", 
        Price = 2500, 
        XP = 700, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A FROZEN WALNUT!", 
            "FROM THE AGE OF GIANTS!", 
            "PREHISTORIC TREASURE!"
        }, 
        SparkleColor = Color3.fromRGB(255, 237, 137), 
        HoldAnimation = l_fish_0:WaitForChild("small"), 
        From = "Overgrowth Caves"
    }, 
    ["Ice Eel"] = {
        WeightPool = {
            8, 
            20
        }, 
        Chance = 65, 
        Rarity = "Uncommon", 
        Resilience = 75, 
        Description = "A serpentine creature with translucent skin that seems to blend with the surrounding ice.", 
        Hint = "Slithers through the narrow ice tunnels of Frigid Cavern.", 
        FavouriteBait = "Worm", 
        FavouriteTime = "Night", 
        Price = 155, 
        XP = 95, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "An Ice Eel!", 
            "So slippery!", 
            "Like living ice!"
        }, 
        SparkleColor = Color3.fromRGB(116, 211, 255), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Frigid Cavern"
    }, 
    ["Frigid Shrimp"] = {
        WeightPool = {
            3, 
            8
        }, 
        Chance = 60, 
        Rarity = "Uncommon", 
        Resilience = 70, 
        Description = "A tiny crustacean whose shell appears to be made of delicate frost crystals.", 
        Hint = "Clusters in the cavern's cold water pools.", 
        FavouriteBait = "Flakes", 
        FavouriteTime = "Night", 
        Price = 175, 
        XP = 90, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Frigid Shrimp!", 
            "Tiny ice dancer!", 
            "So delicate!"
        }, 
        SparkleColor = Color3.fromRGB(151, 241, 255), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Frigid Cavern"
    }, 
    ["Ice Jellyfish"] = {
        WeightPool = {
            20, 
            45
        }, 
        Chance = 45, 
        Rarity = "Unusual", 
        Resilience = 60, 
        Description = "A translucent jellyfish with tentacles that sparkle like icicles in the dim light.", 
        Hint = "Drifts through the cavern's larger chambers.", 
        FavouriteBait = "None", 
        FavouriteTime = "None", 
        Price = 280, 
        XP = 130, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "An Ice Jellyfish!", 
            "Like floating frost!", 
            "Beautiful!"
        }, 
        SparkleColor = Color3.fromRGB(137, 239, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Frigid Cavern"
    }, 
    ["Ice Octopus"] = {
        WeightPool = {
            30, 
            80
        }, 
        Chance = 40, 
        Rarity = "Unusual", 
        Resilience = 55, 
        Description = "An intelligent cephalopod with skin that mimics the patterns of frozen cave walls.", 
        Hint = "Hides in the icy crevices of the cavern.", 
        FavouriteBait = "Fish Head", 
        FavouriteTime = "Day", 
        Price = 350, 
        XP = 150, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "An Ice Octopus!", 
            "Eight frozen arms!", 
            "Clever creature!"
        }, 
        SparkleColor = Color3.fromRGB(102, 235, 255), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Frigid Cavern"
    }, 
    ["Frigid Taco"] = {
        WeightPool = {
            100, 
            250
        }, 
        Chance = 25, 
        Rarity = "Rare", 
        Resilience = 45, 
        Description = "A perfectly preserved taco frozen in magical ice, somehow maintaining its original form.", 
        Hint = "Lost in the depths of the cavern ages ago.", 
        FavouriteBait = "None", 
        FavouriteTime = "None", 
        Price = 600, 
        XP = 250, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Frozen Taco!", 
            "Still looks tasty!", 
            "Ancient takeout!"
        }, 
        SparkleColor = Color3.fromRGB(255, 237, 137), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Frigid Cavern"
    }, 
    Snowfish = {
        WeightPool = {
            200, 
            450
        }, 
        Chance = 20, 
        Rarity = "Rare", 
        Resilience = 40, 
        Description = "A mysterious fish whose scales form intricate snowflake patterns that never melt.", 
        Hint = "Swims in the most frigid waters of the cavern.", 
        FavouriteBait = "Fish Head", 
        FavouriteTime = "None", 
        Price = 800, 
        XP = 300, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Snowfish!", 
            "Like swimming snow!", 
            "Beautiful patterns!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Frigid Cavern"
    }, 
    ["Polar Alligator"] = {
        WeightPool = {
            800, 
            1500
        }, 
        Chance = 3, 
        Rarity = "Legendary", 
        Resilience = 20, 
        ProgressEfficiency = 0.75, 
        Description = "A fearsome predator adapted to icy waters, with frost-covered scales and crystal-like teeth.", 
        Hint = "Lurks in the largest chambers of the frozen cavern.", 
        FavouriteBait = "Fish Head", 
        FavouriteTime = "Night", 
        Price = 3000, 
        XP = 1000, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A POLAR ALLIGATOR!", 
            "ANCIENT PREDATOR!", 
            "INCREDIBLE!"
        }, 
        SparkleColor = Color3.fromRGB(199, 250, 255), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Frigid Cavern"
    }, 
    ["Frigid Mammoth Tusk"] = {
        WeightPool = {
            2500, 
            5000
        }, 
        Chance = 0.05, 
        Rarity = "Mythical", 
        Resilience = 15, 
        ProgressEfficiency = 0.6, 
        Description = "A massive mammoth tusk perfectly preserved in ancient ice, still emanating prehistoric power.", 
        Hint = "Hidden in the oldest, deepest part of the frozen cavern.", 
        FavouriteBait = "None", 
        FavouriteTime = "None", 
        Price = 3000, 
        XP = 1200, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A MAMMOTH TUSK!", 
            "ICE AGE RELIC!", 
            "PREHISTORIC TREASURE!"
        }, 
        SparkleColor = Color3.fromRGB(255, 237, 137), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Frigid Cavern"
    }, 
    ["Frost Minnow"] = {
        WeightPool = {
            8, 
            16
        }, 
        Chance = 65, 
        Rarity = "Uncommon", 
        Resilience = 70, 
        Description = "A tiny, silver fish with faint ice-like patterns on its scales.", 
        Hint = "Found in the shallow waters of Cryogenic Canal.", 
        FavouriteBait = "Worm", 
        FavouriteTime = "Day", 
        Price = 150, 
        XP = 85, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A tiny frozen friend!", 
            "So small!", 
            "A Frost Minnow!"
        }, 
        SparkleColor = Color3.fromRGB(255, 237, 137), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Cryogenic Canal"
    }, 
    ["Snowflake Smelt"] = {
        WeightPool = {
            10, 
            20
        }, 
        Chance = 60, 
        Rarity = "Uncommon", 
        Resilience = 65, 
        Description = "Slender fish with shimmering, iridescent scales resembling snowflakes/falling snow.", 
        Hint = "Active during snowfall in the canal.", 
        FavouriteBait = "Flakes", 
        FavouriteTime = "Day", 
        Price = 180, 
        XP = 95, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "Like catching a snowflake!", 
            "A Snowflake Smelt!", 
            "So pretty!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Cryogenic Canal"
    }, 
    ["Iced Perch"] = {
        WeightPool = {
            20, 
            45
        }, 
        Chance = 50, 
        Rarity = "Unusual", 
        Resilience = 60, 
        Description = "A medium-sized fish with a frosty blue sheen and faint horizontal stripes.", 
        Hint = "Lurks near ice formations in the canal.", 
        FavouriteBait = "Insect", 
        FavouriteTime = "None", 
        Price = 250, 
        XP = 120, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "An Iced Perch!", 
            "Cool catch!", 
            "Quite the perch!"
        }, 
        SparkleColor = Color3.fromRGB(156, 197, 255), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Cryogenic Canal"
    }, 
    ["Snowback Char"] = {
        WeightPool = {
            35, 
            75
        }, 
        Chance = 45, 
        Rarity = "Unusual", 
        Resilience = 55, 
        Description = "A majestic cold-water fish with crystalline scales that shimmer like fresh snow.", 
        Hint = "Found in the deeper sections of the canal.", 
        FavouriteBait = "Insect", 
        FavouriteTime = "Day", 
        Price = 320, 
        XP = 150, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Snowback Char!", 
            "What a beautiful char!", 
            "Arctic beauty!"
        }, 
        SparkleColor = Color3.fromRGB(200, 233, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Cryogenic Canal"
    }, 
    ["Chillfin Herring"] = {
        WeightPool = {
            30, 
            70
        }, 
        Chance = 35, 
        Rarity = "Rare", 
        Resilience = 45, 
        Description = "A sleek fish with a reflective, icy-gray body and frost-tipped fins.", 
        Hint = "Schools in the colder currents of the canal.", 
        FavouriteBait = "Seaweed", 
        FavouriteTime = "Day", 
        Price = 450, 
        XP = 200, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Chillfin Herring!", 
            "So shiny!", 
            "Frosty little one!"
        }, 
        SparkleColor = Color3.fromRGB(189, 218, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Cryogenic Canal"
    }, 
    ["Frozen Pike"] = {
        WeightPool = {
            100, 
            250
        }, 
        Chance = 25, 
        Rarity = "Rare", 
        Resilience = 40, 
        Description = "A long and sleek predator fish, its body covered in frost-like patterns and icy fins.", 
        Hint = "Hunts in the deepest parts of the canal.", 
        FavouriteBait = "Fish Head", 
        FavouriteTime = "None", 
        Price = 650, 
        XP = 280, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Frozen Pike!", 
            "What a predator!", 
            "Ice cold hunter!"
        }, 
        SparkleColor = Color3.fromRGB(145, 192, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Cryogenic Canal"
    }, 
    ["Icebreaker Haddock"] = {
        WeightPool = {
            200, 
            400
        }, 
        Chance = 15, 
        Rarity = "Rare", 
        Resilience = 35, 
        Description = "A robust fish with frosted silver scales and dark blue streaks.", 
        Hint = "Breaks through thin ice sheets near the canal surface.", 
        FavouriteBait = "Fish Head", 
        FavouriteTime = "Day", 
        Price = 800, 
        XP = 350, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "An Icebreaker Haddock!", 
            "Breaking through!", 
            "Strong swimmer!"
        }, 
        SparkleColor = Color3.fromRGB(176, 211, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Cryogenic Canal"
    }, 
    ["Frostjaw Cod"] = {
        WeightPool = {
            500, 
            1000
        }, 
        Chance = 5, 
        Rarity = "Legendary", 
        Resilience = 25, 
        ProgressEfficiency = 0.8, 
        Description = "A large, muscular fish with icy blue scales and jagged, frozen-like teeth.", 
        Hint = "Found in the darkest depths of the canal.", 
        FavouriteBait = "Fish Head", 
        FavouriteTime = "Night", 
        Price = 2000, 
        XP = 800, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Frostjaw Cod!", 
            "Watch those teeth!", 
            "Powerful catch!"
        }, 
        SparkleColor = Color3.fromRGB(132, 187, 255), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Cryogenic Canal"
    }, 
    ["Aurora Trout"] = {
        WeightPool = {
            2000, 
            4000
        }, 
        Chance = 0.5, 
        Rarity = "Mythical", 
        Resilience = 15, 
        ProgressEfficiency = 0.6, 
        Description = "A radiant trout with iridescent scales that glow faintly, resembling the northern lights.", 
        Hint = "Only appears when the aurora shimmers above the canal.", 
        FavouriteBait = "Truffle Worm", 
        FavouriteTime = "Night", 
        Price = 6000, 
        XP = 2000, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "AN AURORA TROUT!", 
            "LIKE THE NORTHERN LIGHTS!", 
            "MAGICAL!"
        }, 
        SparkleColor = Color3.fromRGB(163, 255, 201), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Cryogenic Canal"
    }, 
    ["Glacial Sturgeon"] = {
        WeightPool = {
            2500, 
            5000
        }, 
        Chance = 0.01, 
        Rarity = "Mythical", 
        Resilience = 15, 
        ProgressEfficiency = 0.6, 
        Description = "A massive, ancient fish with icy armor-like scales and a frosted dorsal fin, marking it as one of the oldest species in these waters.", 
        Hint = "Dwells in the oldest, deepest parts of the frozen waters.", 
        FavouriteBait = "Truffle Worm", 
        FavouriteTime = "Night", 
        Price = 7000, 
        XP = 2200, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A GLACIAL STURGEON!", 
            "ANCIENT ICE DWELLER!", 
            "WHAT A MONSTER!"
        }, 
        SparkleColor = Color3.fromRGB(147, 198, 255), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Cryogenic Canal"
    }, 
    ["Snowgill Dace"] = {
        WeightPool = {
            10, 
            25
        }, 
        Chance = 70, 
        Rarity = "Uncommon", 
        Resilience = 75, 
        Description = "A small, silvery fish with frosty-white gills and a faint blue stripe along its side.", 
        Hint = "Common in the grotto's shallow waters.", 
        FavouriteBait = "Worm", 
        FavouriteTime = "Day", 
        Price = 160, 
        XP = 90, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Snowgill Dace!", 
            "Tiny ice swimmer!", 
            "Look at those gills!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Glacial Grotto"
    }, 
    ["Frostling Goby"] = {
        WeightPool = {
            12, 
            28
        }, 
        Chance = 65, 
        Rarity = "Uncommon", 
        Resilience = 70, 
        Description = "A tiny, bottom-dwelling fish with a speckled body resembling frost-dusted pebbles.", 
        Hint = "Found among the icy rocks at the grotto floor.", 
        FavouriteBait = "Insect", 
        FavouriteTime = "Day", 
        Price = 180, 
        XP = 95, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Frostling Goby!", 
            "Like an icy pebble!", 
            "So well camouflaged!"
        }, 
        SparkleColor = Color3.fromRGB(219, 234, 255), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Glacial Grotto"
    }, 
    ["Chillback Whitefish"] = {
        WeightPool = {
            25, 
            55
        }, 
        Chance = 55, 
        Rarity = "Unusual", 
        Resilience = 65, 
        Description = "A plump fish with a glimmering white body and pale silver fins.", 
        Hint = "Swims in the middle depths of the grotto.", 
        FavouriteBait = "Worm", 
        FavouriteTime = "None", 
        Price = 280, 
        XP = 130, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Chillback Whitefish!", 
            "So plump!", 
            "What a beauty!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Glacial Grotto"
    }, 
    ["Icy Walleye"] = {
        WeightPool = {
            40, 
            90
        }, 
        Chance = 45, 
        Rarity = "Unusual", 
        Resilience = 60, 
        Description = "A medium-sized predator fish with glowing, frosted eyes and a shimmering gray body.", 
        Hint = "Hunts during twilight in the grotto's waters.", 
        FavouriteBait = "Minnow", 
        FavouriteTime = "Night", 
        Price = 350, 
        XP = 160, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "An Icy Walleye!", 
            "Those eyes!", 
            "What a predator!"
        }, 
        SparkleColor = Color3.fromRGB(176, 211, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Glacial Grotto"
    }, 
    ["Shiverfin Haddock"] = {
        WeightPool = {
            50, 
            120
        }, 
        Chance = 35, 
        Rarity = "Rare", 
        Resilience = 50, 
        Description = "A fish with frosty blue scales and faint frost patterns across its fins.", 
        Hint = "Prefers the deeper grotto waters.", 
        FavouriteBait = "Fish Head", 
        FavouriteTime = "Day", 
        Price = 500, 
        XP = 220, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Shiverfin Haddock!", 
            "Look at those patterns!", 
            "Frosty fins!"
        }, 
        SparkleColor = Color3.fromRGB(115, 211, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Glacial Grotto"
    }, 
    ["Frostbite Flounder"] = {
        WeightPool = {
            150, 
            300
        }, 
        Chance = 25, 
        Rarity = "Rare", 
        Resilience = 45, 
        Description = "A flat fish with an ice-like sheen and speckled, snowflake-shaped patterns across its body.", 
        Hint = "Camouflaged against the icy grotto floor.", 
        FavouriteBait = "Squid", 
        FavouriteTime = "None", 
        Price = 750, 
        XP = 300, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Frostbite Flounder!", 
            "Beautiful patterns!", 
            "Ice cold catch!"
        }, 
        SparkleColor = Color3.fromRGB(128, 249, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Glacial Grotto"
    }, 
    ["Glacier Swordfish"] = {
        WeightPool = {
            200, 
            450
        }, 
        Chance = 20, 
        Rarity = "Rare", 
        Resilience = 40, 
        Description = "A sleek, powerful fish with a frosted, icicle-shaped bill. Its body glistens with icy-blue tones.", 
        Hint = "Patrols the deeper waters of the grotto.", 
        FavouriteBait = "Fish Head", 
        FavouriteTime = "None", 
        Price = 1000, 
        XP = 400, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Glacier Swordfish!", 
            "Look at that bill!", 
            "What power!"
        }, 
        SparkleColor = Color3.fromRGB(128, 249, 255), 
        HoldAnimation = l_fish_0:WaitForChild("bigbasic"), 
        From = "Glacial Grotto"
    }, 
    ["Icefang Barracuda"] = {
        WeightPool = {
            200, 
            450
        }, 
        Chance = 30, 
        Rarity = "Rare", 
        Resilience = 40, 
        Description = "A long, silver-gray predator with sharp, ice-coated teeth and glowing blue eyes.", 
        Hint = "Patrols the deeper waters hunting for prey.", 
        FavouriteBait = "Fish Head", 
        FavouriteTime = "None", 
        Price = 650, 
        XP = 300, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "An Icefang Barracuda!", 
            "Those teeth!", 
            "What a predator!", 
            "Ice cold hunter!"
        }, 
        SparkleColor = Color3.fromRGB(176, 211, 255), 
        HoldAnimation = l_fish_0:WaitForChild("bigbasic"), 
        From = "Glacial Grotto"
    }, 
    ["Borealis Snapper"] = {
        WeightPool = {
            800, 
            1600
        }, 
        Chance = 1, 
        Rarity = "Legendary", 
        Resilience = 20, 
        ProgressEfficiency = 0.7, 
        Description = "A vibrant fish with glowing, aurora-like patterns across its scales and frosted fins.", 
        Hint = "Active in the Glacial Grotto during the northern lights.", 
        FavouriteBait = "Fish Head", 
        FavouriteTime = "Night", 
        Price = 3500, 
        XP = 1200, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A BOREALIS SNAPPER!", 
            "LIKE THE AURORA!", 
            "SUCH BEAUTY!"
        }, 
        SparkleColor = Color3.fromRGB(163, 255, 201), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Glacial Grotto"
    }, 
    ["Icebeard Shark"] = {
        WeightPool = {
            3000, 
            6000
        }, 
        Chance = 0.01, 
        Rarity = "Mythical", 
        Resilience = 10, 
        ProgressEfficiency = 0.5, 
        Description = "A massive, ancient shark with frost-covered skin and icicle-like protrusions.", 
        Hint = "Only appears in the deepest, darkest parts of the Glacial Grotto.", 
        FavouriteBait = "Truffle Worm", 
        FavouriteTime = "Night", 
        Price = 8000, 
        XP = 2500, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "AN ICEBEARD SHARK!", 
            "THE LEGEND EXISTS!", 
            "INCREDIBLE!", 
            "THE FROZEN TERROR!"
        }, 
        SparkleColor = Color3.fromRGB(147, 198, 255), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Glacial Grotto"
    }, 
    ["Meg's Spine"] = {
        WeightPool = {
            25, 
            50
        }, 
        Chance = 0.001, 
        Rarity = "Mythical", 
        Resilience = 100, 
        Description = "The Spine of the Apex Shark, Megalodon", 
        Hint = "Found in the Oceans of Ancient Isles...", 
        FavouriteBait = "None", 
        FavouriteTime = nil, 
        Price = 1500, 
        XP = 250, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Found a Meg Spine!"
        }, 
        SparkleColor = Color3.fromRGB(33, 55, 255), 
        HoldAnimation = l_fish_0:WaitForChild("heavybasic"), 
        From = "Ancient Isle"
    }, 
    ["Meg's Fang"] = {
        WeightPool = {
            10, 
            20
        }, 
        Chance = 0.001, 
        Rarity = "Mythical", 
        Resilience = 100, 
        Description = "The Fang of the Apex Shark, Megalodon", 
        Hint = "Found in the Oceans of Ancient Isles...", 
        FavouriteBait = "None", 
        FavouriteTime = nil, 
        Price = 1500, 
        XP = 250, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Found a Meg Fang!"
        }, 
        SparkleColor = Color3.fromRGB(33, 55, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Ancient Isle"
    }, 
    ["Moon Wood"] = {
        WeightPool = {
            1, 
            2
        }, 
        Chance = 10000, 
        Rarity = "Legendary", 
        Resilience = 100, 
        Description = "Legends say, Moon Wood is used in crafting one of the strongest Rods...", 
        Hint = "This resilient wood has endured the bitterest winters, its strength forged under the pale glow of the moon.", 
        FavouriteBait = "None", 
        FavouriteTime = nil, 
        Price = 450, 
        XP = 50, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Woah, Moon Wood!"
        }, 
        SparkleColor = Color3.fromRGB(151, 255, 212), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "None"
    }, 
    ["Inferno Wood"] = {
        WeightPool = {
            1, 
            2
        }, 
        Chance = 0.01, 
        Rarity = "Mythical", 
        Resilience = 100, 
        Description = "Holds the Power of Earth's Magma Core... Said to be used in crafting one of the strongest Rods...", 
        Hint = "???", 
        FavouriteBait = "None", 
        FavouriteTime = nil, 
        Price = 700, 
        XP = 90, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Woah, Inferno Wood!"
        }, 
        SparkleColor = Color3.fromRGB(255, 129, 25), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Roslit Volcano"
    }, 
    ["Ancient Wood"] = {
        WeightPool = {
            1, 
            2
        }, 
        Chance = 0.5, 
        Rarity = "Legendary", 
        Resilience = 100, 
        Description = "Reputed to harbor the essence of Ancient Wisdom, etched into the very grain of its timeless wood.", 
        Hint = "Legends whisper of Sunstone Island radiating an aura of ancient power", 
        FavouriteBait = "None", 
        FavouriteTime = nil, 
        Price = 450, 
        XP = 50, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Ancient Wood!"
        }, 
        SparkleColor = Color3.fromRGB(228, 255, 140), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Sunstone"
    }, 
    ["Void Wood"] = {
        WeightPool = {
            1, 
            2
        }, 
        Chance = 0.5, 
        Rarity = "Legendary", 
        Resilience = 100, 
        Description = "Believed to channel the mysteries of the Void, its wood pulses with an enigmatic, otherworldly energy.", 
        Hint = "Void Wood is said to be imbued with the altar's enigmatic power.", 
        FavouriteBait = "None", 
        FavouriteTime = nil, 
        Price = 350, 
        XP = 35, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "???"
        }, 
        SparkleColor = Color3.fromRGB(182, 65, 255), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Keepers Altar"
    }, 
    Moonstone = {
        WeightPool = {
            5, 
            28
        }, 
        Chance = 0, 
        Rarity = "Gemstone", 
        Resilience = 100, 
        Description = "A white gemstone with a pearlescent shine, typically associated with magic.", 
        Hint = "From meteors.", 
        FavouriteBait = "None", 
        FavouriteTime = nil, 
        Price = 1000, 
        XP = 200, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Moonstone!"
        }, 
        SparkleColor = Color3.fromRGB(189, 235, 255), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Ancient Isle", 
        FromMeteor = true, 
        Evaluation = "Moonstone's hard, ethereal glow\226\128\148caused by light scattering within its layers\226\128\148, often associated with the lunar energy from our lovely moon."
    }, 
    ["Lapis Lazuli"] = {
        WeightPool = {
            4, 
            14
        }, 
        Chance = 0, 
        Rarity = "Gemstone", 
        Resilience = 100, 
        Description = "A deep blue gemstone with a complex shape.", 
        Hint = "From meteors.", 
        FavouriteBait = "None", 
        FavouriteTime = nil, 
        Price = 700, 
        XP = 150, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Ouu, shiny!"
        }, 
        SparkleColor = Color3.fromRGB(33, 55, 255), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Ancient Isle", 
        FromMeteor = true, 
        Evaluation = "Lapis Lazuli has been ground into powder for use in luxurious paints and cosmetics for millennia, symbolizing royalty and spirituality."
    }, 
    Opal = {
        WeightPool = {
            9, 
            32
        }, 
        Chance = 100, 
        Rarity = "Gemstone", 
        Resilience = 100, 
        Description = "An iridescent gemstone with an array of different colors.", 
        Hint = "From meteors.", 
        FavouriteBait = "None", 
        FavouriteTime = nil, 
        Price = 500, 
        XP = 115, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Ouu, shiny!"
        }, 
        SparkleColor = Color3.fromRGB(229, 229, 229), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Ancient Isle", 
        FromMeteor = true, 
        Evaluation = "Opals form in arid, sunstone soils, where water evaporates and leaves behind dazzling mineral deposits."
    }, 
    Ruby = {
        WeightPool = {
            7, 
            20
        }, 
        Chance = 0, 
        Rarity = "Gemstone", 
        Resilience = 100, 
        Description = "A gemstone with a very intense red hue.", 
        Hint = "From meteors.", 
        FavouriteBait = "None", 
        FavouriteTime = nil, 
        Price = 200, 
        XP = 70, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Ouu, shiny!"
        }, 
        SparkleColor = Color3.fromRGB(255, 29, 29), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Ancient Isle", 
        FromMeteor = true, 
        Evaluation = "Forming in marble or basalt environments under intense heat and pressure of Roslits Volcano. "
    }, 
    Amethyst = {
        WeightPool = {
            8, 
            16
        }, 
        Chance = 100, 
        Rarity = "Gemstone", 
        Resilience = 100, 
        Description = "A purple variety of quartz with calming properties.", 
        Hint = "From meteors.", 
        FavouriteBait = "None", 
        FavouriteTime = nil, 
        Price = 150, 
        XP = 35, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Ouu, shiny!"
        }, 
        SparkleColor = Color3.fromRGB(157, 92, 255), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Ancient Isle", 
        FromMeteor = true, 
        Evaluation = "Amethyst forms in volcanic rock cavities called geodes, where mineral-rich water deposits quartz crystals over time. It was once as valuable as diamonds and associated with preventing overindulgence."
    }, 
    ["Deep Sea Fragment"] = {
        WeightPool = {
            1, 
            1
        }, 
        Chance = 0, 
        Rarity = "Fragment", 
        Resilience = 100, 
        Description = "A magical stone with an etching representing the violent waves of the sea.", 
        Hint = "Long ago, this ancient fragment had flown away into the mythical waterfall of Ancient Isles", 
        FavouriteBait = "None", 
        FavouriteTime = "None", 
        Price = 0, 
        XP = 0, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Woah a bone!"
        }, 
        SparkleColor = Color3.fromRGB(126, 124, 123), 
        HoldAnimation = l_fish_0:WaitForChild("small"), 
        From = "Ancient Isle"
    }, 
    ["Solar Fragment"] = {
        WeightPool = {
            1, 
            1
        }, 
        Chance = 0, 
        Rarity = "Fragment", 
        Resilience = 100, 
        Description = "A magical stone with an etching representing the scorching heat of the sun.", 
        Hint = "Only said to appear at the highest peaks during the Eclipse.", 
        FavouriteBait = "None", 
        FavouriteTime = "None", 
        Price = 50, 
        XP = 10, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Woah a bone!"
        }, 
        SparkleColor = Color3.fromRGB(126, 124, 123), 
        HoldAnimation = l_fish_0:WaitForChild("small"), 
        From = "Ancient Isle"
    }, 
    ["Earth Fragment"] = {
        WeightPool = {
            1, 
            1
        }, 
        Chance = 0, 
        Rarity = "Fragment", 
        Resilience = 100, 
        Description = "A magical stone with an etching representing the life on planet Earth.", 
        Hint = "Said to be lost in the caves of Ancient Isles...", 
        FavouriteBait = "None", 
        FavouriteTime = "None", 
        Price = 0, 
        XP = 0, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Woah a bone!"
        }, 
        SparkleColor = Color3.fromRGB(126, 124, 123), 
        HoldAnimation = l_fish_0:WaitForChild("small"), 
        From = "Ancient Isle"
    }, 
    ["Ancient Fragment"] = {
        WeightPool = {
            1, 
            1
        }, 
        Chance = 0.01, 
        Rarity = "Fragment", 
        Resilience = 100, 
        Description = "A magical stone with an etching representing a mystical sea creature lost in time.", 
        Hint = "Found in the oceans of Ancient Isles...", 
        FavouriteBait = "None", 
        FavouriteTime = "None", 
        Price = 500, 
        XP = 80, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Woah a bone!"
        }, 
        SparkleColor = Color3.fromRGB(126, 124, 123), 
        HoldAnimation = l_fish_0:WaitForChild("small"), 
        From = "Ancient Isle"
    }, 
    Megalodon = {
        BlockPassiveCapture = true, 
        HideFishModel = true, 
        WeightPool = {
            500000, 
            670000
        }, 
        Chance = 0.01, 
        Rarity = "Exotic", 
        Resilience = 5, 
        ProgressEfficiency = 0.2, 
        Description = "The Megalodon is a gigantic predatory shark known for its enormous size. It possesses a large mouth with many serrated teeth which can easily rip through anything in its way. They went extinct around 3.6 million years ago, during the early Pliocene epoch. They are one of the apex predators of the Ancient Isle, and will put up an incredible fight when hooked.", 
        Hint = "???", 
        FavouriteBait = {
            "Shark Head", 
            "Tryhard Worm"
        }, 
        FavouriteTime = "None", 
        Price = 10000, 
        XP = 6000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "WOAH The Meg!"
        }, 
        SparkleColor = Color3.fromRGB(126, 124, 123), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Ancient Isle"
    }, 
    ["Phantom Megalodon"] = {
        BlockPassiveCapture = true, 
        HideFishModel = true, 
        WeightPool = {
            500000, 
            670000
        }, 
        Chance = 1.0E-4, 
        Rarity = "Limited", 
        Resilience = 5, 
        ProgressEfficiency = 0.15, 
        Description = "The Phantom Meg is a spectral version of the ancient Megalodon, haunting the waters with an ethereal glow. Its serrated teeth remain just as fearsome, tearing through anything in its way. Though extinct for millions of years, this ghostly apex predator dominates the Ancient Isle and will challenge any angler brave enough to hook it.", 
        Hint = "The Phantom Meg only emerges during the eclipse & twilight hours of the celestial cycle, when the sun and moon align every seven days.", 
        FavouriteBait = "Shark Head", 
        FavouriteTime = "None", 
        Price = 20000, 
        XP = 12000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "WOAH THE PHANTOM MEG!"
        }, 
        SparkleColor = Color3.fromRGB(255, 0, 0), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Ancient Isle"
    }, 
    ["Ancient Megalodon"] = {
        BlockPassiveCapture = true, 
        HideFishModel = true, 
        WeightPool = {
            500000, 
            700000
        }, 
        Chance = 0.005, 
        Rarity = "Exotic", 
        Resilience = 5, 
        ProgressEfficiency = 0.2, 
        Description = "The Ancient Megalodon is a colossal predatory shark from prehistoric times, unmatched in size and ferocity. With its massive mouth and serrated teeth, it can effortlessly rip through any obstacle. A true apex predator of the Ancient Isle, it offers an incredible battle for those daring to catch it.", 
        Hint = "???", 
        FavouriteBait = "Shark Head", 
        FavouriteTime = "None", 
        Price = 16000, 
        XP = 9000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "WOAH THE ANCIENT MEG!"
        }, 
        SparkleColor = Color3.fromRGB(131, 255, 49), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Ancient Isle"
    }, 
    ["Forsaken Algae"] = {
        BlockPassiveCapture = true, 
        WeightPool = {
            25, 
            50
        }, 
        Chance = 40, 
        Rarity = "Limited", 
        Resilience = 100, 
        Description = "The Barracuda's fearsome backbone.", 
        Hint = "Forsaken Algae can be found in the desolate and abandoned areas of the Forsaken Depths, a place where few dare to venture...", 
        FavouriteBait = "None", 
        FavouriteTime = "None", 
        Price = 50, 
        XP = 20, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Woah a algae!"
        }, 
        SparkleColor = Color3.fromRGB(126, 124, 123), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        FromLimited = "Archeological Site", 
        HideInBestiary = true
    }, 
    ["Ancient Algae"] = {
        BlockPassiveCapture = true, 
        WeightPool = {
            25, 
            50
        }, 
        Chance = 40, 
        Rarity = "Limited", 
        Resilience = 100, 
        Description = "A relic from times long past, holding secrets of the deep.", 
        Hint = "Ancient Algae is said to have originated from the long-lost ruins beneath the Ancient Abyss, a place where time seems to stand still...", 
        FavouriteBait = "None", 
        FavouriteTime = "None", 
        Price = 50, 
        XP = 20, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Woah a algae!"
        }, 
        SparkleColor = Color3.fromRGB(126, 124, 123), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        FromLimited = "Archeological Site", 
        HideInBestiary = true
    }, 
    ["Mushgrove Algae"] = {
        BlockPassiveCapture = true, 
        WeightPool = {
            25, 
            50
        }, 
        Chance = 40, 
        Rarity = "Limited", 
        Resilience = 100, 
        Description = "A testament to the enduring beauty of nature.", 
        Hint = "Mushgrove Algae thrives in the damp, shadowy waters of Mushgrove Swamps, a place where life persists even in the darkest corners...", 
        FavouriteBait = "None", 
        FavouriteTime = "None", 
        Price = 50, 
        XP = 20, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Woah a algae!"
        }, 
        SparkleColor = Color3.fromRGB(126, 124, 123), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        FromLimited = "Archeological Site", 
        HideInBestiary = true
    }, 
    ["Snowcap Algae"] = {
        BlockPassiveCapture = true, 
        WeightPool = {
            25, 
            50
        }, 
        Chance = 40, 
        Rarity = "Limited", 
        Resilience = 100, 
        Description = "A cold, frosty variant with a tale to tell.", 
        Hint = "Snowcap Algae can only be found in the icy and frigid peaks of Snowcap Mountain, where the harsh cold has preserved it for centuries...", 
        FavouriteBait = "None", 
        FavouriteTime = "None", 
        Price = 50, 
        XP = 20, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Woah a algae!"
        }, 
        SparkleColor = Color3.fromRGB(126, 124, 123), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        FromLimited = "Archeological Site", 
        HideInBestiary = true
    }, 
    ["Barracuda's Spine"] = {
        WeightPool = {
            25, 
            50
        }, 
        Chance = 40, 
        Rarity = "Limited", 
        Resilience = 100, 
        Description = "The Barracuda's fearsome backbone.", 
        Hint = "Divers have found the Barracuda Spine quite often around Moosewood...", 
        FavouriteBait = "None", 
        FavouriteTime = "None", 
        Price = 50, 
        XP = 20, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Woah a bone!"
        }, 
        SparkleColor = Color3.fromRGB(126, 124, 123), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        FromLimited = "Archeological Site", 
        From = "Archeological Site"
    }, 
    ["Fossil Fan"] = {
        WeightPool = {
            25, 
            50
        }, 
        Chance = 40, 
        Rarity = "Limited", 
        Resilience = 100, 
        Description = "An ancient, fan-shaped fossil etched with intricate patterns, a true underwater treasure.", 
        Hint = "This was last discovered near Moosewood...", 
        FavouriteBait = "None", 
        FavouriteTime = "None", 
        Price = 60, 
        XP = 22, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Woah a bone!"
        }, 
        SparkleColor = Color3.fromRGB(126, 124, 123), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        FromLimited = "Archeological Site", 
        From = "Archeological Site"
    }, 
    ["Claw Gill"] = {
        WeightPool = {
            15, 
            30
        }, 
        Chance = 40, 
        Rarity = "Limited", 
        Resilience = 100, 
        Description = "Are these Claws or are they gills? All we know is, these are remains from fish that went extinct long ago...", 
        Hint = "Legends say the fish these belong to once swam predominantly in ponds.", 
        FavouriteBait = "None", 
        FavouriteTime = "None", 
        Price = 60, 
        XP = 22, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Woah a bone!"
        }, 
        SparkleColor = Color3.fromRGB(126, 124, 123), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        FromLimited = "Archeological Site", 
        From = "Archeological Site"
    }, 
    ["Spine Bone"] = {
        WeightPool = {
            30, 
            60
        }, 
        Chance = 30, 
        Rarity = "Limited", 
        Resilience = 100, 
        Description = "Seems like the Spine bone of a really large fish...", 
        Hint = "Dr. Finneus had mentioned discovering this earlier around Roslit...", 
        FavouriteBait = "None", 
        FavouriteTime = "None", 
        Price = 80, 
        XP = 35, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Woah a bone!"
        }, 
        SparkleColor = Color3.fromRGB(126, 124, 123), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        FromLimited = "Archeological Site", 
        From = "Archeological Site"
    }, 
    ["Spine Blade"] = {
        WeightPool = {
            30, 
            60
        }, 
        Chance = 12, 
        Rarity = "Limited", 
        Resilience = 100, 
        Description = "A sturdy vertebra from a long-lost fish, steeped in ancient mystery.", 
        Hint = "If the Spine Bone was found around Roslit... Could this be from the same zone?", 
        FavouriteBait = "None", 
        FavouriteTime = "None", 
        Price = 100, 
        XP = 40, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Woah a bone!"
        }, 
        SparkleColor = Color3.fromRGB(126, 124, 123), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        FromLimited = "Archeological Site", 
        From = "Archeological Site"
    }, 
    ["Shark Fang"] = {
        WeightPool = {
            30, 
            50
        }, 
        Chance = 7, 
        Rarity = "Limited", 
        Resilience = 100, 
        Description = "A razor-sharp tooth from a fearsome predator, gleaming with primal power.", 
        Hint = "Legends say most ancient shark dwelled in the Oceans of Roslit...", 
        FavouriteBait = "None", 
        FavouriteTime = "None", 
        Price = 135, 
        XP = 50, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Woah a bone!"
        }, 
        SparkleColor = Color3.fromRGB(126, 124, 123), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        FromLimited = "Archeological Site", 
        From = "Archeological Site"
    }, 
    ["Nessie's Spine"] = {
        WeightPool = {
            40, 
            80
        }, 
        Chance = 3, 
        Rarity = "Limited", 
        Resilience = 100, 
        ProgressEfficiency = 0.9, 
        Description = "A mythical vertebra said to belong to the Nessie.", 
        Hint = "We haven't checked the Mushgroves yet... Could this be discovered there?", 
        FavouriteBait = "None", 
        FavouriteTime = "None", 
        Price = 250, 
        XP = 90, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Woah a bone!"
        }, 
        SparkleColor = Color3.fromRGB(126, 124, 123), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        FromLimited = "Archeological Site", 
        From = "Archeological Site"
    }, 
    ["Spined Fin"] = {
        WeightPool = {
            20, 
            50
        }, 
        Chance = 1, 
        Rarity = "Limited", 
        Resilience = 100, 
        ProgressEfficiency = 0.9, 
        Description = "A jagged, bony fin from a formidable fish, crafted by nature for defense.", 
        Hint = "This appears to be something a fish from the coldest regions would rely on for survival...", 
        FavouriteBait = "None", 
        FavouriteTime = "None", 
        Price = 300, 
        XP = 120, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Woah a bone!"
        }, 
        HoldAnimation = l_fish_0:WaitForChild("bigbasic"), 
        SparkleColor = Color3.fromRGB(126, 124, 123), 
        FromLimited = "Archeological Site", 
        From = "Archeological Site"
    }, 
    ["Ancient Serpent Spine"] = {
        WeightPool = {
            30, 
            80
        }, 
        Chance = 0.01, 
        Rarity = "Limited", 
        Resilience = 100, 
        ProgressEfficiency = 0.8, 
        Description = "A chilling relic of a fearsome, long-forgotten creature, radiating an aura of dread.", 
        Hint = "Legends say the Pirates had only ONCE ever caught this... No One else ever got to lay their hands on this fish...", 
        FavouriteBait = "None", 
        FavouriteTime = "None", 
        Price = 800, 
        XP = 250, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "WOAH! ANCIENT SERPENT SPINE?!"
        }, 
        SparkleColor = Color3.fromRGB(126, 12, 12), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        FromLimited = "Archeological Site", 
        From = "Archeological Site"
    }, 
    Resin = {
        BlockPassiveCapture = true, 
        WeightPool = {
            30, 
            80
        }, 
        Chance = 0.05, 
        Rarity = "Secret", 
        Resilience = 100, 
        ProgressEfficiency = 0.8, 
        Description = "Resin", 
        Hint = "Its pretty", 
        FavouriteBait = "None", 
        FavouriteTime = "None", 
        Price = 800, 
        XP = 250, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Thats pretty"
        }, 
        SparkleColor = Color3.fromRGB(170, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("small"), 
        From = "Mushgrove"
    }, 
    ["Ancient Serpent Skull"] = {
        WeightPool = {
            50, 
            100
        }, 
        Chance = 0.005, 
        Rarity = "Limited", 
        Resilience = 100, 
        ProgressEfficiency = 0.8, 
        Description = "A haunting, bone-chilling relic from a monstrous, lost predator, shrouded in eerie mystery. Beware... Locals say the skull holds a haunting power...", 
        Hint = "???", 
        FavouriteBait = "None", 
        FavouriteTime = "None", 
        Price = 1200, 
        XP = 400, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "WOAH ANCIENT SERPENT'S SKULL!"
        }, 
        SparkleColor = Color3.fromRGB(126, 12, 12), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        FromLimited = "Archeological Site", 
        From = "Archeological Site"
    }, 
    Palaeoniscum = {
        WeightPool = {
            25, 
            700
        }, 
        Chance = 40, 
        Rarity = "Unusual", 
        Resilience = 70, 
        Description = "Palaeoniscum is an ancient ray-finned fish from the Early Permian period, approximately 290 million years ago. Known for its robust ganoid scales and streamlined body, it represents early actinopterygian evolution, the ancestor of most modern fish.", 
        Hint = "Found within the Ancient Isle's waterfall.", 
        FavouriteBait = "Fish Head", 
        FavouriteTime = "Night", 
        Price = 125, 
        XP = 35, 
        Seasons = {
            "Spring", 
            "Autumn"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Palaeoniscum!", 
            "OMG A Palaeoniscum!", 
            "I can't believe I caught a Palaeoniscum!"
        }, 
        SparkleColor = Color3.fromRGB(33, 106, 122), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Ancient Archives"
    }, 
    Birgeria = {
        WeightPool = {
            500, 
            1200
        }, 
        Chance = 15, 
        Rarity = "Unusual", 
        Resilience = 55, 
        Description = "Birgeria is a genus of extinct fish from the Late Triassic period, recognized for its large size and long, slender body. It was a carnivorous predator that roamed ancient seas, hunting smaller fish and invertebrates.", 
        Hint = "Found in the dark waters of the Archives...", 
        FavouriteBait = "Worm", 
        FavouriteTime = "Day", 
        Price = 200, 
        XP = 60, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "I caught a Birgeria!", 
            "OMG A Birgeria!", 
            "Look at this, a Birgeria!"
        }, 
        SparkleColor = Color3.fromRGB(200, 200, 200), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Ancient Archives"
    }, 
    Phanerorhynchus = {
        WeightPool = {
            600, 
            1400
        }, 
        Chance = 3, 
        Rarity = "Rare", 
        Resilience = 40, 
        Description = "Phanerorhynchus is an extinct, predatory fish from the Late Devonian period. Known for its elongated body and sharp, backward-curving teeth, it was a formidable predator in ancient aquatic ecosystems.", 
        Hint = "Found in the dark waters of the Archives...", 
        FavouriteBait = "Deep Coral", 
        FavouriteTime = "Night", 
        Price = 450, 
        XP = 90, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "I caught a Phanerorhynchus!", 
            "OMG A Phanerorhynchus!", 
            "Wow, a Phanerorhynchus!"
        }, 
        SparkleColor = Color3.fromRGB(102, 51, 0), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Ancient Archives"
    }, 
    Diplurus = {
        WeightPool = {
            800, 
            1600
        }, 
        Chance = 0.1, 
        Rarity = "Legendary", 
        Resilience = 30, 
        Description = "Diplurus is an extinct fish from the Late Devonian period, distinguished by its unique, two-lobed tail. It was an active predator, preying on smaller fish and invertebrates in ancient freshwater habitats.", 
        Hint = "Found in the dark waters of the Archives...", 
        FavouriteBait = "Shrimp", 
        FavouriteTime = "Day", 
        Price = 800, 
        XP = 250, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "I caught a Diplurus!", 
            "OMG A Diplurus!", 
            "I can't believe I caught a Diplurus!"
        }, 
        SparkleColor = Color3.fromRGB(153, 102, 0), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Ancient Archives"
    }, 
    Lepidotes = {
        WeightPool = {
            900, 
            2000
        }, 
        Chance = 0.03, 
        Rarity = "Mythical", 
        Resilience = 20, 
        Description = "Lepidotes is an extinct fish from the Mesozoic era. Known for its large, heavily armored body and prominent fin structure, it was a significant predator in ancient oceans.", 
        Hint = "Found in the dark waters of the Archives...", 
        FavouriteBait = "Deep Coral", 
        FavouriteTime = "Night", 
        Price = 1800, 
        XP = 500, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "I caught a Lepidotes!", 
            "OMG A Lepidotes!", 
            "I can't believe I caught a Lepidotes!"
        }, 
        SparkleColor = Color3.fromRGB(255, 215, 0), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Ancient Archives"
    }, 
    Amblypterus = {
        WeightPool = {
            700, 
            1800
        }, 
        Chance = 0.005, 
        Rarity = "Mythical", 
        Resilience = 15, 
        Description = "Amblypterus is an extinct genus of prehistoric fish from the Carboniferous period, known for its unusual body shape and large, complex pectoral fins that allowed for agile, precise movement.", 
        Hint = "Found in the dark waters of the Archives...", 
        FavouriteBait = "Fish Head", 
        FavouriteTime = "Day", 
        Price = 2500, 
        XP = 700, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "I caught an Amblypterus!", 
            "OMG A Amblypterus!", 
            "I can't believe I caught an Amblypterus!"
        }, 
        SparkleColor = Color3.fromRGB(204, 153, 0), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Ancient Archives"
    }, 
    Boots = {
        BlockPassiveCapture = true, 
        WeightPool = {
            12, 
            13
        }, 
        Chance = 0.05, 
        Rarity = "Exotic", 
        Resilience = 100, 
        ProgressEfficiency = 0.8, 
        Description = "Boots", 
        Hint = "Dr. Crookspine might know what to do with this.", 
        FavouriteBait = "None", 
        FavouriteTime = "None", 
        Price = 800, 
        XP = 250, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Cool"
        }, 
        SparkleColor = Color3.fromRGB(170, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("small"), 
        From = "Ocean"
    }, 
    RocketFuel = {
        BlockPassiveCapture = true, 
        WeightPool = {
            12, 
            13
        }, 
        Chance = 0.05, 
        Rarity = "Exotic", 
        Resilience = 100, 
        ProgressEfficiency = 0.8, 
        Description = "RocketFuel", 
        Hint = "Dr. Crookspine might know what to do with this.", 
        FavouriteBait = "None", 
        FavouriteTime = "None", 
        Price = 800, 
        XP = 250, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Is this fueled?"
        }, 
        SparkleColor = Color3.fromRGB(170, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("small"), 
        From = "Mushgrove"
    }, 
    ["Speed Core"] = {
        BlockPassiveCapture = true, 
        WeightPool = {
            12, 
            13
        }, 
        Chance = 0.05, 
        Rarity = "Exotic", 
        Resilience = 100, 
        ProgressEfficiency = 0.8, 
        Description = "Speed Core", 
        Hint = "Dr. Crookspine might know what to do with this.", 
        FavouriteBait = "None", 
        FavouriteTime = "None", 
        Price = 800, 
        XP = 250, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "So Techy"
        }, 
        SparkleColor = Color3.fromRGB(170, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Sunstone"
    }, 
    ["The Depths Key"] = {
        WeightPool = {
            500, 
            1000
        }, 
        Chance = 0.01, 
        Rarity = "Exotic", 
        Resilience = 35, 
        ProgressEfficiency = 0.9, 
        Description = "This is the Key that leads to the gates of The Depths...", 
        Hint = "Where does this key open up?...", 
        FavouriteBait = "None", 
        FavouriteTime = "Day", 
        Price = 800, 
        XP = 350, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "I caught a depths key!", 
            "Woah, a key!!"
        }, 
        SparkleColor = Color3.fromRGB(126, 12, 12), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Vertigo"
    }, 
    ["Destroyed Fossil"] = {
        WeightPool = {
            10, 
            45
        }, 
        Chance = 35, 
        Rarity = "Trash", 
        Resilience = 100, 
        Description = "A Destroyed Fossil... How much would this sell for?", 
        Hint = "???", 
        FavouriteBait = "None", 
        FavouriteTime = "Day", 
        Price = 35, 
        XP = 20, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Oh... A Destroyed Fossil?"
        }, 
        SparkleColor = Color3.fromRGB(126, 116, 78), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "The Depths"
    }, 
    ["Scrap Metal"] = {
        WeightPool = {
            10, 
            50
        }, 
        Chance = 32, 
        Rarity = "Trash", 
        Resilience = 100, 
        Description = "Just a piece of metal.", 
        Hint = "???", 
        FavouriteBait = "None", 
        FavouriteTime = "Day", 
        Price = 40, 
        XP = 20, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Just a piece of scrap metal!"
        }, 
        SparkleColor = Color3.fromRGB(125, 126, 123), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "The Depths"
    }, 
    ["Deep-sea Hatchetfish"] = {
        WeightPool = {
            5, 
            35
        }, 
        Chance = 100, 
        Rarity = "Common", 
        Resilience = 90, 
        Description = "A small, silvery fish with sharp edges and glowing organs, resembling a metallic hatchet.", 
        Hint = "Dwells during the Night, near steep underwater cliffs.", 
        FavouriteBait = "Seaweed", 
        FavouriteTime = "Night", 
        Price = 35, 
        XP = 20, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Ooh, a Deep Sea Hatchetfish!"
        }, 
        SparkleColor = Color3.fromRGB(99, 97, 126), 
        HoldAnimation = l_fish_0:WaitForChild("bigbasic"), 
        From = "The Depths"
    }, 
    ["Deep-sea Dragonfish"] = {
        WeightPool = {
            8, 
            40
        }, 
        Chance = 100, 
        Rarity = "Common", 
        Resilience = 80, 
        Description = "A bioluminescent predator with sharp fangs, glowing lure, and stealthy camouflage in ocean depths.", 
        Hint = "Lurks deep in shadowy trenches during the Night", 
        FavouriteBait = "Deep Coral", 
        FavouriteTime = "Night", 
        Price = 45, 
        XP = 25, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Oh, a Deep sea Dragonfish!"
        }, 
        SparkleColor = Color3.fromRGB(73, 74, 126), 
        HoldAnimation = l_fish_0:WaitForChild("heavybasic"), 
        From = "The Depths"
    }, 
    ["Luminescent Minnow"] = {
        WeightPool = {
            2, 
            8
        }, 
        Chance = 60, 
        Rarity = "Unusual", 
        Resilience = 80, 
        Description = "A tiny, glowing fish that sparkles like a gem, illuminating the dark waters.", 
        Hint = "Found in shallow caves under glowing coral clusters.", 
        FavouriteBait = "Seaweed", 
        FavouriteTime = "Night", 
        Price = 120, 
        XP = 30, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "What is that glowing fish..."
        }, 
        SparkleColor = Color3.fromRGB(41, 150, 172), 
        HoldAnimation = l_fish_0:WaitForChild("small"), 
        From = "The Depths"
    }, 
    ["Frilled Shark"] = {
        WeightPool = {
            40, 
            90
        }, 
        Chance = 50, 
        Rarity = "Unusual", 
        Resilience = 70, 
        Description = "A serpentine predator with a ruffled neck and razor-sharp teeth, ancient and elusive.", 
        Hint = "Hides in deep ocean caves near rocky crevices, appears during the Night time.", 
        FavouriteBait = "Fish Head", 
        FavouriteTime = "Night", 
        Price = 150, 
        XP = 45, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "That's a large frilled shark!"
        }, 
        SparkleColor = Color3.fromRGB(65, 93, 64), 
        HoldAnimation = l_fish_0:WaitForChild("heavybasic"), 
        From = "The Depths"
    }, 
    ["Depth Octopus"] = {
        WeightPool = {
            30, 
            80
        }, 
        Chance = 40, 
        Rarity = "Unusual", 
        Resilience = 50, 
        Description = "A mysterious, translucent octopus with glowing spots and a knack for stealthy escapes.", 
        Hint = "Lurks in deep, dark waters in the Depth.", 
        FavouriteBait = "Coral", 
        FavouriteTime = "Day", 
        Price = 175, 
        XP = 50, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Woah, that's almost transparent, what is it??"
        }, 
        SparkleColor = Color3.fromRGB(125, 126, 123), 
        HoldAnimation = l_fish_0:WaitForChild("heavybasic"), 
        From = "The Depths"
    }, 
    ["Three-eyed Fish"] = {
        WeightPool = {
            20, 
            60
        }, 
        Chance = 40, 
        Rarity = "Unusual", 
        Resilience = 70, 
        Description = "A mutant fish with three glowing eyes, sleek scales, and a bizarre, eerie charm.", 
        Hint = "Swims during the dark night and underwater ruins.", 
        FavouriteBait = "Seaweed", 
        FavouriteTime = "Night", 
        Price = 200, 
        XP = 55, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Woah! The Three Eyed Fish!"
        }, 
        SparkleColor = Color3.fromRGB(125, 126, 123), 
        HoldAnimation = l_fish_0:WaitForChild("heavybasic"), 
        From = "The Depths"
    }, 
    ["Goblin Shark"] = {
        WeightPool = {
            200, 
            450
        }, 
        Chance = 25, 
        Rarity = "Rare", 
        Resilience = 50, 
        Description = "A deep-sea predator with a protruding snout, jagged teeth, and a ghostly appearance.", 
        Hint = "Roams trench edges and dark underwater canyons.", 
        FavouriteBait = "Fish Head", 
        FavouriteTime = "Night", 
        Price = 450, 
        XP = 80, 
        Seasons = {
            "Spring", 
            "Summer"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Wow, that's a Goblin Shark?"
        }, 
        SparkleColor = Color3.fromRGB(76, 126, 44), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "The Depths"
    }, 
    ["Black Dragon Fish"] = {
        WeightPool = {
            150, 
            400
        }, 
        Chance = 10, 
        Rarity = "Rare", 
        Resilience = 45, 
        Description = "A menacing fish with sharp fins and an eerie, black-scaled body.", 
        Hint = "Found in the deepest ocean trenches, far from light.", 
        FavouriteBait = "Deep Coral", 
        FavouriteTime = "Night", 
        Price = 500, 
        XP = 120, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "THE Black Dragon Fish?!"
        }, 
        SparkleColor = Color3.fromRGB(126, 59, 59), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "The Depths"
    }, 
    ["Spider Crab"] = {
        WeightPool = {
            80, 
            250
        }, 
        Chance = 20, 
        Rarity = "Rare", 
        Resilience = 60, 
        Description = "A large, eerie crab with long, spindly legs and a tough, armoured shell.", 
        Hint = "Can be found during the day through fishing or inside crab cages.", 
        FavouriteBait = "Deep Coral", 
        FavouriteTime = "Day", 
        Price = 550, 
        XP = 135, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Is that a Spider.. Or a Crab??"
        }, 
        SparkleColor = Color3.fromRGB(125, 126, 123), 
        HoldAnimation = l_fish_0:WaitForChild("heavybasic"), 
        From = "The Depths"
    }, 
    Nautilus = {
        WeightPool = {
            400, 
            800
        }, 
        Chance = 0.2, 
        Rarity = "Legendary", 
        Resilience = 30, 
        ProgressEfficiency = 0.9, 
        Description = "An ancient, spiral-shelled mollusc with a glowing & graceful body, tentacle-filled movements. The Nautilus is an elusive octopus that creates a thick, spiral-shaped shell around its body for protection.", 
        Hint = "Dwells in deep coral reefs and rocky underwater caves, mostly visible during the Night.", 
        FavouriteBait = "None", 
        FavouriteTime = "Night", 
        Price = 1000, 
        XP = 300, 
        Seasons = {
            "Spring", 
            "Summer"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Nautilus... OMG!!"
        }, 
        SparkleColor = Color3.fromRGB(203, 174, 139), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "The Depths"
    }, 
    ["Small Spine Chimera"] = {
        WeightPool = {
            800, 
            1500
        }, 
        Chance = 0.2, 
        Rarity = "Legendary", 
        Resilience = 10, 
        ProgressEfficiency = 0.9, 
        Description = "A large, intimidating fish with spiny fins, sharp teeth, and a menacing, serpent-like body. The Chimera uses its pickaxe-like bill to strike targets, knocking them out or possible penetrating them entirely in two pieces.", 
        Hint = "Roams the deep ocean, patrolling sunken ruins and underwater trenches.", 
        FavouriteBait = "Seaweed", 
        FavouriteTime = "Day", 
        Price = 1200, 
        XP = 300, 
        Seasons = {
            "Spring", 
            "Summer"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Woah, a small spine chimera!"
        }, 
        SparkleColor = Color3.fromRGB(125, 126, 123), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "The Depths"
    }, 
    ["Ancient Eel"] = {
        WeightPool = {
            1000, 
            2000
        }, 
        Chance = 0.4, 
        Rarity = "Legendary", 
        Resilience = 10, 
        ProgressEfficiency = 0.7, 
        Description = "A long, snake-like eel with glowing patterns and a menacing, ancient presence. This is one of the oldest creatures known to man, with it dating back to 3400 BCE.", 
        Hint = "Found in deep ocean caves during the Night.", 
        FavouriteBait = "Coal", 
        FavouriteTime = "Night", 
        Price = 1500, 
        XP = 350, 
        Seasons = {
            "Spring", 
            "Summer"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A-A-Ancient Eel?!"
        }, 
        SparkleColor = Color3.fromRGB(51, 37, 126), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "The Depths"
    }, 
    ["Mutated Shark"] = {
        WeightPool = {
            2000, 
            4000
        }, 
        Chance = 0.05, 
        Rarity = "Mythical", 
        Resilience = 20, 
        ProgressEfficiency = 0.8, 
        Description = "A massive, mutated shark with glowing scars, extra fins, and an unsettling, aggressive nature. While it's named suggests it being a shark, it is actually more related to alligators. Using it's sleek body and its strong legs to pounce on unsuspecting prey.", 
        Hint = "Patrols the darkest depths during the Coldest Nights...", 
        FavouriteBait = "Fish Head", 
        FavouriteTime = "Night", 
        Price = 3000, 
        XP = 800, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Does that thing really have legs?!"
        }, 
        SparkleColor = Color3.fromRGB(102, 126, 57), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "The Depths"
    }, 
    ["Barreleye Fish"] = {
        WeightPool = {
            50, 
            150
        }, 
        Chance = 0.01, 
        Rarity = "Mythical", 
        Resilience = 20, 
        ProgressEfficiency = 0.85, 
        Description = "A transparent fish with a dome-shaped head and large, upward-facing eyes, adapted for deep waters with it's 3 eyes. The third eye has a similar effect that night-vision goggles have, giving it full 20/20 vision, even in the darkest of waters.", 
        Hint = "Found in the deep ocean during the Night, drifting near bioluminescent creatures.", 
        FavouriteBait = "Deep Coral", 
        FavouriteTime = "Night", 
        Price = 4500, 
        XP = 950, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "That fish is translucent, beautiful..."
        }, 
        SparkleColor = Color3.fromRGB(91, 126, 104), 
        HoldAnimation = l_fish_0:WaitForChild("heavybasic"), 
        From = "The Depths"
    }, 
    ["Sea Snake"] = {
        WeightPool = {
            300, 
            800
        }, 
        Chance = 0.01, 
        Rarity = "Mythical", 
        Resilience = 10, 
        ProgressEfficiency = 0.6, 
        Description = "A long, venomous sea snake with smooth, scaly skin and a graceful, undulating movement.", 
        Hint = "Swims near coral reefs and sunken ruins in shallow waters during the cold nights.", 
        FavouriteBait = "Fish Head", 
        FavouriteTime = "Night", 
        Price = 5000, 
        XP = 1200, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "WOW! A SEA SNAKE!"
        }, 
        SparkleColor = Color3.fromRGB(126, 53, 104), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "The Depths"
    }, 
    ["Ancient Depth Serpent"] = {
        WeightPool = {
            5000, 
            10000
        }, 
        Chance = 0.01, 
        Rarity = "Exotic", 
        Resilience = 2, 
        ProgressEfficiency = 0.4, 
        Description = "A colossal, serpent-like creature with armored scales and glowing eyes, lurking in the abyss. The Ancient Depth Serpent is only active when The Depths go completely dark... No one knows where it goes in the meantime, possibly lurking in a secret cave?", 
        Hint = "Dwells in the deepest trenches, guarding forgotten underwater ruins. Appears only during the darkest of nights...", 
        FavouriteBait = "Truffle Worm", 
        FavouriteTime = "Night", 
        Price = 8000, 
        XP = 2200, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "OMG. THATS THE ANCIENT DEPTH SERPENT!!!"
        }, 
        SparkleColor = Color3.fromRGB(28, 255, 100), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "The Depths"
    }, 
    ["Corsair Grouper"] = {
        WeightPool = {
            50, 
            200
        }, 
        Chance = 120, 
        Rarity = "Common", 
        Resilience = 100, 
        Description = "The Corsair Grouper is a resilient, bulky fish, often hiding among shores. Known for its powerful bites, it\226\128\153s a decent challenge for beginners.", 
        Hint = "commonly caught in Forsaken Shores.", 
        FavouriteBait = "Seaweed", 
        FavouriteTime = "Day", 
        Price = 35, 
        XP = 30, 
        Seasons = {
            "Spring", 
            "Summer"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "I caught a Corsair Grouper!", 
            "Woah, a Corsair Grouper!!"
        }, 
        SparkleColor = Color3.fromRGB(125, 126, 123), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Forsaken Shores"
    }, 
    ["Shortfin Mako Shark"] = {
        WeightPool = {
            250, 
            1000
        }, 
        Chance = 100, 
        Rarity = "Common", 
        Resilience = 80, 
        Description = "The Shortfin Mako is a fast predator found in the forsaken ocean. Its speed and strength attract seasoned anglers.", 
        Hint = "commonly caught in Forsaken Shores surrounding Ocean.", 
        FavouriteBait = "Deep Coral", 
        FavouriteTime = "Night", 
        Price = 190, 
        XP = 70, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "WOAH! A SHORTFINNED MAKO!", 
            "OMG, IS THAT A SHORTFIN MAKO?"
        }, 
        SparkleColor = Color3.fromRGB(70, 76, 126), 
        HoldAnimation = l_fish_0:WaitForChild("bigbasic"), 
        From = "Forsaken Shores"
    }, 
    ["Galleon Goliath"] = {
        WeightPool = {
            50, 
            200
        }, 
        Chance = 70, 
        Rarity = "Uncommon", 
        Resilience = 60, 
        Description = "The Galleon Goliath is a mid-sized, slow-moving fish, often found in deeper seas. Uncommon but worth the haul.", 
        Hint = "Often found in deeper seas near Forsaken Shores.", 
        FavouriteBait = "Squid", 
        FavouriteTime = "Day", 
        Price = 190, 
        XP = 85, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "WOAH! A GALLEON GOLIATH!", 
            "OMG, IS THAT A GALLEON GOLIATH?"
        }, 
        SparkleColor = Color3.fromRGB(170, 170, 127), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Forsaken Shores"
    }, 
    ["Buccaneer Barracuda"] = {
        WeightPool = {
            90, 
            250
        }, 
        Chance = 60, 
        Rarity = "Uncommon", 
        Resilience = 50, 
        Description = "Known for its sharp teeth, the Buccaneer Barracuda lurks near reefs, making it a thrilling catch for the daring.", 
        Hint = "Lurks near reefs during the Night & when it's cold.", 
        FavouriteBait = "Deep Coral", 
        FavouriteTime = "Night", 
        Price = 250, 
        XP = 100, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "WOAH! A BUCCANEER BARRACUDA!", 
            "OMG, IS THAT A BUCCANEER BARRACUDA?", 
            "NO WAY!!"
        }, 
        SparkleColor = Color3.fromRGB(85, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Forsaken Shores"
    }, 
    ["Scurvy Sailfish"] = {
        WeightPool = {
            150, 
            700
        }, 
        Chance = 40, 
        Rarity = "Unusual", 
        Resilience = 30, 
        Description = "Scurvy Sailfish are swift and skilled jumpers, often found near rocky shores. Their agility makes them hard to land.", 
        Hint = "Often found near rocky shores.", 
        FavouriteBait = "Shrimp", 
        FavouriteTime = "Night", 
        Price = 300, 
        XP = 140, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Yooo, is that a Sailfish?!"
        }, 
        SparkleColor = Color3.fromRGB(0, 85, 127), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Forsaken Shores"
    }, 
    ["Cutlass Fish"] = {
        WeightPool = {
            80, 
            250
        }, 
        Chance = 50, 
        Rarity = "Unusual", 
        Resilience = 40, 
        Description = "The sleek Cutlass Fish glides through reefs, known for its long, blade-like body. Easy to spot, harder to hook.", 
        Hint = "commonly caught in Forsaken Shores.", 
        FavouriteBait = "Worm", 
        FavouriteTime = "Day", 
        Price = 500, 
        XP = 175, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Yooo, is that THE Cutlass Fish?!"
        }, 
        SparkleColor = Color3.fromRGB(0, 85, 127), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Forsaken Shores"
    }, 
    ["Reefrunner Snapper"] = {
        WeightPool = {
            80, 
            250
        }, 
        Chance = 35, 
        Rarity = "Rare", 
        Resilience = 25, 
        ProgressEfficiency = 0.7, 
        Description = "Bold yet wary, the Reefunner Snapper darts around reefs. A popular, rare catch for reef fishers.", 
        Hint = "commonly caught in Forsaken Shores.", 
        FavouriteBait = "Insect", 
        FavouriteTime = "Day", 
        Price = 750, 
        XP = 200, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Yooo, that's a Reefrunner!"
        }, 
        SparkleColor = Color3.fromRGB(246, 126, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Forsaken Shores"
    }, 
    ["Cursed Eel"] = {
        WeightPool = {
            80, 
            250
        }, 
        Chance = 25, 
        Rarity = "Rare", 
        Resilience = 15, 
        ProgressEfficiency = 0.5, 
        Description = "Cursed Eels linger in darker waters, giving off an eerie glow. They\226\128\153re a spooky find for night anglers.", 
        Hint = "Found in darker waters in the oceanside.", 
        FavouriteBait = "Coal", 
        FavouriteTime = "Night", 
        Price = 700, 
        XP = 250, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "Cursed Eel!", 
            "Am I gonna get shocked?!"
        }, 
        SparkleColor = Color3.fromRGB(61, 119, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Forsaken Shores"
    }, 
    ["Shipwreck Barracuda"] = {
        WeightPool = {
            100, 
            300
        }, 
        Chance = 0.1, 
        Rarity = "Legendary", 
        Resilience = 10, 
        Description = "Lurking near old wrecks, the Shipwreck Barracuda guards sunken treasure spots. Feared by some, prized by others.", 
        Hint = "Lurking near old wrecks in the Forsaken Ocean.", 
        FavouriteBait = "Coral", 
        FavouriteTime = "Night", 
        Price = 1200, 
        XP = 400, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "Yooo, that's a Shipwreck Barracuda!"
        }, 
        SparkleColor = Color3.fromRGB(255, 25, 113), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Forsaken Shores"
    }, 
    ["Golden Seahorse"] = {
        WeightPool = {
            3, 
            8
        }, 
        Chance = 0.001, 
        Rarity = "Mythical", 
        Resilience = 10, 
        Description = "Golden Sea Horses are small but enchanting, drifting near seaweed & algae. Gentle and rare, they\226\128\153re a delight to find.", 
        Hint = "Drifting near seaweed & algae in the Oceanside.", 
        FavouriteBait = "Weird Algae", 
        FavouriteTime = "Day", 
        Price = 2900, 
        XP = 2800, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "IS THAT A GOLDEN SEAHORSE?!"
        }, 
        SparkleColor = Color3.fromRGB(243, 255, 14), 
        HoldAnimation = l_fish_0:WaitForChild("small"), 
        From = "Forsaken Shores", 
        HideInBestiary = false
    }, 
    ["Captain's Goldfish"] = {
        WeightPool = {
            10, 
            25
        }, 
        Chance = 0.001, 
        Rarity = "Mythical", 
        Resilience = 5, 
        Description = "A mythical, elusive goldfish found beneath waterfalls, said to bring fortune to rare finders.", 
        Hint = "Found beneath enchanted waterfalls.", 
        FavouriteBait = "Truffle Worm", 
        FavouriteTime = "Day", 
        Price = 1700, 
        XP = 2800, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "IS THAT A CAPTAIN GOLDFISH?!"
        }, 
        SparkleColor = Color3.fromRGB(243, 255, 14), 
        HoldAnimation = l_fish_0:WaitForChild("small"), 
        From = "Forsaken Shores"
    }, 
    Piranha = {
        WeightPool = {
            20, 
            50
        }, 
        Chance = 100, 
        Rarity = "Common", 
        Resilience = 70, 
        Description = "Piranhas are aggressive fish with incredibly sharp teeth, which they use to hunt their prey. Ranking high on the local food chain, they are still no match for the larger and fiercer apex predators of the Ancient Isle.", 
        Hint = "Can be found in the waters of the Ancient Isle.", 
        FavouriteBait = "Squid", 
        FavouriteTime = nil, 
        Price = 85, 
        XP = 95, 
        Seasons = {
            "Spring", 
            "Winter"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Piranha!", 
            "I caught a Piranha!", 
            "Woah! A Piranha!", 
            "Ouu! A Piranha!", 
            "It bit me!"
        }, 
        SparkleColor = Color3.fromRGB(255, 137, 69), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Ancient Isle"
    }, 
    Cladoselache = {
        WeightPool = {
            180, 
            240
        }, 
        Chance = 87, 
        Rarity = "Common", 
        Resilience = 70, 
        Description = "Cladoselache is a sleek, agile predator from the Devonian era, hunting fish and cephalopods.", 
        Hint = "Can be found in freshwater in the Ancient Isle.", 
        FavouriteBait = "Worm", 
        FavouriteTime = "Day", 
        Price = 90, 
        XP = 95, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Cladoselache!", 
            "I caught a Cladoselache!", 
            "Woah! A Cladoselache!", 
            "Ouu! A Cladoselache!"
        }, 
        SparkleColor = Color3.fromRGB(255, 137, 69), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Ancient Isle"
    }, 
    Anomalocaris = {
        WeightPool = {
            100, 
            400
        }, 
        Chance = 65, 
        Rarity = "Uncommon", 
        Resilience = 65, 
        Description = "The Anomalocaris is a large predator of the Ancient Isle. They flex their fins in a wave-like motion to generate speed, which they use to pursue prey. They bear strong armor-like scales on their backs, making them quite strong. The Anomalocaris went extinct around 485 million years ago at the end of the Ordovician period.", 
        Hint = "Found around the Ancient Isle.", 
        FavouriteBait = "Minnow", 
        FavouriteTime = "Night", 
        Price = 90, 
        XP = 100, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Ouu an Anomalocaris!", 
            "Woah, an Anomalocaris!", 
            "An Anomalocaris!", 
            "I caught an Anomalocaris!"
        }, 
        SparkleColor = Color3.fromRGB(204, 64, 80), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Ancient Isle"
    }, 
    Starfish = {
        WeightPool = {
            20, 
            70
        }, 
        Chance = 55, 
        Rarity = "Uncommon", 
        Resilience = 95, 
        Description = "The starfish is a marine invertebrate with five arms that have hundreds of little feet which they use to move around. They prey on small organisms in their habitats, and are usually out and about during the daytime.", 
        Hint = "Found at the Ancient Isle.", 
        FavouriteBait = "None", 
        FavouriteTime = nil, 
        Price = 110, 
        XP = 115, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Ouu a Starfish!", 
            "Woah, a Starfish!", 
            "A Starfish!", 
            "I caught a Starfish!"
        }, 
        SparkleColor = Color3.fromRGB(255, 177, 51), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Ancient Isle"
    }, 
    Onychodus = {
        WeightPool = {
            1000, 
            1400
        }, 
        Chance = 55, 
        Rarity = "Uncommon", 
        Resilience = 60, 
        Description = "Onychodus is a genus of prehistoric lobe-finned fish from the Devonian period, approximately 400 million years ago. Known for its distinctive features, Onychodus was an early example of sarcopterygian fish, which includes ancestors of modern lungfish and tetrapods.", 
        Hint = "Found around the waters of the Ancient Isle.", 
        FavouriteBait = "None", 
        FavouriteTime = "Night", 
        Price = 115, 
        XP = 110, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Ouu an Onychodus!", 
            "Woah, an Onychodus!", 
            "An Onychodus!", 
            "I caught an Onychodus!"
        }, 
        SparkleColor = Color3.fromRGB(82, 94, 204), 
        HoldAnimation = l_fish_0:WaitForChild("heavybasic"), 
        From = "Ancient Isle"
    }, 
    Acanthodii = {
        WeightPool = {
            130, 
            160
        }, 
        Chance = 41, 
        Rarity = "Unusual", 
        Resilience = 70, 
        Description = "Acanthodii, commonly known as Spiny Sharks, possess many scales that form a diamond pattern along its body. They prey on smaller creatures among the Ancient Isle's waters, and are active both during the day and night. They went extinct around 250 million years ago, at the end of the Permian period.", 
        Hint = "Can be found in the waters of the Ancient Isle.", 
        FavouriteBait = "None", 
        FavouriteTime = nil, 
        Price = 160, 
        XP = 130, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Ouu an Acanthodii!", 
            "Woah, an Acanthodii!", 
            "Acanthodiiiiiiiiiiiiiii!!!"
        }, 
        SparkleColor = Color3.fromRGB(255, 230, 190), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Ancient Isle"
    }, 
    Xiphactinus = {
        WeightPool = {
            1400, 
            2000
        }, 
        Chance = 45, 
        Rarity = "Unusual", 
        Resilience = 60, 
        Description = "Xiphactinus is a massive, fast predator from the Cretaceous, with sharp teeth, sleek body, and incredible hunting efficiency.", 
        Hint = "Can be found all around the Ancient Isle.", 
        FavouriteBait = "Fish Head", 
        FavouriteTime = "Night", 
        Price = 170, 
        XP = 135, 
        Seasons = {
            "Autumn", 
            "Winter"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Ouu a Xiphactinus!", 
            "Woah, a Xiphactinus!", 
            "A Xiphactinus!"
        }, 
        SparkleColor = Color3.fromRGB(96, 130, 33), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Ancient Isle"
    }, 
    Hyneria = {
        WeightPool = {
            10000, 
            18000
        }, 
        Chance = 30, 
        Rarity = "Unusual", 
        Resilience = 75, 
        Description = "Hyneria is a giant, predatory lobe-finned fish from the Devonian, ambushing prey with powerful jaws, sharp teeth, and remarkable swimming agility.", 
        Hint = "Can be found in the waters of the Ancient Isle.", 
        FavouriteBait = "None", 
        FavouriteTime = nil, 
        Price = 145, 
        XP = 120, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "Ouu a Hyneria!", 
            "Woah, a Hyneria!", 
            "Hyneria!!!"
        }, 
        SparkleColor = Color3.fromRGB(114, 227, 140), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Ancient Isle"
    }, 
    Hallucigenia = {
        WeightPool = {
            30, 
            100
        }, 
        Chance = 30, 
        Rarity = "Rare", 
        Resilience = 75, 
        Description = "The Hallucigenia is an elongated, worm-like creature with spiney appendages throughout its body. They went extinct around 485 million years ago, at the end of the Ordovician period. They are quite low on the food chain, primarily feeding on small microorganisms.", 
        Hint = "Can be found in freshwater at the Ancient Isle.", 
        FavouriteBait = "Flakes", 
        FavouriteTime = "Day", 
        Price = 200, 
        XP = 125, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Hallucigenia!", 
            "I caught a Hallucigenia!", 
            "Woah! A Hallucigenia!", 
            "Ouu! A Hallucigenia!"
        }, 
        SparkleColor = Color3.fromRGB(255, 160, 160), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Ancient Isle"
    }, 
    Cobia = {
        WeightPool = {
            400, 
            700
        }, 
        Chance = 25, 
        Rarity = "Rare", 
        Resilience = 55, 
        Description = "The Cobia is a long fish with dark scales throughout the top half of its body, and a lighter underbelly. The torpedo-shaped structure it possesses allows it to dart towards any prey, or swiftly evade larger predators. They feed on smaller fish during the day, and lurk near cover during the night. Their dark body provides nocturnal camoflauge to stay hidden from any nearby prey or predators.", 
        Hint = "Found around the Ancient Isle.", 
        FavouriteBait = "Insect", 
        FavouriteTime = nil, 
        Price = 230, 
        XP = 140, 
        Seasons = {
            "Summer", 
            "Autumn"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A Cobia!", 
            "I caught a Cobia!", 
            "Woah! a Cobia!", 
            "COBIA!!!", 
            "A Cobia?!", 
            "That's a big Cobia!"
        }, 
        SparkleColor = Color3.fromRGB(74, 84, 132), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Ancient Isle"
    }, 
    Floppy = {
        WeightPool = {
            80, 
            100
        }, 
        Chance = 0.05, 
        Rarity = "Legendary", 
        Resilience = 25, 
        ProgressEfficiency = 0.9, 
        Description = "The Floppy is an interesting fish in the Ancient Isle. Exhibiting signs of intense energy, attempting to catch the Floppy will not be an easy task. They spend most of the day swimming around the pond, ", 
        Hint = "Can be found in the waters of the Ancient Isle.", 
        FavouriteBait = "Super Flakes", 
        FavouriteTime = nil, 
        Price = 2000, 
        XP = 1200, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Floppy!", 
            "I caught a Floppy!", 
            "Woah! A Floppy!", 
            "Ouu! A Floppy!"
        }, 
        SparkleColor = Color3.fromRGB(255, 161, 78), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Ancient Isle"
    }, 
    Leedsichthys = {
        WeightPool = {
            9000, 
            11000
        }, 
        Chance = 0.25, 
        Rarity = "Legendary", 
        Resilience = 30, 
        ProgressEfficiency = 0.75, 
        Description = "Leedsichthys is a colossal, plankton-feeding fish from the Jurassic period, approximately 165\226\128\147150 million years ago. It is one of the largest fish ever to exist, showcasing the diversity of prehistoric marine life.", 
        Hint = "Can be found in the waterfalls on the Ancient Isle.", 
        FavouriteBait = "Squid", 
        FavouriteTime = "Day", 
        Price = 2200, 
        XP = 1500, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "Woah, I caught a Leedsichthys!", 
            "A Leedsichthys!", 
            "Ouu, a Leedsichthys!", 
            "This thing's massive!"
        }, 
        SparkleColor = Color3.fromRGB(150, 229, 207), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Ancient Isle"
    }, 
    ["Ginsu Shark"] = {
        WeightPool = {
            7800, 
            10000
        }, 
        Chance = 0.13, 
        Rarity = "Legendary", 
        Resilience = 20, 
        ProgressEfficiency = 0.8, 
        Description = "The Ginsu Shark, a powerful Cretaceous predator, uses sharp serrated teeth and sleek speed to hunt large fish, marine reptiles, and other sharks.", 
        Hint = "Can be found in the waters of the Ancient Isle.", 
        FavouriteBait = "Fish Head", 
        FavouriteTime = "Night", 
        Price = 3000, 
        XP = 1800, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Woah, I caught a Ginsu Shark!", 
            "A Ginsu Shark!", 
            "No way! A Ginsu Shark!", 
            "Ouuu, a Ginsu Shark!", 
            "No way! A Ginsu Shark!"
        }, 
        SparkleColor = Color3.fromRGB(129, 143, 165), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Ancient Isle"
    }, 
    Dunkleosteus = {
        WeightPool = {
            12000, 
            30000
        }, 
        Chance = 0.09, 
        Rarity = "Legendary", 
        Resilience = 30, 
        ProgressEfficiency = 0.65, 
        Description = "The Dunkleosteus is a large predatory fish, bearing an armored skull and jaw. Its reinforced exoskull gives it the ability to easily crush any prey to bits. They went extinct around 360 million years ago, during the Late Devonian period.", 
        Hint = "Can be found in the waters of the Ancient Isle.", 
        FavouriteBait = "Minnow", 
        FavouriteTime = "Day", 
        Price = 3500, 
        XP = 2000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Woah, I caught a Dunkleosteus!", 
            "A Dunkleosteus!", 
            "No way! A Dunkleosteus!"
        }, 
        SparkleColor = Color3.fromRGB(80, 80, 118), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Ancient Isle"
    }, 
    Helicoprion = {
        WeightPool = {
            2500, 
            4200
        }, 
        Chance = 0.03, 
        Rarity = "Mythical", 
        Resilience = 20, 
        ProgressEfficiency = 0.3, 
        Description = "Helicoprion is a prehistoric shark with a unique, spiral tooth structure, using its powerful jaws to capture prey in the Ancient isles shallow seas.", 
        Hint = "???", 
        FavouriteBait = "Squid", 
        FavouriteTime = nil, 
        Price = 6000, 
        XP = 2500, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "WOAH! A HELICOPRION!!", 
            "NO WAY!!", 
            "I CAUGHT A HELICOPRION!!", 
            "IT'S A HELICOPRION!"
        }, 
        SparkleColor = Color3.fromRGB(169, 225, 255), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Ancient Isle"
    }, 
    Mosasaurus = {
        WeightPool = {
            100000, 
            140000
        }, 
        Chance = 0.015, 
        Rarity = "Mythical", 
        Resilience = 25, 
        ProgressEfficiency = 0.25, 
        Description = "Mosasaurus is the type genus of the mosasaurs, an extinct group of aquatic squamate reptiles. It exists from about 82 to 66 million years ago during the Campanian and Maastrichtian stages of the Late Cretaceous.", 
        Hint = "???", 
        FavouriteBait = "Truffle Worm", 
        FavouriteTime = "Night", 
        Price = 7500, 
        XP = 3000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "WOAH! A MOSASAURUS!!", 
            "NO WAY!!", 
            "I CAUGHT A MOSASAURUS!!", 
            "IT'S A MOSASAURUS!", 
            "A DINO!!"
        }, 
        SparkleColor = Color3.fromRGB(121, 176, 91), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Ancient Isle"
    }, 
    Banana = {
        BlockPassiveCapture = true, 
        WeightPool = {
            4, 
            10
        }, 
        Chance = 0.005, 
        FinalChanceDivisor = 8, 
        Rarity = "Secret", 
        Resilience = 45, 
        Description = "A simple banana, rich in potassium. How did it get in the water?", 
        Hint = "???", 
        FavouriteBait = "None", 
        FavouriteTime = nil, 
        Price = 18500, 
        XP = 6900, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A BANANA!!", 
            "I CAUGHT A BANANA!", 
            "A Banana!"
        }, 
        SparkleColor = Color3.fromRGB(255, 242, 62), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Ancient Isle"
    }, 
    Tire = {
        WeightPool = {
            110, 
            110
        }, 
        Chance = 17, 
        Rarity = "Trash", 
        Resilience = 130, 
        Description = "Who would leave this in an ocean? Seems to be in great condition too. A common tire for cars and pickup trucks.", 
        Hint = "Find it in cheap bodies of water.", 
        FavouriteBait = "Magnet", 
        FavouriteTime = nil, 
        Price = 20, 
        XP = 10, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Ermm..?", 
            "A tire.?", 
            "Who would put this in here?", 
            "Oh. A tire.", 
            "A tire!..?"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("small"), 
        From = "None"
    }, 
    Boot = {
        WeightPool = {
            12, 
            12
        }, 
        Chance = 17, 
        Rarity = "Trash", 
        Resilience = 120, 
        Description = "Who would leave this in an ocean? Seems to be in great condition too. A common boot, must of fallen off of a boat?.. Or Someone must of fallen off of a boat.. Whatever. either way, it's yours now!", 
        Hint = "Find it in cheap bodies of water.", 
        FavouriteBait = "Magnet", 
        FavouriteTime = nil, 
        Price = 15, 
        XP = 20, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Ermm..?", 
            "Why only one..?", 
            "A Boot.!", 
            "A Boot...", 
            "I caught!.. a Boot..?", 
            "Erm.. A Boot?"
        }, 
        SparkleColor = Color3.fromRGB(197, 152, 80), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "None"
    }, 
    Driftwood = {
        WeightPool = {
            6, 
            6
        }, 
        Chance = 17, 
        Rarity = "Trash", 
        Resilience = 120, 
        Description = "A wood that has been washed up onto the shore by the tides. Could be great for a crafts project!", 
        Hint = "Find it washed on beaches.", 
        FavouriteBait = "Magnet", 
        FavouriteTime = nil, 
        Price = 10, 
        XP = 30, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Ermm..?", 
            "Uhmm..?", 
            "Driftwood!", 
            "Oh. Driftwood.", 
            "It's!- Oh.. Driftwood..", 
            "Driftwood.."
        }, 
        SparkleColor = Color3.fromRGB(197, 107, 62), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "None"
    }, 
    Seaweed = {
        WeightPool = {
            1, 
            3
        }, 
        Chance = 20, 
        Rarity = "Trash", 
        Resilience = 90, 
        Description = "Some lovely seaweed that caught your hook. Not as cool as a fish, but it's better than finding a lonesome boot!", 
        Hint = "Find it in saltwater or near patches of seaweed.", 
        FavouriteBait = "Magnet", 
        FavouriteTime = nil, 
        Price = 9, 
        XP = 20, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Seaweed!", 
            "Oh. Seaweed.", 
            "It's!- Oh.. Seaweed..", 
            "Seaweed.."
        }, 
        SparkleColor = Color3.fromRGB(197, 107, 62), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "None"
    }, 
    Log = {
        WeightPool = {
            45, 
            75
        }, 
        Chance = 10, 
        Rarity = "Trash", 
        Resilience = 80, 
        Description = "A large log of wood than must have drifted on to shore. Could be great for house projects!", 
        Hint = "Find it washed on beaches and in the ocean.", 
        FavouriteBait = "Magnet", 
        FavouriteTime = nil, 
        Price = 124, 
        XP = 45, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Oh.. a Log!", 
            "A.. Log?", 
            "How did I pull this up?", 
            "A Log..?"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "None"
    }, 
    Rock = {
        WeightPool = {
            150, 
            210
        }, 
        Chance = 50, 
        Rarity = "Trash", 
        Resilience = 90, 
        Description = "It's not a boulder.. It's a rock! Found in rocky bodies of water.", 
        Hint = "Found in rocky bodies of water.", 
        FavouriteBait = "Magnet", 
        FavouriteTime = nil, 
        Price = 15, 
        XP = 10, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Ermm..?", 
            "Uhmm..?", 
            "A Rock!", 
            "Oh. A Rock.", 
            "It's!- Oh.. A Rock..", 
            "A rock.."
        }, 
        SparkleColor = Color3.fromRGB(80, 80, 80), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "None"
    }, 
    ["Common Crate"] = {
        WeightPool = {
            80, 
            80
        }, 
        Chance = 17, 
        Rarity = "Uncommon", 
        Resilience = 120, 
        Description = "A moderately sized wooden crate seemingly lost from a fishing boat of some kind. The date of it's disappearance is unknown. Therefore, finders keepers?- Opening it might give you an array of fish, bait, and money!", 
        Hint = "Fallen off of a fishing boat.", 
        FavouriteBait = "Magnet", 
        FavouriteTime = nil, 
        BuyMult = 1.6, 
        Price = 80, 
        XP = 20, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Common Crate!", 
            "A Crate!", 
            "Woah! A Crate!", 
            "A Common Crate!", 
            "Who left this here?"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("crate"), 
        IsCrate = true, 
        CrateType = "All", 
        BaitContents = {
            "Shrimp", 
            "Bagel", 
            "Squid", 
            "Seaweed", 
            "Magnet", 
            "Worm", 
            "Minnow", 
            "Flakes", 
            "Insect", 
            "Maggot", 
            "Rapid Catcher"
        }, 
        FishContents = {
            "Sockeye Salmon", 
            "Trout", 
            "Carp", 
            "Minnow", 
            "Mackerel", 
            "Gudgeon", 
            "Cod", 
            "Haddock", 
            "White Bass", 
            "Sea Bass", 
            "Chub", 
            "Pumpkinseed"
        }, 
        CoinContents = {
            40, 
            120
        }, 
        From = "None"
    }, 
    ["Bloop Cosmetic Crate"] = {
        WeightPool = {
            100, 
            101
        }, 
        Chance = 100, 
        Rarity = "Secret", 
        Resilience = 100, 
        Description = "???", 
        Hint = "???", 
        FavouriteBait = "Magnet", 
        FavouriteTime = nil, 
        BuyMult = 1.6, 
        Price = 80, 
        Unpurchasable = true, 
        XP = 20, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "First! The crate is mine!!!", 
            "Finders keepers!!", 
            "Wonder what's in it?!?!??"
        }, 
        HideInBestiary = true, 
        SparkleColor = Color3.fromRGB(0, 0, 0), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        Worlds = {
            "Sea 1"
        }, 
        IsCrate = true, 
        CrateType = "CustomByName", 
        From = "None"
    }, 
    ["Carbon Crate"] = {
        WeightPool = {
            160, 
            160
        }, 
        Chance = 2, 
        Rarity = "Rare", 
        Resilience = 50, 
        Description = "A large military grade crate, lost from some sort of commercial fishing boat. The date of it's disappearance is unknown. Therefore, finders keepers?- Opening it might give you an array of fish, bait, and money!", 
        Hint = "Fallen off of a commercial fishing boat.", 
        FavouriteBait = "Magnet", 
        FavouriteTime = nil, 
        BuyMult = 3.5, 
        Price = 140, 
        XP = 50, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Carbon Crate!", 
            "A Crate!", 
            "Woah! A Crate!", 
            "A Carbon Crate!", 
            "Who left this here?", 
            "Where is this from??"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("crate"), 
        IsCrate = true, 
        CrateType = "FishOrCoins", 
        FishContents = {
            "Alligator Gar", 
            "Nurse Shark", 
            "Ribbon Eel", 
            "Eel", 
            "White Bass", 
            "Longtail Bass", 
            "Yellowfin Tuna", 
            "Bluefin Tuna", 
            "Squid", 
            "Lobster", 
            "Cod", 
            "Pike", 
            "Barracuda", 
            "Arapaima", 
            "Amberjack", 
            "Sturgeon", 
            "Longtail Bass", 
            "Squid", 
            "Mahi Mahi", 
            "Halibut", 
            "Coelacanth", 
            "Abyssacuda"
        }, 
        CoinContents = {
            130, 
            400
        }, 
        From = "None"
    }, 
    ["Fish Barrel"] = {
        WeightPool = {
            150, 
            150
        }, 
        Chance = 12, 
        Rarity = "Uncommon", 
        Resilience = 110, 
        Description = "A large wooden barrel with iron hoops. The barrel filled with a large array of ocean and freshwater fish that all seem pretty fresh. Therefore, finders keeps?- Opening it might give you an assortment of fish", 
        Hint = "Fallen off of a fishing boat.", 
        FavouriteBait = "Magnet", 
        FavouriteTime = nil, 
        Price = 80, 
        XP = 40, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Fish Barrel!", 
            "Woah! A Fish Barrel!", 
            "A Fish Barrel!", 
            "Don't mind if I do!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("crate"), 
        From = "None", 
        IsCrate = true, 
        CrateType = "Fish", 
        FishContents = {
            "Sockeye Salmon", 
            "Trout", 
            "Bream", 
            "Sturgeon", 
            "Barracuda", 
            "Carp", 
            "Pufferfish", 
            "Bluefin Tuna", 
            "Yellowfin Tuna", 
            "Sockeye Salmon", 
            "Trout", 
            "Bream", 
            "Barracuda", 
            "Carp", 
            "Pike", 
            "Alligator Gar", 
            "Cod", 
            "Minnow", 
            "Longtail Bass", 
            "Mahi Mahi", 
            "Sardine", 
            "Crab", 
            "Amberjack", 
            "Arapaima", 
            "Perch", 
            "Sea Bass", 
            "Cod", 
            "Haddock", 
            "Sweetfish", 
            "Goldfish", 
            "Halibut", 
            "Minnow", 
            "Pale Tang", 
            "Porgy", 
            "Porgy", 
            "White Bass", 
            "Walleye", 
            "Redeye Bass", 
            "Sockeye Salmon", 
            "Trout", 
            "Bream", 
            "Sturgeon", 
            "Barracuda", 
            "Carp", 
            "Pufferfish", 
            "Bluefin Tuna", 
            "Yellowfin Tuna", 
            "Sockeye Salmon", 
            "Trout", 
            "Bream", 
            "Barracuda", 
            "Carp", 
            "Pike", 
            "Alligator Gar", 
            "Cod", 
            "Minnow", 
            "Longtail Bass", 
            "Mahi Mahi", 
            "Sardine", 
            "Crab", 
            "Amberjack", 
            "Arapaima", 
            "Perch", 
            "Sea Bass", 
            "Cod", 
            "Haddock", 
            "Sweetfish", 
            "Goldfish", 
            "Halibut", 
            "Minnow", 
            "Pale Tang", 
            "Porgy", 
            "Porgy", 
            "White Bass", 
            "Walleye", 
            "Redeye Bass", 
            "Golden Smallmouth Bass"
        }
    }, 
    ["Bait Crate"] = {
        WeightPool = {
            80, 
            80
        }, 
        Chance = 15, 
        Rarity = "Uncommon", 
        Resilience = 120, 
        Description = "A wooden crate with fabric over top to preserve the bait inside. Seemingly lost from a fishing boat of some kind. The bait is still alive and fresh. Therefore, finders keepers?- Opening it might give you an array of common and rare baits!", 
        Hint = "Fallen off of a fishing boat.", 
        FavouriteBait = "Magnet", 
        FavouriteTime = nil, 
        BuyMult = 1.6, 
        Price = 75, 
        XP = 40, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Crate of Bait!", 
            "A Bait Crate!", 
            "Woah! A Crate!", 
            "A Crate!", 
            "Who left this here?", 
            "Oh, the shrimps still moving?", 
            "A Crate full of Bait!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("crate"), 
        From = "None", 
        IsCrate = true, 
        CrateType = "Bait", 
        BaitContents = {
            "Garbage", 
            "Garbage", 
            "Garbage", 
            "Shrimp", 
            "Seaweed", 
            "Bagel", 
            "Squid", 
            "Magnet", 
            "Worm", 
            "Minnow", 
            "Flakes", 
            "Insect", 
            "Fish Head", 
            "Rapid Catcher", 
            "Instant Catcher", 
            "Super Flakes", 
            "Maggot"
        }
    }, 
    ["Quality Bait Crate"] = {
        WeightPool = {
            120, 
            120
        }, 
        Chance = 8, 
        Rarity = "Rare", 
        Resilience = 120, 
        Description = "A metal bait box with a rubber seal to protect the bait inside. Seemingly lost from a fishing boat of some kind. The bait is still alive and fresh. Therefore, finders keepers?- Opening it might give you an array of baits!", 
        Hint = "Fallen off of a fishing boat.", 
        FavouriteBait = "Magnet", 
        FavouriteTime = nil, 
        BuyMult = 3.5, 
        Price = 150, 
        XP = 40, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Crate of Bait!", 
            "A Bait Crate!", 
            "Woah! A Crate!", 
            "A Crate!", 
            "Who left this here?", 
            "Oh, the shrimps still moving?", 
            "A Crate full of Bait!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("downward"), 
        From = "None", 
        IsCrate = true, 
        CrateType = "Bait", 
        BaitContents = {
            "Fish Head", 
            "Rapid Catcher", 
            "Instant Catcher", 
            "Seaweed", 
            "Seaweed", 
            "Squid", 
            "Super Flakes", 
            "Maggot", 
            "Night Shrimp", 
            "Maggot", 
            "Maggot", 
            "Weird Algae", 
            "Shark Head"
        }
    }, 
    ["Enchant Relic"] = {
        WeightPool = {
            210, 
            210
        }, 
        Chance = 0.2, 
        Rarity = "Relic", 
        Resilience = 35, 
        ProgressEfficiency = 0.8, 
        Description = "A stone filled with the blessing of a Divine Lantern Keeper.. Returning it to it's throne under the Statue of Sovereignty will result in your currently equipped rod being engulfed in its power.", 
        Hint = "???", 
        FavouriteBait = "None", 
        FavouriteTime = nil, 
        Price = 3500, 
        XP = 800, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "I feel it's power..", 
            "Woah.. A Relic??", 
            "A Relic!!", 
            "I caught a Relic!", 
            "Please don't give me Wormhole.."
        }, 
        SparkleColor = Color3.fromRGB(126, 255, 216), 
        HoldAnimation = l_fish_0:WaitForChild("small"), 
        From = "None"
    }, 
    ["Exalted Relic"] = {
        WeightPool = {
            210, 
            210
        }, 
        Chance = 0.02, 
        Rarity = "Relic", 
        Resilience = 35, 
        ProgressEfficiency = 0.8, 
        Description = "An immortal stone filled with the essence of a Divine Lantern Keeper.. Returning it to it's throne under the Statue of Sovereignty will result in your currently equipped rod being blessed with its immense power.", 
        Hint = "???", 
        FavouriteBait = "None", 
        FavouriteTime = nil, 
        Price = 12000, 
        XP = 2500, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "I feel it's power..", 
            "Woah.. An Exalted Relic??", 
            "An Exalted Relic!!", 
            "I caught an Exalted Relic!"
        }, 
        SparkleColor = Color3.fromRGB(228, 160, 255), 
        HoldAnimation = l_fish_0:WaitForChild("small"), 
        From = "None"
    }, 
    ["Song of the Deep"] = {
        WeightPool = {
            210, 
            210
        }, 
        Chance = 0.02, 
        Rarity = "Relic", 
        Resilience = 35, 
        ProgressEfficiency = 0.8, 
        Description = "An immortal stone filled with the essence of a Divine Lantern Keeper.. Returning it to it's throne under the Statue of Sovereignty will result in your currently equipped rod being blessed with its immense power.", 
        Hint = "???", 
        FavouriteBait = "None", 
        FavouriteTime = nil, 
        Price = 15000, 
        XP = 4000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "I feel it's power..", 
            "Woah.. A Song of the Deep??", 
            "A Song of the Deep!!", 
            "I caught a Song of the Deep!"
        }, 
        SparkleColor = Color3.fromRGB(228, 160, 255), 
        HoldAnimation = l_fish_0:WaitForChild("small"), 
        HideInBestiary = true, 
        From = "None"
    }, 
    ["Cosmic Relic"] = {
        WeightPool = {
            500, 
            500
        }, 
        Chance = 0, 
        Rarity = "Relic", 
        Resilience = 100, 
        Description = "A mysterious shard pulsing with the rhythm of distant galaxies. This stone is capable of channelling forgotten forces; granting unique powers drawn from the fabric of the cosmos itself.", 
        Hint = "???", 
        FavouriteBait = "None", 
        FavouriteTime = nil, 
        Price = 20000, 
        XP = 5000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "I feel it's power..", 
            "Woah.. A Cosmic Relic??", 
            "A Cosmic Relic!!", 
            "I found a Cosmic Relic!"
        }, 
        SparkleColor = Color3.fromRGB(197, 82, 255), 
        HoldAnimation = l_fish_0:WaitForChild("small"), 
        HideInBestiary = true, 
        From = "None"
    }, 
    Bone = {
        WeightPool = {
            10, 
            25
        }, 
        Chance = 100 * v2["Brine Pool"].Trash, 
        Rarity = "Trash", 
        Resilience = 80, 
        Description = "A bone from the remains of a dissolved creature.", 
        Hint = "Find it in the Brine Pool.", 
        FavouriteBait = "Magnet", 
        FavouriteTime = nil, 
        Price = 30, 
        XP = 25, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Oh.. a Bone!", 
            "A.. Bone?", 
            "How did I pull this up?", 
            "A Bone..?"
        }, 
        SparkleColor = Color3.fromRGB(255, 240, 162), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Brine Pool"
    }, 
    Gazerfish = {
        WeightPool = {
            80, 
            140
        }, 
        Chance = 100 * v2["Brine Pool"].Common, 
        Rarity = "Common", 
        Resilience = 85, 
        Description = "The Gazerfish is a fast-moving prey fish within the Brine Pool of the Desolate Deep. They have a singular large eyeball on the front of their bodies, which they can close to disguise themselves from possible predators during the night. When they are most active during the day, they swim near the surface looking for smaller creatures to feed on.", 
        Hint = "Found in the Brine Pool during the day.", 
        FavouriteBait = "Worm", 
        FavouriteTime = "Day", 
        Price = 190, 
        XP = 100, 
        Seasons = {
            "Autumn", 
            "Winter"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Ouu a Gazerfish!", 
            "Woah, a Gazerfish!", 
            "A Gazerfish!", 
            "I caught a Gazerfish!"
        }, 
        SparkleColor = Color3.fromRGB(255, 158, 73), 
        HoldAnimation = l_fish_0:WaitForChild("underweight"), 
        From = "Brine Pool"
    }, 
    ["Brine Shrimp"] = {
        WeightPool = {
            1, 
            3
        }, 
        Chance = 90 * v2["Brine Pool"].Uncommon, 
        Rarity = "Uncommon", 
        Resilience = 65, 
        Description = "The Brine Shrimp is a small crustacean abundant in the Brine Pool within the Desolate Deep. They possess the ability to adapt and survive within harsh conditions, particularly incredibly salty water like the Brine Pool. They feed on microorganisms during the day, and are at the bottom of the food chain within the Brine Pool.", 
        Hint = "Found in the Brine Pool during the day.", 
        FavouriteBait = "None", 
        FavouriteTime = "Day", 
        Price = 230, 
        XP = 130, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Ouu a Brine Shrimp!", 
            "Woah, a Brine Shrimp!", 
            "A Brine Shrimp!", 
            "I caught a Brine Shrimp!", 
            "I caught a Brine Shrimp!", 
            "Shrimplo Dimplo!"
        }, 
        SparkleColor = Color3.fromRGB(85, 255, 133), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Brine Pool"
    }, 
    ["Globe Jellyfish"] = {
        WeightPool = {
            140, 
            240
        }, 
        Chance = 60 * v2["Brine Pool"].Unusual, 
        Rarity = "Unusual", 
        Resilience = 25, 
        Description = "The Globe Jellyfish is a distant relative of the elusive Emperor Jellyfish. They are highly venomous instead of electrifying, which makes it a threat to any unfortunate creatures who come in contact with it.", 
        Hint = "Found in the saline waters of the Brine Pool.", 
        FavouriteBait = "None", 
        FavouriteTime = nil, 
        Price = 300, 
        XP = 150, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "Ouu a Globe Jellyfish!", 
            "Oh my Globe!", 
            "A Globe Jellyfish!"
        }, 
        SparkleColor = Color3.fromRGB(87, 232, 133), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Brine Pool"
    }, 
    ["Dweller Catfish"] = {
        WeightPool = {
            100, 
            160
        }, 
        Chance = 40 * v2["Brine Pool"].Rare, 
        Rarity = "Rare", 
        Resilience = 20, 
        ProgressEfficiency = 0.8, 
        Description = "The Dweller Catfish is found near the bottom of the Desolate Brine Pool. They have bright fins and dark scales throughout their whole body, which they use to camouflage from possible predators within the Brine Pool.", 
        Hint = "Found in the Brine Pool.", 
        FavouriteBait = "Weird Algae", 
        FavouriteTime = "Day", 
        Price = 440, 
        XP = 150, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Ouu a Dweller Catfish!", 
            "Dweller Catfishhhh", 
            "A Dweller Catfish!", 
            "Dweller Catfish!"
        }, 
        SparkleColor = Color3.fromRGB(97, 255, 184), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Brine Pool"
    }, 
    Eyefestation = {
        WeightPool = {
            4800, 
            6500
        }, 
        Chance = 0.05, 
        Rarity = "Legendary", 
        Resilience = 15, 
        ProgressEfficiency = 0.7, 
        Description = "The Eyefestation is an evolved breed of Bull Sharks. They possess a large amount of bright green eyes all over their face for spotting prey in the Brine Pool to feed on. The Eyefestation inhibits aggressive behaviour towards other creatures, but this is likely a territorial response. If something happens to gaze into one of the Eyefestation's many eyes, they will be put in a dazed state where they become a vulnerable target.", 
        Hint = "Found in the Brine Pool.", 
        FavouriteBait = "Fish Head", 
        FavouriteTime = "Night", 
        Price = 3000, 
        XP = 1000, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "WOAH! EYFESTATION??", 
            "Eyefestation!!", 
            "It's looking at me..", 
            "I feel dizzy!", 
            "Wait.. This looks familiar.."
        }, 
        SparkleColor = Color3.fromRGB(82, 255, 137), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        HideInBestiary = true
    }, 
    ["Brine Phantom"] = {
        WeightPool = {
            4800, 
            6500
        }, 
        Chance = 0.05, 
        Rarity = "Legendary", 
        Resilience = 15, 
        ProgressEfficiency = 0.7, 
        Description = "The Brine Phantom is a hostile predator of the Desolate Deep Brine Pool. They possess several sharp mandibles on the front of their face, which they use to subdue prey. The Brine Phantom inhibits aggressive behaviour towards other creatures that happen to come anywhere close to it.", 
        Hint = "Found in the Brine Pool.", 
        FavouriteBait = "Fish Head", 
        FavouriteTime = "Night", 
        Price = 3000, 
        XP = 1000, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "WOAH! A BRINE PHANTOM??", 
            "BRINE PHANTOM!!", 
            "AHHHHHHH!!!!"
        }, 
        SparkleColor = Color3.fromRGB(82, 255, 137), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Brine Pool"
    }, 
    ["Spectral Serpent"] = {
        WeightPool = {
            110000, 
            130000
        }, 
        Chance = 0.02, 
        FinalChanceDivisor = 3.5, 
        Rarity = "Mythical", 
        Resilience = 10, 
        ProgressEfficiency = 0.2, 
        Description = "The Spectral Serpent is an aggressive and ginormous sea serpent species located in the Brine Pool of the Desolate Deep. They possess a translucent exo-membrane covering the inside of their body, as well as 4 bioluminescent eyes. They tend to lurk deeper within the Brine Pool, where they feed on microorganisms. Despite their specific diet, they have many sharp teeth and mandibles along with their hammerhead-shaped skull, which they can use to easily fend off invasive threats. When hooked, they put up an intense fight for even the most experienced anglers.", 
        Hint = "???", 
        FavouriteBait = "Truffle Worm", 
        FavouriteTime = "Night", 
        Price = 9000, 
        XP = 3500, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A SPECTRAL SERPENT!!", 
            "IT'S HEAVY!", 
            "WHAT IS THIS THING?!", 
            "WOAH!!!", 
            "SS-S-S-SSSPEECTRAL SERPENT!!!!!"
        }, 
        SparkleColor = Color3.fromRGB(90, 255, 137), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Brine Pool"
    }, 
    Stalactite = {
        WeightPool = {
            60, 
            130
        }, 
        Chance = 100 * v2["Desolate Deep"].Trash, 
        Rarity = "Trash", 
        Resilience = 80, 
        Description = "A sharp and spiky rock formation that has fallen from the ceiling of a formidable cavern.", 
        Hint = "Find it fallen in the waters of the Desolate Deep.", 
        FavouriteBait = "Magnet", 
        FavouriteTime = nil, 
        Price = 35, 
        XP = 20, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Oh.. a Stalactite!", 
            "A.. Stalactite?", 
            "How did I pull this up?", 
            "A Stalactite..?", 
            "It poked me!", 
            "That was surprisingly heavy.."
        }, 
        SparkleColor = Color3.fromRGB(215, 210, 255), 
        HoldAnimation = l_fish_0:WaitForChild("underweight"), 
        From = "Desolate Deep"
    }, 
    ["Coral Geode"] = {
        WeightPool = {
            180, 
            180
        }, 
        Chance = 17 * v2["Desolate Deep"].Uncommon, 
        Rarity = "Uncommon", 
        Resilience = 120, 
        Description = "A geode filled with deep dark items and fish. Possibly has been untouched for years!- Like a coral reef Christmas!", 
        Hint = "Found in the Desolate Deep", 
        FavouriteBait = "Magnet", 
        FavouriteTime = nil, 
        BuyMult = 3, 
        Price = 200, 
        XP = 20, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Ooo, shiny!", 
            "A rock...?!", 
            "Woah! Glowy thing!", 
            "A Geode!", 
            "What's this thing?"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("crate"), 
        IsCrate = true, 
        CrateType = "All", 
        BaitContents = {
            "Coral", 
            "Coral", 
            "Coral", 
            "Coral", 
            "Coral", 
            "Maggot", 
            "Maggot", 
            "Minnow", 
            "Truffle Worm", 
            "Deep Coral", 
            "Deep Coral", 
            "Deep Coral", 
            "Night Shrimp", 
            "Rapid Catcher", 
            "Instant Catcher", 
            "Super Flakes", 
            "Night Shrimp", 
            "Rapid Catcher", 
            "Super Flakes", 
            "Truffle Worm", 
            "Truffle Worm"
        }, 
        FishContents = {
            "Slate Tuna", 
            "Banditfish", 
            "Globe Jellyfish", 
            "Gazerfish", 
            "Phantom Ray", 
            "Stalactite", 
            "Stalactite", 
            "Cockatoo Squid", 
            "Banditfish", 
            "Brine Shrimp", 
            "Brine Shrimp"
        }, 
        CoinContents = {
            150, 
            500
        }, 
        From = "Desolate Deep"
    }, 
    ["Horseshoe Crab"] = {
        WeightPool = {
            40, 
            90
        }, 
        Chance = 90, 
        Rarity = "Common", 
        Resilience = 70, 
        Description = "A hard shelled crab, armoured to protect itself from predators. Their gills have folds of membranes that look like the leaves of a book", 
        Hint = "Caught in the Desolate Deep using a crab cage.", 
        FavouriteBait = "None", 
        FavouriteTime = nil, 
        Price = 25, 
        XP = 60, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "Clear", 
            "Rain"
        }, 
        Quips = {
            "A Horseshoe Crab!", 
            "Woah! A Horseshoe Crab", 
            "That thing is scary..", 
            "Ouuu! A Horseshoe Crab!"
        }, 
        SparkleColor = Color3.fromRGB(126, 103, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Desolate Deep"
    }, 
    ["Slate Tuna"] = {
        WeightPool = {
            300, 
            600
        }, 
        Chance = 90 * v2["Desolate Deep"].Common, 
        Rarity = "Common", 
        Resilience = 35, 
        Description = "With their Stone Exocranium on the front of their body, the invasive Slate Tuna is able to hunt and kill pray at alarmingly high rates. However, this stone noggin of theirs also ends up in slower swim speeds for this predator, resulting with this fish being lower down on the food chain in this deep chasm.", 
        Hint = "Found commonly in the Desolate Deep.", 
        FavouriteBait = "Super Flakes", 
        FavouriteTime = nil, 
        Price = 70, 
        XP = 25, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "Clear", 
            "Rain"
        }, 
        Quips = {
            "I caught a Slate Tuna!", 
            "Ouu! A Slate Tuna!", 
            "A Slate Tuna!", 
            "Slate Tuah!", 
            "Oh my slate!", 
            "Slate on that thang!"
        }, 
        SparkleColor = Color3.fromRGB(128, 113, 173), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Desolate Deep"
    }, 
    ["Phantom Ray"] = {
        WeightPool = {
            40, 
            60
        }, 
        Chance = 90 * v2["Desolate Deep"].Uncommon, 
        Rarity = "Uncommon", 
        Resilience = 45, 
        Description = "The Phantom Ray is a menacing yet beautiful species of ray, resembling the shape of an anchor with bioluminescent engravings throughout its body, as well as a translucent fin that they use to move around. They typically like to feed on microorganisms during the night, and spend most of the day sitting underneath ledges or large vegetation.", 
        Hint = "Found in the Desolate Deep.", 
        FavouriteBait = "Weird Algae", 
        FavouriteTime = "Night", 
        Price = 140, 
        XP = 60, 
        Seasons = {
            "Summer", 
            "Autumn"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Phantom Ray!", 
            "Phantuah!", 
            "Ouu! A Phantom Ray!", 
            "It looks like an anchor!"
        }, 
        SparkleColor = Color3.fromRGB(152, 148, 255), 
        HoldAnimation = l_fish_0:WaitForChild("heavybasic"), 
        From = "Desolate Deep"
    }, 
    ["Rockstar Hermit Crab"] = {
        WeightPool = {
            4, 
            12
        }, 
        Chance = 25 * v2["Desolate Deep"].Unusual, 
        Rarity = "Unusual", 
        Resilience = 100, 
        Description = "The Rockstar Hermit Crab is a unique evolutionary species, originating from the simple hermit crab. They possess antennae resembling two lightning-bolts on either side of their head, which is where their name comes from. Caught with rods or crab cages in the Desolate Deep.", 
        Hint = "Caught in the Desolate Deep using a crab cage.", 
        FavouriteBait = "None", 
        FavouriteTime = nil, 
        Price = 65, 
        XP = 75, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A Rockstar Hermit Crab!", 
            "Woah! A Rockstar Hermit Crab", 
            "Hey now, you're a rockstar.", 
            "Ou! A Rockstar Hermit Crab!"
        }, 
        SparkleColor = Color3.fromRGB(126, 103, 255), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Desolate Deep"
    }, 
    ["Cockatoo Squid"] = {
        WeightPool = {
            4, 
            20
        }, 
        Chance = 45 * v2["Desolate Deep"].Unusual, 
        Rarity = "Unusual", 
        Resilience = 35, 
        Description = "The Cockatoo Squid is an intriguing species of squid. Their bodies are almost entirely translucent and bioluminescent, which they can use to hide from possible predators. They typically leave their hiding spots at night in search of microorganisms to feed on. [Contribution by @Johnny_D3pp]", 
        Hint = "Found in the Desolate Deep during the night.", 
        FavouriteBait = "Minnow", 
        FavouriteTime = "Night", 
        Price = 200, 
        XP = 65, 
        Seasons = {
            "Summer", 
            "Winter"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Cockatoo Squid!", 
            "Ouu! A Cockatoo Squid!", 
            "So cool!"
        }, 
        SparkleColor = Color3.fromRGB(185, 186, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Desolate Deep"
    }, 
    Banditfish = {
        WeightPool = {
            150, 
            200
        }, 
        Chance = 75 * v2["Desolate Deep"].Rare, 
        Rarity = "Rare", 
        Resilience = 30, 
        Description = "Banditfish are insanely fast hunters and swimmers, hence their name. They have a single rudder-like fin at the back of their bodies, which they move in a swaying motion to glide throughout the waters. Despite being remarkably good at hunting smaller prey, they are still no match for the greater creatures within the Desolate Deep.", 
        Hint = "Caught in the Desolate Deep", 
        FavouriteBait = "Insect", 
        FavouriteTime = nil, 
        Price = 250, 
        XP = 100, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "I caught a Bandit Fish!", 
            "It's a Bandit Fish!", 
            "Woahhh, A Bandit Fish", 
            "It pickpocketed me! >:("
        }, 
        SparkleColor = Color3.fromRGB(198, 157, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Desolate Deep"
    }, 
    ["Midnight Axolotl"] = {
        WeightPool = {
            10, 
            30
        }, 
        Chance = 0.15, 
        Rarity = "Legendary", 
        Resilience = 50, 
        ProgressEfficiency = 0.3, 
        Description = "The Midnight Axolotl is a variant of Axolotl that has adapted to the Desolate Deep. Midnight Axolotls are known for their adorable looks and giant size compared to regular Axolotls. They are most commonly seen at night while other fish sleep. It has been theorized that the glowing gills on the sides of their head have evolved, allowing them to use echolocation to see predators in even the darkest waters. Despite being on the lower end of the food chain, they use their agility and abilities to hide within the Desolate Deep. It is currently unknown how many Midnight Axolotls are residing there", 
        Hint = "Hangs out near the deepest parts of the Desolate Deep during the Night.", 
        FavouriteBait = "Insect", 
        FavouriteTime = "Night", 
        Price = 1100, 
        XP = 550, 
        Seasons = {
            "Spring", 
            "Autumn"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "This an Axolotl..", 
            "Midnight Axolotl!", 
            "It's so cute!", 
            "That's a big axolotl!"
        }, 
        SparkleColor = Color3.fromRGB(255, 141, 42), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        ViewportSizeOffset = 2, 
        From = "Desolate Deep"
    }, 
    ["Barbed Shark"] = {
        WeightPool = {
            7000, 
            9500
        }, 
        Chance = 0.08, 
        Rarity = "Legendary", 
        Resilience = 10, 
        ProgressEfficiency = 0.4, 
        Description = "The Barbed Shark, a fierce apex predator within the Desolate Deep, is not a fish to be messed with. When they bite on to a hook, they put up a fierce fight, but give a great reward due to the valuable materials that make up their many scales.", 
        Hint = "Can be found within the Desolate Deep", 
        FavouriteBait = "Fish Head", 
        FavouriteTime = nil, 
        Price = 8300, 
        XP = 4000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "FINALLY!", 
            "FINALLY! I CAUGHT A BARBED SHARK!!", 
            "ALKSJDAHASBDJH", 
            "holy barb", 
            "BUHBUHBUHBARBED SHARK?!", 
            "olm my BARB!!!", 
            "YES YES YES!! BARBED SHARK!", 
            "AHHHHHHHHHHHHHHHHHHH"
        }, 
        SparkleColor = Color3.fromRGB(114, 58, 255), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Desolate Deep"
    }, 
    ["Emperor Jellyfish"] = {
        WeightPool = {
            5000, 
            8000
        }, 
        Chance = 0.03, 
        Rarity = "Mythical", 
        Resilience = 20, 
        ProgressEfficiency = 0.25, 
        Description = "The Emperor Jellyfish is a very unique and incredibly rare breed of jellyfish, only found in the gloomy waters of the Desolate Deep. They carry around a stalactite in which they use as an offense mechanism against their prey. They are extremely electrifying to the touch, which makes them a menacing catch for most anglers.", 
        Hint = "???", 
        FavouriteBait = "Magnet", 
        FavouriteTime = nil, 
        Price = 6000, 
        XP = 4500, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "WOAH! AN EMPEROR JELLYFISH!!", 
            "NO WAY!!", 
            "I CAUGHT THE EMPEROR JELLYFISH!!", 
            "IT STINGS!"
        }, 
        SparkleColor = Color3.fromRGB(143, 139, 255), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Desolate Deep"
    }, 
    ["Sea Mine"] = {
        WeightPool = {
            2000, 
            3250
        }, 
        Chance = 1, 
        Rarity = "Mythical", 
        Resilience = 200, 
        Description = "An inactive naval sea mine that has somehow made its way down here. Caught in crab cages in the Desolate Deep.", 
        Hint = "Caught with crab cages in the Desolate Deep.", 
        FavouriteBait = "None", 
        FavouriteTime = nil, 
        Price = 3000, 
        XP = 1000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Sea Mine?!", 
            "How did this get down here?", 
            "I hope it doesn't explode!", 
            "Why do I hear beeping..?"
        }, 
        SparkleColor = Color3.fromRGB(103, 103, 255), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Desolate Deep"
    }, 
    ["Pale Tang"] = {
        WeightPool = {
            3, 
            15
        }, 
        Chance = 55, 
        Rarity = "Uncommon", 
        Resilience = 35, 
        Description = "The Pale Tang is a relatively common catch within Keepers Altar. Very similar to other Tangs such as the Red Tang, just pale!- No one is sure of the Pale Tangs origin, and how it got accustomed to the Keepers Altar.", 
        Hint = "Found in Keepers Altar.", 
        FavouriteBait = "Bagel", 
        FavouriteTime = nil, 
        Price = 100, 
        XP = 90, 
        Seasons = {
            "Spring", 
            "Summer"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Ouu a Pale Tang!", 
            "Woah, a Pale Tang!", 
            "A Pale Tang!", 
            "I caught a Pale Tang!", 
            "I caught a Pale Tang!", 
            "Found her!.. But albino!"
        }, 
        SparkleColor = Color3.fromRGB(255, 187, 187), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Keepers Altar"
    }, 
    Bluefish = {
        WeightPool = {
            4, 
            9
        }, 
        Chance = 40, 
        Rarity = "Unusual", 
        Resilience = 34, 
        Description = "Bluefish are found inside Keepers Altar. They can inhabit some of the powerful keepers power that is present in Keepers Altars water. They are only awake during the day, as the power of the Altar is too much for them to handle during the night.", 
        Hint = "Swims quietly in Keepers Altar during the day.", 
        FavouriteBait = "Flakes", 
        FavouriteTime = "Day", 
        Price = 65, 
        XP = 75, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "Woah, a Bluefish!", 
            "A Bluefish!", 
            "I caught a Bluefish!", 
            "Aw! I caught a Bluefish!"
        }, 
        SparkleColor = Color3.fromRGB(60, 63, 255), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Keepers Altar"
    }, 
    Lapisjack = {
        WeightPool = {
            200, 
            400
        }, 
        Chance = 55, 
        Rarity = "Rare", 
        Resilience = 20, 
        Description = "The Lapisjack is a strong, fast-swimming fish known for their vigorous fights and robust body. Mostly active in spring, and only found in Keepers Altar. They are capable of sustaining their conscious when the Altar is active.", 
        Hint = "Found in Keepers Altar.", 
        FavouriteBait = "Minnow", 
        FavouriteTime = "Day", 
        Price = 115, 
        XP = 80, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "Clear", 
            "Rain"
        }, 
        Quips = {
            "A Lapisjack!", 
            "I caught an Lapisjack!", 
            "Woah, a Lapisjack!", 
            "Lumberjack- I mean Lapisjack!"
        }, 
        SparkleColor = Color3.fromRGB(219, 219, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Keepers Altar"
    }, 
    ["Keepers Guardian"] = {
        WeightPool = {
            200, 
            400
        }, 
        Chance = 15, 
        Rarity = "Rare", 
        Resilience = 25, 
        Description = "Whilst it is named the 'Keepers Guardian', they are actually friendly creatures! The Guardian can sense peoples intentions, and will only become violent when they notice someone with a harmful intention to it or the Keepers Altar.", 
        Hint = "Found in Keepers Altar.", 
        FavouriteBait = "Worm", 
        FavouriteTime = nil, 
        Price = 250, 
        XP = 120, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A Keepers Guardian!", 
            "I caught a Keepers Guardian!", 
            "Woah, a Keepers Guardian!", 
            "What the?! A Keepers Guardian?!"
        }, 
        SparkleColor = Color3.fromRGB(56, 53, 134), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Keepers Altar"
    }, 
    ["Umbral Shark"] = {
        WeightPool = {
            1050, 
            1550
        }, 
        Chance = 0.01, 
        Rarity = "Legendary", 
        Resilience = 10, 
        ProgressEfficiency = 0.9, 
        Description = "Umbral Sharks are a nocturnal bottom feeder, spending most of their time on the floor or in small crevices. They are gentle and slow-moving until provoked. Once angered, they can be extremely strong swimmers and often will break fishing lines. They are extremely rare, as they don't often come high enough in the water for anyone to see.", 
        Hint = "Caught at night in Keepers Altar.", 
        FavouriteBait = "Fish Head", 
        FavouriteTime = "Night", 
        Price = 1000, 
        XP = 500, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "An Umbral Shark!", 
            "Woah! An Umbral Shark!", 
            "I Caught an Umbral Shark!"
        }, 
        SparkleColor = Color3.fromRGB(151, 110, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Keepers Altar"
    }, 
    ["Red Snapper"] = {
        WeightPool = {
            10, 
            70
        }, 
        Chance = 75, 
        Rarity = "Common", 
        Resilience = 75, 
        Description = "The Red Snapper is a common salt water fish that can be commonly found all around Moosewoods oceans. They are a very noticeable fish with their obvious red and light red tones.", 
        Hint = "Found in saltwater near Moosewood Docks. Prefers the Summer and Autumn.", 
        FavouriteBait = "None", 
        FavouriteTime = nil, 
        Price = 70, 
        XP = 80, 
        Seasons = {
            "Summer", 
            "Autumn"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Red Snapper!", 
            "Woah! I caught a Red Snapper!", 
            "I caught a Red Snapper!", 
            "Red Snapper!!!", 
            "Oh Snap!"
        }, 
        SparkleColor = Color3.fromRGB(255, 74, 74), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Moosewood"
    }, 
    Anchovy = {
        WeightPool = {
            1, 
            3
        }, 
        Chance = 100, 
        Rarity = "Common", 
        Resilience = 100, 
        Description = "Anchovies are extremely small and slender fish, with a silvery sheen. They are known for their schooling behaviour and are a common catch near Moosewood.", 
        Hint = "Caught in all saltwater\226\128\153s of Moosewood", 
        FavouriteBait = "None", 
        FavouriteTime = "Day", 
        Price = 30, 
        XP = 20, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "I caught an Anchovy..", 
            "An Anchovy!", 
            "It really put up a battle!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Moosewood"
    }, 
    ["Largemouth Bass"] = {
        WeightPool = {
            10, 
            45
        }, 
        Chance = 75, 
        Rarity = "Common", 
        Resilience = 80, 
        Description = "The Largemouth Bass is a common freshwater fish found in Moosewood known for its large mouth and aggressive feeding behaviour. It's found in various habitats, such as lakes, ponds, and rivers, where the water is warm and there's plenty of vegetation. Largemouth Bass are also known for their camouflage, with a greenish color on their backs that helps them blend in with their surroundings.", 
        Hint = "Found in Moosewoods freshwater. Seems to prefer worms and other small baits.", 
        FavouriteBait = "Worm", 
        FavouriteTime = nil, 
        Price = 85, 
        XP = 20, 
        Seasons = {
            "Spring", 
            "Summer"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "Now, where's the snare?", 
            "Woah!", 
            "Awesome!", 
            "A Largemouth Bass!", 
            "Ou! A Bass!"
        }, 
        SparkleColor = Color3.fromRGB(172, 255, 134), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Moosewood"
    }, 
    Trout = {
        WeightPool = {
            9, 
            50
        }, 
        Chance = 85, 
        Rarity = "Common", 
        Resilience = 80, 
        Description = "The Trout is a common freshwater fish found in all waters of Moosewood & Roslit. Trouts are well recognized for their interesting dotted patterns and pinkish-red ribbon across the sides of their soft bodies. Trouts also interestingly have two hearts to help efficiently pump blood throughout their body.", 
        Hint = "Can be found in plenty of common waters in Moosewood & Roslit.", 
        FavouriteBait = "Insect", 
        FavouriteTime = nil, 
        Price = 65, 
        XP = 40, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "I thought theres a rainbow?", 
            "Woah, a Trout!", 
            "Woah!", 
            "A Trout!", 
            "I caught a Trout!"
        }, 
        SparkleColor = Color3.fromRGB(99, 168, 94), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Moosewood"
    }, 
    Bream = {
        WeightPool = {
            11, 
            27
        }, 
        Chance = 75, 
        Rarity = "Common", 
        Resilience = 80, 
        Description = "Breams are school fish with deep bodies, flat sides and a small head. The bream loves worms and is most commonly found in Moosewoods freshwater.", 
        Hint = "Found in freshwaters, and along ocean beaches. Prefers day.", 
        FavouriteBait = "Worm", 
        FavouriteTime = "Day", 
        Price = 60, 
        XP = 30, 
        Seasons = {
            "Spring", 
            "Winter"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A Bream!", 
            "Bream!", 
            "I caught a Bream!", 
            "Woah, a Bream!", 
            "Hello, Bream!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 193), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Moosewood"
    }, 
    ["Sockeye Salmon"] = {
        WeightPool = {
            20, 
            70
        }, 
        Chance = 90, 
        Rarity = "Common", 
        Resilience = 90, 
        ProgressEfficiency = 1.2, 
        Description = "The Sockeye Salmon are a very common type of salmon found near Moosewood, known for their vibrant red and green colours and interesting habits when laying eggs. They are very common during colder seasons such as Autumn, as that is the time most Sockeye Salmon lay their eggs.", 
        Hint = "Resides in oceans, some freshwaters along Moosewood. Prefers shrimp.", 
        FavouriteBait = "Bagel", 
        FavouriteTime = nil, 
        Price = 45, 
        XP = 25, 
        Seasons = {
            "Autumn", 
            "Winter"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "Salmoff!", 
            "Woah!", 
            "Awesome!", 
            "A Sockeye Salmon!", 
            "Woah, A Sockeye Salmon!", 
            "A Salmon!"
        }, 
        SparkleColor = Color3.fromRGB(255, 160, 160), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Moosewood"
    }, 
    Carp = {
        WeightPool = {
            10, 
            50
        }, 
        Chance = 60, 
        Rarity = "Uncommon", 
        Resilience = 70, 
        Description = "Carps are freshwater fish that are known for their whisker-like barbels around their mouth. Carps can adapt to plenty of different environments, as they can thrive in various water conditions. Due to their resilience, they are a common choice for stocking man-made ponds and lakes! They are also pretty cute, in my opinion.", 
        Hint = "Found in the back of Moosewood Pond.", 
        FavouriteBait = "Bagel", 
        FavouriteTime = nil, 
        Price = 110, 
        XP = 80, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Is it magic?", 
            "Woah, a Carp!", 
            "It's a Carp!", 
            "Woahh! This is bigger than I thought.", 
            "Carp-tastic!", 
            "!!!", 
            "Woah!", 
            "A Carp! My skill are sharp!"
        }, 
        SparkleColor = Color3.fromRGB(255, 186, 125), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Moosewood"
    }, 
    ["Yellowfin Tuna"] = {
        WeightPool = {
            450, 
            1360
        }, 
        Chance = 65, 
        Rarity = "Uncommon", 
        Resilience = 60, 
        Description = "The Yellowfin Tuna is a species of tuna known for their speed and agility. The Yellowfin Tuna can be found best near Moosewoods waters, but you can find them in most open saltwater due to them being highly migratory. They are less endangered than Bluefin Tuna but still face threats.", 
        Hint = "Found in open saltwater near moosewood.", 
        FavouriteBait = "None", 
        FavouriteTime = nil, 
        Price = 120, 
        XP = 80, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Yellowfin Tuna!", 
            "I caught a Yellowfin Tuna!", 
            "Woah, a Yellowfin Tuna!", 
            "Tunaaaaa!", 
            "What's up, Tuna!"
        }, 
        SparkleColor = Color3.fromRGB(255, 235, 135), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Moosewood"
    }, 
    Goldfish = {
        WeightPool = {
            2, 
            7
        }, 
        Chance = 55, 
        Rarity = "Uncommon", 
        Resilience = 90, 
        Description = "Goldfish are found in Moosewoods pond and are best awake during the nice summer days. Even though they look weak, goldfish are highly tolerant of turbid waters, temperature fluctuations, and low levels of dissolved oxygen.", 
        Hint = "Lives in calm ponds. Very easy to catch with bagels.", 
        FavouriteBait = "Flakes", 
        FavouriteTime = "Day", 
        Price = 65, 
        XP = 75, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "Doesn't look very gold..", 
            "Woah, a Goldfish!", 
            "A goldfish!", 
            "I caught a Goldfish!", 
            "Aw! I caught a Goldfish!"
        }, 
        SparkleColor = Color3.fromRGB(255, 184, 69), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Moosewood"
    }, 
    Snook = {
        WeightPool = {
            30, 
            70
        }, 
        Chance = 45, 
        Rarity = "Unusual", 
        Resilience = 85, 
        Description = "The Common Snook is a cute salt water swimmer found commonly near Moosewood Docks. They are easy noticeable due to their thin black stripe across their body, and easily catchable due to schools during spawning season in spring.", 
        Hint = "Can be found close to ocean docks of Moosewood.", 
        FavouriteBait = "Shrimp", 
        FavouriteTime = nil, 
        Price = 110, 
        XP = 45, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "Clear", 
            "Foggy"
        }, 
        Quips = {
            "I caught a Snook!", 
            "It's a Snook!", 
            "A Snook!", 
            "Look at this Snook!"
        }, 
        SparkleColor = Color3.fromRGB(255, 233, 125), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Moosewood"
    }, 
    Flounder = {
        WeightPool = {
            15, 
            55
        }, 
        Chance = 40, 
        Rarity = "Unusual", 
        Resilience = 80, 
        Description = "Flounders are a demersal flatfish- meaning they feed at the bottom of the ocean, and has a flat body to blend in with the seafloor. Both of a flounders eyes are on one side, pointing upwards to the sky. They are easy to find in dark areas with a lot of surface or at night near Moosewood Docks.", 
        Hint = "Lays flat at the bottom of the ocean. Prefers the night.", 
        FavouriteBait = "Squid", 
        FavouriteTime = "Night", 
        Price = 120, 
        XP = 80, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Windy"
        }, 
        Quips = {
            "A Flounder!", 
            "A Flatfish!", 
            "I caught a Flounder!"
        }, 
        SparkleColor = Color3.fromRGB(86, 68, 57), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Moosewood"
    }, 
    Eel = {
        WeightPool = {
            8, 
            45
        }, 
        Chance = 30, 
        Rarity = "Unusual", 
        Resilience = 65, 
        Description = "Eels are a long snake-like, ray-finned fish that is primarily nocturnal. They have a keen sense of smell and can be harmful to humans due to their strong jaws with sharp teeth. Some eels also contain toxins that will destroy red blood cells. Eels move in an interesting way due to them not having pelvic or pectoral fins. To swim, eels generate waves that travel the length of their body, animating them similar to snakes.", 
        Hint = "Only comes out at night. Can be found in all kinds of habitats near Moosewood.", 
        FavouriteBait = "None", 
        FavouriteTime = "Night", 
        Price = 130, 
        XP = 90, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Is it a snake?", 
            "An Eel!", 
            "I think some slime got on me.", 
            "Woah! An Eel!", 
            "H-eel-lo!", 
            "An Eel! Things just got REAL!"
        }, 
        SparkleColor = Color3.fromRGB(255, 233, 226), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Moosewood"
    }, 
    Pike = {
        WeightPool = {
            12, 
            35
        }, 
        Chance = 45, 
        Rarity = "Unusual", 
        Resilience = 55, 
        Description = "Pikes are a freshwater predator known for its elongated body, sharp teeth, and aggressive hunting behaviour. It's a voracious carnivore that preys on smaller fish, frogs, and even small mammals near the water's edge. Pikes have a unique ability to ambush their prey by remaining almost motionless in the water, then striking with incredible speed to catch their meal.", 
        Hint = "Found in Moosewoods freshwater. Seems to prefer insect baits. Very vicious.", 
        FavouriteBait = "Insect", 
        FavouriteTime = nil, 
        Price = 230, 
        XP = 90, 
        Seasons = {
            "Autumn", 
            "Spring"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A Pike!", 
            "I caught a Pike!", 
            "Woah! a Pike!", 
            "PIKE!!!", 
            "I'd prefer a lance.", 
            "A Pike?!", 
            "That's a big Pike!"
        }, 
        SparkleColor = Color3.fromRGB(93, 140, 109), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Moosewood"
    }, 
    ["Whiptail Catfish"] = {
        WeightPool = {
            10, 
            30
        }, 
        Chance = 0.05, 
        Rarity = "Legendary", 
        Resilience = 40, 
        Description = "The Whiptail Catfish is a small herbivorous fish that have a long body which resembles a whiptail. They tend to be shy and often hide under plants and rocks during the day, but are most active at night.", 
        Hint = "Caught in Moosewood Pond during the night.", 
        FavouriteBait = "Seaweed", 
        FavouriteTime = "Night", 
        Price = 600, 
        XP = 200, 
        Seasons = {
            "Spring", 
            "Autumn"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A CATFISH!", 
            "A Whiptail Catfish!", 
            "Watch me Whip!", 
            "Watch me Nae Nae!", 
            "Holy Whip-a-moly!"
        }, 
        SparkleColor = Color3.fromRGB(255, 175, 117), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Moosewood"
    }, 
    ["Whisker Bill"] = {
        WeightPool = {
            350, 
            1000
        }, 
        Chance = 0.01, 
        Rarity = "Mythical", 
        Resilience = 25, 
        ProgressEfficiency = 0.8, 
        Description = "The Whisker Bill is a mythical creature that was a popular staple of Moosewood Island before they were thought to be extinct. Whisker Bills are extremely strong, however are awkward swimmers due to their peculiar archetype.", 
        Hint = "???", 
        FavouriteBait = "Truffle Worm", 
        FavouriteTime = nil, 
        Price = 3100, 
        XP = 1000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "The mythical Whisker Bill..", 
            "Woah.. A Whisker Bill..", 
            "I caught.. A Whisker Bill..", 
            "Woah...", 
            "I thought they were extinct!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Moosewood"
    }, 
    ["Treble Bass"] = {
        WeightPool = {
            10, 
            45
        }, 
        Chance = 0.005, 
        FinalChanceDivisor = 5, 
        Rarity = "Exotic", 
        Resilience = 20, 
        ProgressEfficiency = 0.5, 
        Description = "The Treble Bass is an interesting sub-species of bass that can produce piano-like sounds with its many gills. Legend has it you can tune a fish, but not a treble bass. Or can you?", 
        Hint = "???", 
        FavouriteBait = "Magnet", 
        FavouriteTime = nil, 
        Price = 4000, 
        XP = 1200, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "The Treble Bass..", 
            "Woah.. A Treble Bass..", 
            "I caught.. Mayonnaise...", 
            "Woah...", 
            "Treble Tuah!"
        }, 
        SparkleColor = Color3.fromRGB(195, 195, 195), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Moosewood"
    }, 
    ["Fungal Cluster"] = {
        WeightPool = {
            9, 
            9
        }, 
        Chance = 22, 
        Rarity = "Trash", 
        Resilience = 120, 
        Description = "Offspring of the Giant Fungal Trees of Mushgrove Swamp. These mushrooms produce heavy spores which pollute the surrounding area and sky; giving everything an uncomfortable and green feel.", 
        Hint = "Find it in Mushgrove Swamp. Gives off spores.", 
        FavouriteBait = "Magnet", 
        FavouriteTime = nil, 
        Price = 9, 
        XP = 20, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Ermm..?", 
            "Hmm..?"
        }, 
        SparkleColor = Color3.fromRGB(255, 0, 0), 
        HoldAnimation = l_fish_0:WaitForChild("underweight"), 
        From = "Mushgrove"
    }, 
    ["White Perch"] = {
        WeightPool = {
            2, 
            12
        }, 
        Chance = 80, 
        Rarity = "Common", 
        Resilience = 70, 
        Description = "The Perch is a common freshwater fish that is best found in Mushgrove Swamp; Unlike the classic Perch, the White Perch has no noticeable stripes.", 
        Hint = "Found in Mushgrove.", 
        FavouriteBait = "Worm", 
        FavouriteTime = nil, 
        Price = 80, 
        XP = 80, 
        Seasons = {
            "Spring", 
            "Autumn"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A White Perch!", 
            "I caught a White Perch!", 
            "Woah, a White Perch!", 
            "Aww! A White Perch!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Mushgrove"
    }, 
    ["Swamp Bass"] = {
        WeightPool = {
            20, 
            60
        }, 
        Chance = 80, 
        Rarity = "Common", 
        Resilience = 80, 
        Description = "The Swamp Bass is species of Bass that can only be found in Swamp water. They are extremely similar to Smallmouth Bass besides their special adaptation; They have chameleon-like camouflage. This allows them to nearly entirely avoid being a prey of larger fish and Alligators.", 
        Hint = "Can be found in Mushgrove Swamp.", 
        FavouriteBait = "Worm", 
        FavouriteTime = nil, 
        Price = 60, 
        XP = 50, 
        Seasons = {
            "Spring", 
            "Summer"
        }, 
        Weather = {
            "Windy"
        }, 
        Quips = {
            "A Swamp Bass!", 
            "I caught a Swamp Bass!", 
            "Woah! A Swamp Bass!", 
            "Ouu! A Swamp Bass!"
        }, 
        SparkleColor = Color3.fromRGB(137, 255, 116), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Mushgrove"
    }, 
    Bowfin = {
        WeightPool = {
            30, 
            60
        }, 
        Chance = 60, 
        Rarity = "Uncommon", 
        Resilience = 60, 
        Description = "The Mudfish, also known as Bowfin, is a resilient, ancient fish species known for its ability to survive in harsh, low-oxygen environments like swamps and muddy waters. They can be found all over Mushgrove Swamp, especially lurking in dense vegetation and during the night.", 
        Hint = "Caught in Mushgrove Swamp at night.", 
        FavouriteBait = "Worm", 
        FavouriteTime = "Night", 
        Price = 100, 
        XP = 50, 
        Seasons = {
            "Spring", 
            "Summer"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A Mudfish!", 
            "Ouu, A Mudfish!", 
            "I caught a Mudfish!"
        }, 
        SparkleColor = Color3.fromRGB(189, 125, 95), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Mushgrove"
    }, 
    ["Grey Carp"] = {
        WeightPool = {
            20, 
            70
        }, 
        Chance = 55, 
        Rarity = "Uncommon", 
        Resilience = 60, 
        Description = "The Grey Carp is a sturdy freshwater fish known for its strength and adaptability. They can be found in Mushgrove Swamp feeding on plants and small insects. The Grey Carp is extremely strong, and is a tough battle to catch.", 
        Hint = "Found in Mushgrove Swamp near the fallen watch tower.", 
        FavouriteBait = "Seaweed", 
        FavouriteTime = nil, 
        Price = 120, 
        XP = 75, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Is it grey magic?", 
            "Woah, a Grey Carp!", 
            "It's a Carp!", 
            "Woahh! A Grey Carp!!", 
            "Carp-tastic!", 
            "!!!", 
            "Woah! Grey Carp!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Mushgrove"
    }, 
    ["Swamp Scallop"] = {
        WeightPool = {
            6, 
            14
        }, 
        Chance = 40, 
        Rarity = "Unusual", 
        Resilience = 90, 
        Description = "Swamp Scallops are a special kind of Scallops with a rich umami taste. They formed from an invasive growth of the Scallop population in Mushgrove Swamp.", 
        Hint = "Can be caught while cage fishing in mushgrove.", 
        FavouriteBait = "None", 
        FavouriteTime = nil, 
        Price = 150, 
        XP = 40, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Swamp Scallop!", 
            "Woah! A Swamp Scallop", 
            "Awesome!", 
            "A Swamp Scallop!", 
            "Ou! A Swamp Scallop!"
        }, 
        SparkleColor = Color3.fromRGB(142, 185, 78), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Mushgrove"
    }, 
    ["Mushgrove Crab"] = {
        WeightPool = {
            6, 
            14
        }, 
        Chance = 14, 
        Rarity = "Rare", 
        Resilience = 90, 
        Description = "The Mushgrove Crab is a rare species of crab. They have fully adapted to the Mushgrove Swamp and commonly eat off of the massive fungal life that has over taken the swamp.", 
        Hint = "Can be caught while cage fishing in mushgrove.", 
        FavouriteBait = "None", 
        FavouriteTime = nil, 
        Price = 330, 
        XP = 80, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Crusty Mushgrove Crab!", 
            "Woah! A Mushgrove Crab", 
            "Awesome!", 
            "A Mushgrove Crab!", 
            "Ou! A Mushgrove Crab!"
        }, 
        SparkleColor = Color3.fromRGB(185, 56, 52), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Mushgrove"
    }, 
    ["Marsh Gar"] = {
        WeightPool = {
            170, 
            380
        }, 
        Chance = 30, 
        Rarity = "Rare", 
        Resilience = 30, 
        Description = "The Marsh Gar is a large vicious marsh water fish that can be found in Mushgrove Swamp. March Gar are extremely strong hunters, using their whiskers to sense prey in foggy waters.", 
        Hint = "Found under the bridges of Mushgrove Swamp.", 
        FavouriteBait = "Fish Head", 
        FavouriteTime = nil, 
        Price = 280, 
        XP = 100, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A Gar!", 
            "I caught a Marsh Gar!", 
            "Woah! A Marsh Gar!", 
            "Oh my Gar!"
        }, 
        SparkleColor = Color3.fromRGB(180, 36, 36), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Mushgrove"
    }, 
    Catfish = {
        WeightPool = {
            50, 
            150
        }, 
        Chance = 20, 
        Rarity = "Rare", 
        Resilience = 30, 
        Description = "The Catfish is a large, whiskered bottom-dweller with a sturdy build and smooth, scale-less skin. Known for its whisker-like barbels, which help it sense food in murky waters of Mushgrove Swamp, the catfish is a resilient and adaptable fish.", 
        Hint = "Can be found in Mushgrove Swamp during the night.", 
        FavouriteBait = "Worm", 
        FavouriteTime = "Night", 
        Price = 300, 
        XP = 120, 
        Seasons = {
            "Autumn", 
            "Summer"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A Catfish!", 
            "Meowwww!", 
            "Where is Dogfish?", 
            "Kitty Cat Meow Meow", 
            "I caught a Catfish!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Mushgrove"
    }, 
    Alligator = {
        WeightPool = {
            1500, 
            3000
        }, 
        Chance = 0.9, 
        Rarity = "Legendary", 
        Resilience = 15, 
        ProgressEfficiency = 0.8, 
        Description = "The Alligator is a massive, fearsome reptile known for its powerful bite and armoured body. Found in Mushgrove Swamp, Alligators are the apex predator with a stealthy and ambush-based hunting style.", 
        Hint = "Found in Mushgrove Swamp during the night.", 
        FavouriteBait = "Fish Head", 
        FavouriteTime = "Night", 
        Price = 700, 
        XP = 400, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "Foggy", 
            "Rain"
        }, 
        Quips = {
            "WOAH!!", 
            "OH MY GOD!!", 
            "AN ALLIGATOR!", 
            "WHAT????"
        }, 
        SparkleColor = Color3.fromRGB(153, 255, 116), 
        HoldAnimation = l_fish_0:WaitForChild("heavybasic"), 
        From = "Mushgrove"
    }, 
    Handfish = {
        WeightPool = {
            20, 
            60
        }, 
        Chance = 0.01, 
        Rarity = "Mythical", 
        Resilience = 50, 
        ProgressEfficiency = 0.5, 
        Description = "The Handfish is a unique, small, and critically rare species with pectoral fins that resemble hands, which it uses to 'walk' along the ocean floor rather than swim. They can only be found stomping on the floors of Mushgrove Swamp", 
        Hint = "Can be found in Mushgrove Swamp.", 
        FavouriteBait = "Insect", 
        FavouriteTime = nil, 
        Price = 1000, 
        XP = 500, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A Handfish!", 
            "They look like mine!", 
            "Woah! A Handfish", 
            "Hey. Don't get handsy with me!", 
            "Kinda weird lookin'..."
        }, 
        SparkleColor = Color3.fromRGB(255, 234, 181), 
        HoldAnimation = l_fish_0:WaitForChild("small"), 
        From = "Mushgrove"
    }, 
    ["Sea Bass"] = {
        WeightPool = {
            20, 
            60
        }, 
        Chance = 75, 
        Rarity = "Common", 
        Resilience = 80, 
        Description = "The Sea Bass is a popular catch for many anglers, known for its elongated body and aggressive fighting behaviour when hooked. They can be found all over the world in all sorts of salt waters.", 
        Hint = "In salt waters.", 
        FavouriteBait = "Squid", 
        FavouriteTime = nil, 
        Price = 95, 
        XP = 90, 
        Seasons = {
            "Spring", 
            "Summer"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Sea Bass!", 
            "I caught a Sea Bass!", 
            "Woah! A Sea Bass!", 
            "Ouu! A Bass!"
        }, 
        SparkleColor = Color3.fromRGB(203, 203, 203), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Ocean"
    }, 
    Porgy = {
        WeightPool = {
            5, 
            30
        }, 
        Chance = 60, 
        Rarity = "Common", 
        Resilience = 65, 
        Description = "Porgies are a common catch for coastal anglers. They are a relatively easy to catch ocean fish with no real special qualities besides their taste and fun to say name.", 
        Hint = "Found all over the Ocean during the day and prefers shrimp.", 
        FavouriteBait = "Shrimp", 
        FavouriteTime = "Day", 
        Price = 90, 
        XP = 40, 
        Seasons = {
            "Summer", 
            "Spring"
        }, 
        Weather = {
            "Clear", 
            "Foggy"
        }, 
        Quips = {
            "A Corgi.. I mean Porgy??", 
            "Woah, a Porgy!", 
            "Nice, A Porgy!", 
            "A Porgy!", 
            "I caught a Porgy!"
        }, 
        SparkleColor = Color3.fromRGB(248, 255, 169), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Ocean"
    }, 
    Mullet = {
        WeightPool = {
            5, 
            20
        }, 
        Chance = 80, 
        Rarity = "Common", 
        Resilience = 65, 
        Description = "The Mullet is a streamlined, silver-scaled fish known for its schooling behaviour and preference for shallow coastal and freshwater environments. Mullets are agile swimmers with a forked tail and a tough, sturdy body, making them a popular catch for beginners and seasoned anglers alike.", 
        Hint = "Found all over the Ocean, prefers bagels.", 
        FavouriteBait = "Bagel", 
        FavouriteTime = nil, 
        Price = 90, 
        XP = 40, 
        Seasons = {
            "Summer", 
            "Spring"
        }, 
        Weather = {
            "Clear", 
            "Foggy"
        }, 
        Quips = {
            "The hairstyle??", 
            "Woah, a Mullet!", 
            "Nice, A Mullet!", 
            "A Mullet!", 
            "I caught an Outdated Hairstyle!"
        }, 
        SparkleColor = Color3.fromRGB(183, 249, 255), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Ocean"
    }, 
    Sardine = {
        WeightPool = {
            1, 
            3
        }, 
        Chance = 90, 
        Rarity = "Common", 
        Resilience = 90, 
        Description = "Sardines are small schooling fish, known for their high oil content, silver scales, and long tiny bodies.", 
        Hint = "Found commonly in the Second Sea.", 
        FavouriteBait = "None", 
        FavouriteTime = "Day", 
        Price = 30, 
        XP = 20, 
        Seasons = {
            "Spring", 
            "Summer"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "I caught a Sardine!", 
            "Ouu! A Sardine!", 
            "A Sardine!"
        }, 
        SparkleColor = Color3.fromRGB(185, 185, 185), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Ocean"
    }, 
    Mackerel = {
        WeightPool = {
            10, 
            40
        }, 
        Chance = 100, 
        Rarity = "Common", 
        Resilience = 85, 
        Description = "The Mackerel is a fast-swimming, silver fish with distinctive stripes and high-oil content. Mackerel are most active from spring to autumn in mildly warm weather.", 
        Hint = "Found in mildly warm saltwater.", 
        FavouriteBait = "Shrimp", 
        FavouriteTime = "Day", 
        Price = 75, 
        XP = 80, 
        Seasons = {
            "Spring", 
            "Autumn"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A Mackerel!", 
            "I caught a Mackerel!", 
            "Woah, a Mackerel!", 
            "Mackerelllll!", 
            "What's up, Mackerel!", 
            "Holy Mackerel!"
        }, 
        SparkleColor = Color3.fromRGB(207, 207, 207), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Ocean"
    }, 
    Haddock = {
        WeightPool = {
            15, 
            40
        }, 
        Chance = 110, 
        Rarity = "Common", 
        Resilience = 85, 
        Description = "Haddock are small, silvery fish found in cold ocean waters. Haddock are often found in large schools, they are relatively easy to catch and are easy to find near their signature 'Haddock Rock'.", 
        Hint = "Found in schools near 'Haddock rock'.", 
        FavouriteBait = "Worm", 
        FavouriteTime = "Day", 
        Price = 50, 
        XP = 60, 
        Seasons = {
            "Autumn", 
            "Winter"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "I caught a Haddock!", 
            "Woah, a Haddock!!"
        }, 
        SparkleColor = Color3.fromRGB(227, 227, 227), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Ocean"
    }, 
    Shrimp = {
        WeightPool = {
            1, 
            2
        }, 
        Chance = 45, 
        Rarity = "Common", 
        Resilience = 200, 
        Description = "Shrimp are small, versatile crustaceans that are most active from spring to autumn, and can be found in an abundance in deep oceans. Shrimp are predominantly nocturnal, making night fishing the most effective time.", 
        Hint = "Caught at night in deep oceans in crab cages.", 
        FavouriteBait = "None", 
        FavouriteTime = "Night", 
        Price = 45, 
        XP = 35, 
        Seasons = {
            "Spring", 
            "Autumn"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A Shrimp!", 
            "Woah! A Shrimp", 
            "Awesome!", 
            "A Shrimp!", 
            "Ou! A Shrimpy!"
        }, 
        SparkleColor = Color3.fromRGB(255, 107, 96), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Ocean"
    }, 
    ["Sand Dollar"] = {
        WeightPool = {
            1, 
            2
        }, 
        Chance = 55, 
        Rarity = "Common", 
        Resilience = 200, 
        Description = "Sand dollars are species of flat, burrowing sea urchins.. Yeah, they are urchins! Fun fact; The rattling of a fossilized Sand Dollar is their teeth-like sections moving around inside of them.", 
        Hint = "Can be easily caught while cage fishing. Best caught near docks and beaches.", 
        FavouriteBait = "None", 
        FavouriteTime = nil, 
        Price = 20, 
        XP = 35, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Sand Dollar!", 
            "Woah! A Sand Dollar", 
            "Awesome!", 
            "A Sand Dollar!", 
            "Ou! A Sand Dollar!"
        }, 
        SparkleColor = Color3.fromRGB(255, 227, 143), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Ocean"
    }, 
    Mussel = {
        WeightPool = {
            1, 
            2
        }, 
        Chance = 55, 
        Rarity = "Common", 
        Resilience = 200, 
        Description = "Mussels are small mollusc that can be easily found on rocks, near beaches, and near docks. They actually have one food and have very limited movement, so most mussels stay in one place their entire lives.. that's boring!", 
        Hint = "Can be easily caught while cage fishing. Best caught near docks and beaches.", 
        FavouriteBait = "None", 
        FavouriteTime = nil, 
        Price = 20, 
        XP = 35, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Mussel!", 
            "Woah! A Mussel", 
            "Awesome!", 
            "A Mussel!", 
            "Ou! A Mussel!"
        }, 
        SparkleColor = Color3.fromRGB(53, 53, 89), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Ocean"
    }, 
    Barracuda = {
        WeightPool = {
            55, 
            110
        }, 
        Chance = 60, 
        Rarity = "Uncommon", 
        Resilience = 55, 
        Description = "Barracudas are large predatory fish, known for their fearsome appearance and ferocious behaviour. The barracuda is an adept saltwater hunter and are commonly mistaken as a hazard towards humans, when in reality they are relatively comfortable and friendly swimmers. They can be found in deep oceans, and near Moosewood.", 
        Hint = "Found in deeper saltwater and near Moosewood.", 
        FavouriteBait = "Worm", 
        FavouriteTime = "Day", 
        Price = 150, 
        XP = 90, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Woah, a Barracuda!", 
            "I caught a Barracuda!", 
            "A Barracuda!!", 
            "!!!!"
        }, 
        SparkleColor = Color3.fromRGB(117, 141, 121), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Ocean"
    }, 
    Cod = {
        WeightPool = {
            20, 
            100
        }, 
        Chance = 75, 
        Rarity = "Uncommon", 
        Resilience = 70, 
        Description = "Cod are robust, deep-water fish. Best found in the open cold oceans during winter and spring. Cods are a reliable and rewarding catch with substantial size and strong fighting ability.", 
        Hint = "Found in cold deep ocean water.", 
        FavouriteBait = "Minnow", 
        FavouriteTime = nil, 
        Price = 90, 
        XP = 70, 
        Seasons = {
            "Winter", 
            "Spring"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A Cod!", 
            "I caught a Cod!", 
            "Woah, a Cod!", 
            "Cod of duty!", 
            "What's up, Coddy!"
        }, 
        SparkleColor = Color3.fromRGB(207, 158, 139), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Ocean"
    }, 
    Salmon = {
        WeightPool = {
            40, 
            100
        }, 
        Chance = 70, 
        Rarity = "Uncommon", 
        Resilience = 70, 
        Description = "Salmon are visually known for their silver skin and streamlined bodies. They are extremely strong swimmers and leapers, making them a difficult catch. You can find these Ocean Salmon in any deep bodies of salt water, and some freshwaters.", 
        Hint = "Found in oceans and some freshwaters.", 
        FavouriteBait = "Worm", 
        FavouriteTime = nil, 
        Price = 130, 
        XP = 90, 
        Seasons = {
            "Spring", 
            "Winter"
        }, 
        Weather = {
            "Rain", 
            "Clear"
        }, 
        Quips = {
            "Salmoff!", 
            "Woah!", 
            "Awesome!", 
            "A Salmon!", 
            "Woah, A Salmon!", 
            "A Salmon!!!"
        }, 
        SparkleColor = Color3.fromRGB(65, 166, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Ocean"
    }, 
    Amberjack = {
        WeightPool = {
            200, 
            400
        }, 
        Chance = 75, 
        Rarity = "Uncommon", 
        Resilience = 40, 
        Description = "The Amberjack is a strong, fast-swimming fish known for their vigorous fights and robust body. Mostly active in spring, and best caught in open ocean waters with live baitfish such as small minnows. The Amberjack is not rare or hard to come by, but it does put up an impressive battle when trying to catch.", 
        Hint = "Found in open saltwater.", 
        FavouriteBait = "Minnow", 
        FavouriteTime = "Day", 
        Price = 115, 
        XP = 80, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "Clear", 
            "Rain"
        }, 
        Quips = {
            "An Amberjack!", 
            "I caught an Amberjack!", 
            "Woah, an Amberjack!", 
            "Lumberjack- I mean Amberjack!"
        }, 
        SparkleColor = Color3.fromRGB(219, 219, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Ocean"
    }, 
    Crab = {
        WeightPool = {
            6, 
            14
        }, 
        Chance = 40, 
        Rarity = "Uncommon", 
        Resilience = 90, 
        Description = "Crabs are cute crustaceans that search the ocean floor for food. They can be found in plenty of ocean regions. Be careful, some can have harshly strong claws.", 
        Hint = "Can be caught while cage fishing in Second Seas.", 
        FavouriteBait = "None", 
        FavouriteTime = nil, 
        Price = 100, 
        XP = 50, 
        Seasons = {
            "Spring", 
            "Autumn"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Crusty Crab!", 
            "Woah! A Crab", 
            "Awesome!", 
            "A Crab!", 
            "Ou! A Crab!"
        }, 
        SparkleColor = Color3.fromRGB(209, 90, 90), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Ocean"
    }, 
    Scallop = {
        WeightPool = {
            2, 
            5
        }, 
        Chance = 40, 
        Rarity = "Uncommon", 
        Resilience = 60, 
        Description = "Scallops are known for their ability to 'swim' by rapidly opening and closing their shells, which propels them through the water. They can be found best in sandy or grass filled areas of the ocean.", 
        Hint = "Best caught in sandy or grass filled areas of the ocean.", 
        FavouriteBait = "None", 
        FavouriteTime = nil, 
        Price = 100, 
        XP = 40, 
        Seasons = {
            "Winter", 
            "Autumn"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Scallop!", 
            "Woah! A Scallop", 
            "Awesome!", 
            "A Scallop!", 
            "Ou! A Scallop!"
        }, 
        SparkleColor = Color3.fromRGB(255, 195, 135), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Ocean"
    }, 
    Prawn = {
        WeightPool = {
            1, 
            5
        }, 
        Chance = 40, 
        Rarity = "Uncommon", 
        Resilience = 200, 
        Description = "Prawns are prized crustaceans known for their delicate flavour and versatility. they are most active in summer, and can be found in an abundance in deep oceans. Prawns; similar to shrimp-- are predominantly nocturnal, making night fishing the most effective time.", 
        Hint = "Caught at night in deep oceans in crab cages.", 
        FavouriteBait = "None", 
        FavouriteTime = "Night", 
        Price = 45, 
        XP = 35, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A Prawn!", 
            "Woah! A Prawn", 
            "Awesome!", 
            "A Prawn!", 
            "Ou! A Prawn!"
        }, 
        SparkleColor = Color3.fromRGB(165, 255, 248), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Ocean"
    }, 
    Oyster = {
        WeightPool = {
            2, 
            5
        }, 
        Chance = 50, 
        Rarity = "Uncommon", 
        Resilience = 95, 
        Description = "Oysters are bivalve molluscs with rough, irregularly shaped shells. They are typically found in clusters, attached to submerged rocks and roots. They can be found all over Terapin Islands; The Oysters help filter the water of Terrapin, leaving making it nearly a freshwater island.", 
        Hint = "Can be easily caught while cage fishing. Best caught near large rocks and all over Terrapin Island.", 
        FavouriteBait = "None", 
        FavouriteTime = nil, 
        Price = 30, 
        XP = 35, 
        Seasons = {
            "Summer", 
            "Autumn"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "An Oyster!", 
            "Woah! An Oyster", 
            "Awesome!", 
            "An Oyster!", 
            "Ou! An Oyster!"
        }, 
        SparkleColor = Color3.fromRGB(217, 194, 168), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Ocean"
    }, 
    ["Nurse Shark"] = {
        WeightPool = {
            1000, 
            1500
        }, 
        Chance = 35, 
        Rarity = "Unusual", 
        Resilience = 35, 
        Description = "Nurse Sharks are a nocturnal bottom feeder, spending most of their time on the ocean floor or in small crevices. Despite their appearance, they are gentle and slow-moving. Nurse Sharks can 'suction feed', using their powerful jaws to scrape algae off surfaces.", 
        Hint = "Caught at night in the ocean.", 
        FavouriteBait = "Minnow", 
        FavouriteTime = "Night", 
        Price = 200, 
        XP = 100, 
        Seasons = {
            "Summer", 
            "Autumn"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Nurse Shark!", 
            "Woah! A Nurse Shark!", 
            "I Caught a Nurse Shark!"
        }, 
        SparkleColor = Color3.fromRGB(255, 152, 152), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Ocean"
    }, 
    Lobster = {
        WeightPool = {
            9, 
            28
        }, 
        Chance = 100, 
        Rarity = "Common", 
        Resilience = 100, 
        Description = "Lobsters are valuable crustaceans known for their rich, succulent meat. Lobsters are most active in the summer to autumn, and are commonly caught in crab cages during calm clear days.", 
        Hint = "Caught in oceans using a lobster cage.", 
        FavouriteBait = "None", 
        FavouriteTime = "Day", 
        Price = 130, 
        XP = 60, 
        Seasons = {
            "Summer", 
            "Autumn"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Larry Lobster!", 
            "Woah! A Lobster", 
            "Awesome!", 
            "A Lobster!", 
            "Ou! A Lobster!"
        }, 
        SparkleColor = Color3.fromRGB(255, 57, 57), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        HideInBestiary = true, 
        UtilityTier = 1, 
        UtilityType = "lobster"
    }, 
    ["Ancient Lobster"] = {
        WeightPool = {
            200, 
            650
        }, 
        Chance = 5, 
        Rarity = "Extinct", 
        Resilience = 20, 
        Description = "Lobsters are valuable crustaceans known for their rich, succulent meat. Lobsters are most active in the summer to autumn, and are commonly caught in crab cages during calm clear days.", 
        Hint = "Caught in oceans using a lobster cage.", 
        FavouriteBait = "None", 
        FavouriteTime = "Night", 
        Price = 13000, 
        XP = 8000, 
        Seasons = {
            "Winter", 
            "Spring"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A Larry Lobster!", 
            "Woah! A Lobster", 
            "Awesome!", 
            "A Lobster!", 
            "Ou! A Lobster!"
        }, 
        SparkleColor = Color3.fromRGB(255, 57, 57), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        HideInBestiary = true, 
        UtilityTier = 3, 
        UtilityType = "lobster"
    }, 
    Studster = {
        WeightPool = {
            200, 
            650
        }, 
        Chance = 5, 
        Rarity = "Extinct", 
        Resilience = 20, 
        Description = "Lobsters are valuable crustaceans known for their rich, succulent meat. Lobsters are most active in the summer to autumn, and are commonly caught in crab cages during calm clear days.", 
        Hint = "Caught in oceans using a lobster cage.", 
        FavouriteBait = "None", 
        FavouriteTime = "Night", 
        Price = 13000, 
        XP = 8000, 
        Seasons = {
            "Winter", 
            "Spring"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A Larry Lobster!", 
            "Woah! A Lobster", 
            "Awesome!", 
            "A Lobster!", 
            "Ou! A Lobster!"
        }, 
        SparkleColor = Color3.fromRGB(255, 57, 57), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }, 
        UtilityTier = 3, 
        UtilityType = "lobster"
    }, 
    ["Slipper Lobster"] = {
        WeightPool = {
            90, 
            280
        }, 
        Chance = 10, 
        Rarity = "Extinct", 
        Resilience = 30, 
        Description = "Lobsters are valuable crustaceans known for their rich, succulent meat. Lobsters are most active in the summer to autumn, and are commonly caught in crab cages during calm clear days.", 
        Hint = "Caught in oceans using a lobster cage.", 
        FavouriteBait = "None", 
        FavouriteTime = nil, 
        Price = 8000, 
        XP = 6000, 
        Seasons = {
            "Summer", 
            "Autumn"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Larry Lobster!", 
            "Woah! A Lobster", 
            "Awesome!", 
            "A Lobster!", 
            "Ou! A Lobster!"
        }, 
        SparkleColor = Color3.fromRGB(255, 57, 57), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }, 
        UtilityTier = 2, 
        UtilityType = "lobster"
    }, 
    ["Scalloped Spiny Lobster"] = {
        WeightPool = {
            45, 
            120
        }, 
        Chance = 30, 
        Rarity = "Extinct", 
        Resilience = 40, 
        Description = "Lobsters are valuable crustaceans known for their rich, succulent meat. Lobsters are most active in the summer to autumn, and are commonly caught in crab cages during calm clear days.", 
        Hint = "Caught in oceans using a lobster cage.", 
        FavouriteBait = "None", 
        FavouriteTime = "Day", 
        Price = 2300, 
        XP = 1200, 
        Seasons = {
            "Summer", 
            "Autumn"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Larry Lobster!", 
            "Woah! A Lobster", 
            "Awesome!", 
            "A Lobster!", 
            "Ou! A Lobster!"
        }, 
        SparkleColor = Color3.fromRGB(255, 57, 57), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        HideInBestiary = true, 
        UtilityTier = 2, 
        UtilityType = "lobster"
    }, 
    ["Rock Lobster"] = {
        WeightPool = {
            20, 
            68
        }, 
        Chance = 50, 
        Rarity = "Extinct", 
        Resilience = 70, 
        Description = "Lobsters are valuable crustaceans known for their rich, succulent meat. Lobsters are most active in the summer to autumn, and are commonly caught in crab cages during calm clear days.", 
        Hint = "Caught in oceans using a lobster cage.", 
        FavouriteBait = "None", 
        FavouriteTime = "Night", 
        Price = 630, 
        XP = 360, 
        Seasons = {
            "Summer", 
            "Autumn"
        }, 
        Weather = {
            "Windy"
        }, 
        Quips = {
            "A Larry Lobster!", 
            "Woah! A Lobster", 
            "Awesome!", 
            "A Lobster!", 
            "Ou! A Lobster!"
        }, 
        SparkleColor = Color3.fromRGB(255, 57, 57), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }, 
        UtilityTier = 1, 
        UtilityType = "lobster"
    }, 
    ["Lagoon Lobster"] = {
        WeightPool = {
            12, 
            50
        }, 
        Chance = 80, 
        Rarity = "Extinct", 
        Resilience = 80, 
        Description = "Lobsters are valuable crustaceans known for their rich, succulent meat. Lobsters are most active in the summer to autumn, and are commonly caught in crab cages during calm clear days.", 
        Hint = "Caught in oceans using a lobster cage.", 
        FavouriteBait = "None", 
        FavouriteTime = "Day", 
        Price = 430, 
        XP = 260, 
        Seasons = {
            "Summer", 
            "Autumn"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Larry Lobster!", 
            "Woah! A Lobster", 
            "Awesome!", 
            "A Lobster!", 
            "Ou! A Lobster!"
        }, 
        SparkleColor = Color3.fromRGB(255, 57, 57), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }, 
        UtilityTier = 1, 
        UtilityType = "lobster"
    }, 
    ["Snowcap Lobster"] = {
        WeightPool = {
            10, 
            30
        }, 
        Chance = 45, 
        Rarity = "Extinct", 
        Resilience = 65, 
        Description = "Lobsters are valuable crustaceans known for their rich, succulent meat. Lobsters are most active in the summer to autumn, and are commonly caught in crab cages during calm clear days.", 
        Hint = "Caught in oceans using a lobster cage.", 
        FavouriteBait = "None", 
        FavouriteTime = nil, 
        Price = 730, 
        XP = 460, 
        Seasons = {
            "Winter", 
            "Spring"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A Larry Lobster!", 
            "Woah! A Lobster", 
            "Awesome!", 
            "A Lobster!", 
            "Ou! A Lobster!"
        }, 
        SparkleColor = Color3.fromRGB(255, 57, 57), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        HideInBestiary = true, 
        UtilityTier = 1, 
        UtilityType = "lobster"
    }, 
    Langoustine = {
        WeightPool = {
            3, 
            10
        }, 
        Chance = 8, 
        Rarity = "Extinct", 
        Resilience = 150, 
        Description = "Lobsters are valuable crustaceans known for their rich, succulent meat. Lobsters are most active in the summer to autumn, and are commonly caught in crab cages during calm clear days.", 
        Hint = "Caught in oceans using a lobster cage.", 
        FavouriteBait = "None", 
        FavouriteTime = "Night", 
        Price = 9000, 
        XP = 1500, 
        Seasons = {
            "Winter", 
            "Spring"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A Larry Lobster!", 
            "Woah! A Lobster", 
            "Awesome!", 
            "A Lobster!", 
            "Ou! A Lobster!"
        }, 
        SparkleColor = Color3.fromRGB(255, 57, 57), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        HideInBestiary = true, 
        UtilityTier = 3, 
        UtilityType = "lobster"
    }, 
    ["Waveborne Lobster"] = {
        WeightPool = {
            130, 
            480
        }, 
        Chance = 30, 
        Rarity = "Extinct", 
        Resilience = 30, 
        Description = "Lobsters are valuable crustaceans known for their rich, succulent meat. Lobsters are most active in the summer to autumn, and are commonly caught in crab cages during calm clear days.", 
        Hint = "Caught in oceans using a lobster cage.", 
        FavouriteBait = "None", 
        FavouriteTime = "Day", 
        Price = 3000, 
        XP = 1600, 
        Seasons = {
            "Summer", 
            "Autumn"
        }, 
        Weather = {
            "Windy"
        }, 
        Quips = {
            "A Larry Lobster!", 
            "Woah! A Lobster", 
            "Awesome!", 
            "A Lobster!", 
            "Ou! A Lobster!"
        }, 
        SparkleColor = Color3.fromRGB(255, 57, 57), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }, 
        UtilityTier = 2, 
        UtilityType = "lobster"
    }, 
    ["Spiny Sunstone Lobster"] = {
        WeightPool = {
            45, 
            170
        }, 
        Chance = 85, 
        Rarity = "Extinct", 
        Resilience = 85, 
        Description = "Lobsters are valuable crustaceans known for their rich, succulent meat. Lobsters are most active in the summer to autumn, and are commonly caught in crab cages during calm clear days.", 
        Hint = "Caught in oceans using a lobster cage.", 
        FavouriteBait = "None", 
        FavouriteTime = nil, 
        Price = 430, 
        XP = 220, 
        Seasons = {
            "Summer", 
            "Autumn"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Larry Lobster!", 
            "Woah! A Lobster", 
            "Awesome!", 
            "A Lobster!", 
            "Ou! A Lobster!"
        }, 
        SparkleColor = Color3.fromRGB(255, 57, 57), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        HideInBestiary = true, 
        UtilityTier = 1, 
        UtilityType = "lobster"
    }, 
    ["Terrapin Lobster"] = {
        WeightPool = {
            18, 
            58
        }, 
        Chance = 35, 
        Rarity = "Extinct", 
        Resilience = 28, 
        Description = "Lobsters are valuable crustaceans known for their rich, succulent meat. Lobsters are most active in the summer to autumn, and are commonly caught in crab cages during calm clear days.", 
        Hint = "Caught in oceans using a lobster cage.", 
        FavouriteBait = "None", 
        FavouriteTime = "Night", 
        Price = 2300, 
        XP = 2400, 
        Seasons = {
            "Summer", 
            "Autumn"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A Larry Lobster!", 
            "Woah! A Lobster", 
            "Awesome!", 
            "A Lobster!", 
            "Ou! A Lobster!"
        }, 
        SparkleColor = Color3.fromRGB(255, 57, 57), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        HideInBestiary = true, 
        UtilityTier = 2, 
        UtilityType = "lobster"
    }, 
    ["Western Rock Lobster"] = {
        WeightPool = {
            19, 
            50
        }, 
        Chance = 90, 
        Rarity = "Extinct", 
        Resilience = 90, 
        Description = "Lobsters are valuable crustaceans known for their rich, succulent meat. Lobsters are most active in the summer to autumn, and are commonly caught in crab cages during calm clear days.", 
        Hint = "Caught in oceans using a lobster cage.", 
        FavouriteBait = "None", 
        FavouriteTime = "Day", 
        Price = 120, 
        XP = 65, 
        Seasons = {
            "Summer", 
            "Autumn"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Larry Lobster!", 
            "Woah! A Lobster", 
            "Awesome!", 
            "A Lobster!", 
            "Ou! A Lobster!"
        }, 
        SparkleColor = Color3.fromRGB(255, 57, 57), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }, 
        UtilityTier = 1, 
        UtilityType = "lobster"
    }, 
    ["Roslit Ray Lobster"] = {
        WeightPool = {
            13, 
            40
        }, 
        Chance = 50, 
        Rarity = "Unusual", 
        Resilience = 45, 
        Description = "Lobsters are valuable crustaceans known for their rich, succulent meat. Lobsters are most active in the summer to autumn, and are commonly caught in crab cages during calm clear days.", 
        Hint = "Caught in oceans using a lobster cage.", 
        FavouriteBait = "None", 
        FavouriteTime = nil, 
        Price = 630, 
        XP = 560, 
        Seasons = {
            "Summer", 
            "Autumn"
        }, 
        Weather = {
            "Windy"
        }, 
        Quips = {
            "A Larry Lobster!", 
            "Woah! A Lobster", 
            "Awesome!", 
            "A Lobster!", 
            "Ou! A Lobster!"
        }, 
        SparkleColor = Color3.fromRGB(255, 57, 57), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        HideInBestiary = true, 
        UtilityTier = 1, 
        UtilityType = "lobster"
    }, 
    ["Lobster King"] = {
        WeightPool = {
            900000, 
            4000000
        }, 
        Chance = 1, 
        Rarity = "Extinct", 
        Resilience = 1, 
        Description = "Lobsters are valuable crustaceans known for their rich, succulent meat. Lobsters are most active in the summer to autumn, and are commonly caught in crab cages during calm clear days.", 
        Hint = "Caught in oceans using a lobster cage.", 
        FavouriteBait = "None", 
        FavouriteTime = "Night", 
        Price = 120000, 
        XP = 400000, 
        Seasons = {
            "Winter", 
            "Spring"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A Larry Lobster!", 
            "Woah! A Lobster", 
            "Awesome!", 
            "A Lobster!", 
            "Ou! A Lobster!"
        }, 
        SparkleColor = Color3.fromRGB(255, 57, 57), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }, 
        UtilityTier = 4, 
        UtilityType = "lobster"
    }, 
    ["Azureback Haddock School"] = {
        WeightPool = {
            180, 
            750
        }, 
        Chance = 80, 
        Rarity = "Extinct", 
        Resilience = 85, 
        Description = "A school of awesome fish!", 
        Hint = "Caught in oceans using a net.", 
        FavouriteBait = "None", 
        FavouriteTime = "Day", 
        Price = 430, 
        XP = 240, 
        Seasons = {
            "Winter", 
            "Spring"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "Wow, that's a lot of them!"
        }, 
        SparkleColor = Color3.fromRGB(255, 57, 57), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }, 
        UtilityTier = 1, 
        UtilityType = "school"
    }, 
    ["Blobfish School"] = {
        WeightPool = {
            200, 
            880
        }, 
        Chance = 3, 
        FinalChanceDivisor = 8, 
        Rarity = "Extinct", 
        Resilience = 30, 
        Description = "A school of awesome fish!", 
        Hint = "Caught in oceans using a net.", 
        FavouriteBait = "None", 
        FavouriteTime = "Night", 
        Price = 18000, 
        XP = 20000, 
        Seasons = {
            "Winter", 
            "Spring"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "Wow, that's a lot of them!"
        }, 
        SparkleColor = Color3.fromRGB(255, 57, 57), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }, 
        UtilityTier = 4, 
        UtilityType = "school"
    }, 
    ["Bluefin Tuna School"] = {
        WeightPool = {
            125, 
            400
        }, 
        Chance = 90, 
        Rarity = "Extinct", 
        Resilience = 95, 
        Description = "A school of awesome fish!", 
        Hint = "Caught in oceans using a net.", 
        FavouriteBait = "None", 
        FavouriteTime = nil, 
        Price = 125, 
        XP = 62, 
        Seasons = {
            "Summer", 
            "Autumn"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "Wow, that's a lot of them!"
        }, 
        SparkleColor = Color3.fromRGB(255, 57, 57), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }, 
        UtilityTier = 1, 
        UtilityType = "school"
    }, 
    ["Coralwing Guppy School"] = {
        WeightPool = {
            180, 
            580
        }, 
        Chance = 30, 
        Rarity = "Extinct", 
        Resilience = 35, 
        Description = "A school of awesome fish!", 
        Hint = "Caught in oceans using a net.", 
        FavouriteBait = "None", 
        FavouriteTime = "Day", 
        Price = 2500, 
        XP = 1800, 
        Seasons = {
            "Summer", 
            "Autumn"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "Wow, that's a lot of them!"
        }, 
        SparkleColor = Color3.fromRGB(255, 57, 57), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }, 
        UtilityTier = 3, 
        UtilityType = "school"
    }, 
    ["Duskwave Herring School"] = {
        WeightPool = {
            230, 
            620
        }, 
        Chance = 10, 
        Rarity = "Extinct", 
        Resilience = 40, 
        Description = "A school of awesome fish!", 
        Hint = "Caught in oceans using a net.", 
        FavouriteBait = "None", 
        FavouriteTime = "Night", 
        Price = 9500, 
        XP = 7500, 
        Seasons = {
            "Winter", 
            "Spring"
        }, 
        Weather = {
            "Windy"
        }, 
        Quips = {
            "Wow, that's a lot of them!"
        }, 
        SparkleColor = Color3.fromRGB(255, 57, 57), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }, 
        UtilityTier = 3, 
        UtilityType = "school"
    }, 
    ["Infernal Halibut School"] = {
        WeightPool = {
            250, 
            670
        }, 
        Chance = 5, 
        Rarity = "Extinct", 
        Resilience = 20, 
        Description = "A school of awesome fish!", 
        Hint = "Caught in oceans using a net.", 
        FavouriteBait = "None", 
        FavouriteTime = nil, 
        Price = 14000, 
        XP = 8000, 
        Seasons = {
            "Winter", 
            "Spring"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "Wow, that's a lot of them!"
        }, 
        SparkleColor = Color3.fromRGB(255, 57, 57), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }, 
        UtilityTier = 3, 
        UtilityType = "school"
    }, 
    ["Moonveil Salmon School"] = {
        WeightPool = {
            235, 
            615
        }, 
        Chance = 45, 
        Rarity = "Extinct", 
        Resilience = 60, 
        Description = "A school of awesome fish!", 
        Hint = "Caught in oceans using a net.", 
        FavouriteBait = "None", 
        FavouriteTime = "Day", 
        Price = 680, 
        XP = 460, 
        Seasons = {
            "Autumn", 
            "Winter"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "Wow, that's a lot of them!"
        }, 
        SparkleColor = Color3.fromRGB(255, 57, 57), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }, 
        UtilityTier = 1, 
        UtilityType = "school"
    }, 
    ["Pufferling School"] = {
        WeightPool = {
            190, 
            570
        }, 
        Chance = 30, 
        Rarity = "Extinct", 
        Resilience = 35, 
        Description = "A school of awesome fish!", 
        Hint = "Caught in oceans using a net.", 
        FavouriteBait = "None", 
        FavouriteTime = "Night", 
        Price = 2500, 
        XP = 1800, 
        Seasons = {
            "Summer", 
            "Autumn"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "Wow, that's a lot of them!"
        }, 
        SparkleColor = Color3.fromRGB(255, 57, 57), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }, 
        UtilityTier = 2, 
        UtilityType = "school"
    }, 
    ["Sardines School"] = {
        WeightPool = {
            50, 
            350
        }, 
        Chance = 90, 
        Rarity = "Extinct", 
        Resilience = 95, 
        Description = "A school of awesome fish!", 
        Hint = "Caught in oceans using a net.", 
        FavouriteBait = "None", 
        FavouriteTime = nil, 
        Price = 125, 
        XP = 62, 
        Seasons = {
            "Summer", 
            "Autumn"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "Wow, that's a lot of them!"
        }, 
        SparkleColor = Color3.fromRGB(255, 57, 57), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }, 
        UtilityTier = 1, 
        UtilityType = "school"
    }, 
    ["Seaspawn Shrimp School"] = {
        WeightPool = {
            350, 
            1500
        }, 
        Chance = 1, 
        Rarity = "Extinct", 
        Resilience = 1, 
        Description = "A school of awesome fish!", 
        Hint = "Caught in oceans using a net.", 
        FavouriteBait = "None", 
        FavouriteTime = "Day", 
        Price = 50000, 
        XP = 30000, 
        Seasons = {
            "Winter", 
            "Spring"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "Wow, that's a lot of them!"
        }, 
        SparkleColor = Color3.fromRGB(255, 57, 57), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }, 
        UtilityTier = 4, 
        UtilityType = "school"
    }, 
    ["Shiver Swarmfish School"] = {
        WeightPool = {
            200, 
            600
        }, 
        Chance = 45, 
        Rarity = "Extinct", 
        Resilience = 60, 
        Description = "A school of awesome fish!", 
        Hint = "Caught in oceans using a net.", 
        FavouriteBait = "None", 
        FavouriteTime = "Night", 
        Price = 680, 
        XP = 460, 
        Seasons = {
            "Winter", 
            "Spring"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "Wow, that's a lot of them!"
        }, 
        SparkleColor = Color3.fromRGB(255, 57, 57), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }, 
        UtilityTier = 1, 
        UtilityType = "school"
    }, 
    ["Veinfin Tetra School"] = {
        WeightPool = {
            220, 
            660
        }, 
        Chance = 80, 
        Rarity = "Extinct", 
        Resilience = 85, 
        Description = "A school of awesome fish!", 
        Hint = "Caught in oceans using a net.", 
        FavouriteBait = "None", 
        FavouriteTime = nil, 
        Price = 430, 
        XP = 240, 
        Seasons = {
            "Summer", 
            "Autumn"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "Wow, that's a lot of them!"
        }, 
        SparkleColor = Color3.fromRGB(255, 57, 57), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }, 
        UtilityTier = 1, 
        UtilityType = "school"
    }, 
    Coelacanth = {
        WeightPool = {
            70, 
            100
        }, 
        Chance = 14, 
        Rarity = "Rare", 
        Resilience = 40, 
        Description = "The Coelacanth is an ancient fish with a distinctive shape and strong swimming behaviours Known as a 'living fossil,' this fish was thought to be extinct until its rediscovery in 1938. Coelacanths are deep-sea dwellers, often found in underwater caves and steep slopes.", 
        Hint = "Found in the Deep Ocean.", 
        FavouriteBait = "None", 
        FavouriteTime = "Night", 
        Price = 370, 
        XP = 300, 
        Seasons = {
            "Spring", 
            "Autumn"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "Woah, a Coelacanth!", 
            "I caught a Coelacanth!", 
            "It's a Coelacanth!", 
            "Nice! It's a Coelacanth!"
        }, 
        SparkleColor = Color3.fromRGB(76, 76, 76), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Ocean"
    }, 
    ["Bluefin Tuna"] = {
        WeightPool = {
            1000, 
            2200
        }, 
        Chance = 35, 
        Rarity = "Rare", 
        Resilience = 30, 
        Description = "The Bluefin Tuna is a very large and strong species of Tuna. They are highly migratory and can travel extremely long distances. Their population is critically low due to overfishing; Making them rarer than other Tuna.", 
        Hint = "Found in deep open.", 
        FavouriteBait = "Minnow", 
        FavouriteTime = nil, 
        Price = 350, 
        XP = 120, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Bluefin Tuna!", 
            "I caught a Bluefin Tuna!", 
            "Woah, a Bluefin Tuna!", 
            "Tunaaaaa!", 
            "What's up, Tuna!"
        }, 
        SparkleColor = Color3.fromRGB(125, 210, 255), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Ocean"
    }, 
    Halibut = {
        WeightPool = {
            1000, 
            2000
        }, 
        Chance = 40, 
        Rarity = "Rare", 
        Resilience = 40, 
        Description = "The Halibut is a large flatfish known for their impressive size and strength. They commonly feed on Haddock and can be found hunting near 'Haddock Rock' and in deep waters. ", 
        Hint = "Found on the floor ocean. Best found near Haddock.", 
        FavouriteBait = "Squid", 
        FavouriteTime = nil, 
        Price = 250, 
        XP = 100, 
        Seasons = {
            "Summer", 
            "Spring"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A Halibut!", 
            "A Flatfish!", 
            "I Caught a Halibut!", 
            "Ou! A Halibut!"
        }, 
        SparkleColor = Color3.fromRGB(207, 129, 93), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Ocean"
    }, 
    Stingray = {
        WeightPool = {
            150, 
            300
        }, 
        Chance = 20, 
        Rarity = "Rare", 
        Resilience = 50, 
        Description = "Graceful and flat, stingrays glide effortlessly through the water, using their wide pectoral fins to move. Their long, whip-like tails end in a sharp stinger, which they can use for defence. Stingrays are bottom dwellers, often found in rocky and sandy seafloors and caves. [Contribution by @Johnny_D3pp]", 
        Hint = "Found in sea caves during the day.", 
        FavouriteBait = "None", 
        FavouriteTime = "Day", 
        Price = 230, 
        XP = 100, 
        Seasons = {
            "Summer", 
            "Spring"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "I caught a Stingray!", 
            "Woah.. a Stingray!", 
            "It stung me! Yeeowch!"
        }, 
        SparkleColor = Color3.fromRGB(180, 87, 50), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Ocean"
    }, 
    ["Sea Urchin"] = {
        WeightPool = {
            2, 
            9
        }, 
        Chance = 15, 
        Rarity = "Rare", 
        Resilience = 200, 
        Description = "Sea Urchins are spiny, globular animals. Their hard shells are round and spiny. They use their spikes along with their tube feet to push themselves along the ocean terrain. Sea Urchins can be caught in any climate and traditionally only prefer sea water.", 
        Hint = "Can be rarely caught while cage fishing, especially in the ocean.", 
        FavouriteBait = "None", 
        FavouriteTime = nil, 
        Price = 320, 
        XP = 80, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A Sea Urchin!", 
            "I caught a Sea Urchin!", 
            "Woah, an Urchin!"
        }, 
        SparkleColor = Color3.fromRGB(34, 32, 42), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Ocean"
    }, 
    Anglerfish = {
        WeightPool = {
            5, 
            20
        }, 
        Chance = 12, 
        Rarity = "Rare", 
        Resilience = 35, 
        Description = "The anglerfish is a deep-sea predator known for it's bioluminescent lure that dangles in front of its mouth to attract prey. With its menacing appearance, sharp teeth, and eerie glow, the Anglerfish thrives in dark, deep waters, making it a rare and exciting catch in the Deep Ocean.", 
        Hint = "Found in the far, deep ocean during the night.", 
        FavouriteBait = "Squid", 
        FavouriteTime = "Night", 
        Price = 230, 
        XP = 100, 
        Seasons = {
            "Winter", 
            "Autumn"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "Woah, an Anglerfish!", 
            "No way! An anglerfish!", 
            "I caught an Anglerfish!"
        }, 
        SparkleColor = Color3.fromRGB(182, 25, 25), 
        HoldAnimation = l_fish_0:WaitForChild("small"), 
        From = "Ocean"
    }, 
    Pufferfish = {
        WeightPool = {
            5, 
            20
        }, 
        Chance = 12, 
        Rarity = "Rare", 
        Resilience = 65, 
        Description = "Pufferfish are clumsy swimmers that can fill their elastic stomachs with huge amounts of water & air to blow themselves up to several times their normal size. They do this to evade and scare of predators. On top of their bloating abilities, they also are one of the most poisonous fish in the sea... Also they are the only bony fish which can close their eyes!", 
        Hint = "Found in reefs and deepwaters.", 
        FavouriteBait = "Seaweed", 
        FavouriteTime = nil, 
        Price = 230, 
        XP = 100, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Woah! a Blowfish!", 
            "A Pufferfish!", 
            "A Water Balloon!", 
            "Woah, A Pufferfish!", 
            "Augh..."
        }, 
        SparkleColor = Color3.fromRGB(255, 227, 15), 
        HoldAnimation = l_fish_0:WaitForChild("small"), 
        From = "Ocean"
    }, 
    Swordfish = {
        WeightPool = {
            1000, 
            2500
        }, 
        Chance = 15, 
        Rarity = "Rare", 
        Resilience = 35, 
        Description = "Swordfish are extremely strong and notable due to their long flattened bill that resembles a sword, as their name implies. They are a great catch, and anglers around the globe are impressed by a Swordfish catch.", 
        Hint = "Found in deep ocean water. Extremely strong.", 
        FavouriteBait = "Squid", 
        FavouriteTime = nil, 
        Price = 850, 
        XP = 300, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Windy", 
            "Clear"
        }, 
        Quips = {
            "A Swordfish!", 
            "WOAH! A Swordfish!!", 
            "SWORDFISHHHH", 
            "I caught a swordfish!!", 
            "A Fish Sword..! A Fish Sword!"
        }, 
        SparkleColor = Color3.fromRGB(93, 128, 255), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        ViewportSizeOffset = 0.9, 
        From = "Ocean"
    }, 
    Sailfish = {
        WeightPool = {
            400, 
            600
        }, 
        Chance = 16, 
        Rarity = "Rare", 
        Resilience = 40, 
        Description = "Sailfish are known for their incredible speed, long bill, and their striking sail-like dorsal fin. It's sleek body is built for fast swimming, allowing it to dart through water in bursts of speed. They are found in tropical and warmer ocean waters.", 
        Hint = "Found in ocean water. Extremely strong.", 
        FavouriteBait = "Minnow", 
        FavouriteTime = nil, 
        Price = 800, 
        XP = 300, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "Windy", 
            "Clear"
        }, 
        Quips = {
            "A Sailfish!", 
            "WOAH! A Sailfish!!", 
            "It's a Sailfish!", 
            "I caught a Sailfish!!"
        }, 
        SparkleColor = Color3.fromRGB(255, 242, 94), 
        HoldAnimation = l_fish_0:WaitForChild("heavybasic"), 
        ViewportSizeOffset = 0.9, 
        From = "Ocean"
    }, 
    ["Cookiecutter Shark"] = {
        WeightPool = {
            5, 
            15
        }, 
        Chance = 40, 
        Rarity = "Rare", 
        Resilience = 30, 
        Description = "The Cookiecutter Shark is a small, nocturnal shark with an unusual feeding habit- t bites circular chunks from larger animals, leaving a 'cookie-cutter' wound. They can be found primarily alongside sharks during shark hunts.", 
        Hint = "Found during a shark hunt during the night.", 
        FavouriteBait = "Bagel", 
        FavouriteTime = "Night", 
        Price = 500, 
        XP = 300, 
        Seasons = {
            "Summer", 
            "Spring"
        }, 
        Weather = {
            "Clear", 
            "Foggy"
        }, 
        Quips = {
            "A Cookiecutter Shark!", 
            "Woah, a Cookiecutter!", 
            "Nice, I can make some Gingerbread!", 
            "A Cookiecutter Shark!", 
            "I caught a Cookiecutter Shark!"
        }, 
        SparkleColor = Color3.fromRGB(255, 103, 103), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Ocean"
    }, 
    ["Bull Shark"] = {
        WeightPool = {
            900, 
            1300
        }, 
        Chance = 0.3, 
        Rarity = "Legendary", 
        Resilience = 20, 
        Description = "Bull sharks have robust bodies, and an extremely powerful nature. They have a special ability to adapt to both saltwater and freshwater, which is quite rare for sharks. Bull Sharks can be found most commonly near coats, and in freshwaters.", 
        Hint = "Found roaming in all types of waters and on the coasts.", 
        FavouriteBait = "Fish Head", 
        FavouriteTime = nil, 
        Price = 400, 
        XP = 150, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "Rain", 
            "Foggy"
        }, 
        Quips = {
            "A Bull Shark!", 
            "Thats some Bull Shark!", 
            "I caught a Bull Shark!"
        }, 
        SparkleColor = Color3.fromRGB(255, 245, 197), 
        HoldAnimation = l_fish_0:WaitForChild("heavybasic"), 
        From = "Ocean"
    }, 
    Moonfish = {
        WeightPool = {
            2500, 
            5000
        }, 
        Chance = 0.2, 
        Rarity = "Legendary", 
        Resilience = 20, 
        ProgressEfficiency = 0.6, 
        Description = "The Moonfish is a sizable, flat, bony fish that inhabits deep and occasionally warm waters. While their behaviour resembles that of the Ocean Sunfish, Moonfish are far more aggressive, using their rock-hard skulls to charge at fish, boats, and swimmers.", 
        Hint = "???", 
        FavouriteBait = "Minnow", 
        FavouriteTime = "Night", 
        Price = 1800, 
        XP = 900, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "I think my backbone snapped..", 
            "Woah!!", 
            "OH MY! A MOONFISH?", 
            "A Moonfish!!", 
            "Woah, a Moonfish!!", 
            "How did I pull this up?", 
            "A Moonfish!!!"
        }, 
        SparkleColor = Color3.fromRGB(255, 122, 70), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Ocean"
    }, 
    ["Crown Bass"] = {
        WeightPool = {
            20, 
            60
        }, 
        Chance = 0.2, 
        Rarity = "Legendary", 
        Resilience = 20, 
        ProgressEfficiency = 0.8, 
        Description = "The Crown Bass is a special type of bass that is known for its vibrant colours, and its luminescent 'crown' on its head. They use this crown to attract prey, and see easily at night. They can be found all over the world in all sorts of salt waters, especially warmer waters during the night.", 
        Hint = "In salt waters during the night. ", 
        FavouriteBait = "Squid", 
        FavouriteTime = "Night", 
        Price = 1200, 
        XP = 700, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A Crown Bass!", 
            "I caught a Crown Bass!", 
            "Woah! A Crown Bass!", 
            "Ouu! A Crown Bass!"
        }, 
        SparkleColor = Color3.fromRGB(203, 163, 70), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Ocean"
    }, 
    ["Flying Fish"] = {
        WeightPool = {
            15, 
            50
        }, 
        Chance = 0.15, 
        Rarity = "Legendary", 
        Resilience = 25, 
        ProgressEfficiency = 0.7, 
        Description = "The Flying Fish is a unique fish, renowned for their wing-like fins which give them the ability to soar above the ocean's surface. They use this ability to swiftly evade predators as well as dwelling near the surface to find small organisms to feed on.", 
        Hint = "In salt waters during the night. ", 
        FavouriteBait = "Minnow", 
        FavouriteTime = "Night", 
        Price = 1200, 
        XP = 700, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Flying Fish!", 
            "I caught a Flying Fish!", 
            "Woah! A Flying Fish!", 
            "Ouu! A Flying Fish!"
        }, 
        SparkleColor = Color3.fromRGB(172, 209, 255), 
        HoldAnimation = l_fish_0:WaitForChild("underweight"), 
        From = "Ocean"
    }, 
    Rabbitfish = {
        WeightPool = {
            25, 
            60
        }, 
        Chance = 1, 
        Rarity = "Legendary", 
        Resilience = 35, 
        ProgressEfficiency = 0.8, 
        Description = "The Rabbitfish is an elusive saltwater fish that is only found under The Arch. They are odd creatures that both resemble a rabbit, and swim in a pattern similar to a bunny jumping.", 
        Hint = "Found under The Arch.", 
        FavouriteBait = "Seaweed", 
        FavouriteTime = nil, 
        Price = 1100, 
        XP = 800, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Woah!! A Rabbitfish!", 
            "A Rabbit!!", 
            "I caught a Rabbitfish!"
        }, 
        SparkleColor = Color3.fromRGB(204, 142, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Ocean"
    }, 
    Dolphin = {
        WeightPool = {
            1500, 
            2000
        }, 
        Chance = 0.8, 
        Rarity = "Legendary", 
        Resilience = 5, 
        ProgressEfficiency = 0.95, 
        Description = "The Dolphin is a playful, intelligent marine mammal known for its sleek body, curved dorsal fin, and high intelligence. Dolphins are fast swimmers, known for jumping out of the water in graceful arcs and interacting with boats and swimmers. Found in the ocean.", 
        Hint = "Found in the ocean.", 
        FavouriteBait = "None", 
        FavouriteTime = "Day", 
        Price = 1200, 
        XP = 600, 
        Seasons = {
            "Summer", 
            "Spring"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "I caught a Dolphin!", 
            "It's a Dolphin!", 
            "A DOLPHINN!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("heavybasic"), 
        From = "Ocean"
    }, 
    Sawfish = {
        WeightPool = {
            4000, 
            6000
        }, 
        Chance = 0.7, 
        Rarity = "Legendary", 
        Resilience = 10, 
        Description = "The Sawfish is a large, unique fish with a long, flattened snout that is lined with sharp teeth, resembling a saw. They are found all across the ocean mostly during the night.", 
        Hint = "found all around the ocean during the night.", 
        FavouriteBait = "Fish Head", 
        FavouriteTime = "Night", 
        Price = 1500, 
        XP = 900, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A Sawfish!", 
            "Chainsawfish!", 
            "I caught a Sawfish!", 
            "Woah, a Sawfish!"
        }, 
        SparkleColor = Color3.fromRGB(161, 199, 255), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Ocean"
    }, 
    Oarfish = {
        WeightPool = {
            1500, 
            2500
        }, 
        Chance = 0.01, 
        Rarity = "Mythical", 
        Resilience = 15, 
        ProgressEfficiency = 0.7, 
        Description = "The Oarfish is a massive, snake-like creatures that dwell in the deep ocean. they are often mistaken for sea serpents or mythical creatures. Their presence is considered an omen by many ancient cultures.", 
        Hint = "???", 
        FavouriteBait = "Squid", 
        FavouriteTime = nil, 
        Price = 4000, 
        XP = 2000, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "WOAH! An Oarfish!", 
            "I Caught an Oarfish!", 
            "It's an Oarfish!", 
            "Oar Oar Oar Oar Oar"
        }, 
        SparkleColor = Color3.fromRGB(255, 51, 51), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Ocean"
    }, 
    ["Great White Shark"] = {
        WeightPool = {
            7000, 
            12000
        }, 
        Chance = 2, 
        Rarity = "Mythical", 
        Resilience = 8, 
        ProgressEfficiency = 0.7, 
        Description = "Great White Sharks are apex predators and will put up an intense fight when hooked. Their presence is often a sign of rich, diverse marine life in the area. Rare and challenging, they offer one of the biggest rewards for those skilled enough to catch them.", 
        Hint = "Only rarely spotted in the oceans during a Shark Hunt.", 
        FavouriteBait = "Fish Head", 
        FavouriteTime = nil, 
        Price = 6000, 
        XP = 900, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "WOAH!! I CAUGHT A GREAT WHITE!", 
            "A GREAT WHITE??", 
            "HOLY.. A GREAT WHITE??", 
            "I CAN'T FEEL MY SPINE!!"
        }, 
        SparkleColor = Color3.fromRGB(93, 123, 255), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Ocean", 
        Shark = true
    }, 
    ["Great Hammerhead Shark"] = {
        WeightPool = {
            2300, 
            5000
        }, 
        Chance = 2, 
        Rarity = "Mythical", 
        Resilience = 20, 
        ProgressEfficiency = 0.65, 
        Description = "The Great Hammerhead Shark is a large, powerful predator known for its distinct hammer-shaped head. Its unique head shape improves its ability to track prey, making it a formidable hunter in the ocean, and a prominent catch among anglers.", 
        Hint = "Only rarely spotted in the oceans during a Shark Hunt. Only awake during the day.", 
        FavouriteBait = "Fish Head", 
        FavouriteTime = "Day", 
        Price = 5500, 
        XP = 860, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "Windy"
        }, 
        Quips = {
            "WOAH!! I CAUGHT A GREAT HAMMERHEAD!", 
            "A GREAT HAMMERHEAD??", 
            "HOLY.. A GREAT HAMMERHEAD??", 
            "I CAN'T FEEL MY SPINE!!", 
            "HAMMERTIME!", 
            "Comically large hammer head!!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Ocean", 
        Shark = true
    }, 
    ["Mythic Fish"] = {
        WeightPool = {
            6, 
            14
        }, 
        Chance = 0.01, 
        Rarity = "Mythical", 
        Resilience = 40, 
        ProgressEfficiency = 0.4, 
        Description = "The Mythic Fish is an extremely rare and beautiful fish. They swim gracefully in couples of two near the surface of the ocean water. They seem weak, but they can oddly put up a strong fight when being caught. This is due to the other Mythic Fish attempting to aid it's partner by pulling it off the hook.", 
        Hint = "Found in the Ocean.", 
        FavouriteBait = "Flakes", 
        FavouriteTime = "Day", 
        Price = 2000, 
        XP = 800, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Oh no.. Where is it's partner?", 
            "A Mythic Fish!!", 
            "I Caught a Mythic Fish!!!", 
            "NO WAY! A Mythic Fish!"
        }, 
        SparkleColor = Color3.fromRGB(255, 199, 32), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Ocean"
    }, 
    ["Sea Pickle"] = {
        WeightPool = {
            4, 
            10
        }, 
        Chance = 0.01, 
        Rarity = "Mythical", 
        Resilience = 50, 
        Description = "The Sea Pickle is a quirky, small, tube-like sea creature found on ocean beds. Its glowing green body gives off a faint bioluminescent light, making it easy to spot at night. It's know to wriggle out of nets and rods, making it a tricky catch. Despite its unassuming appearance, it's highly valued for its oddity and unique glow.", 
        Hint = "Found in the ocean. Can be caught in rods and cages.", 
        FavouriteBait = "Seaweed", 
        FavouriteTime = "Night", 
        Price = 2000, 
        XP = 60, 
        Seasons = {
            "Autumn", 
            "Summer"
        }, 
        Weather = {
            "Clear", 
            "Foggy"
        }, 
        Quips = {
            "A SEA PICKLE!!", 
            "I CAUGHT A SEA PICKLE!", 
            "A Sea pickle!"
        }, 
        SparkleColor = Color3.fromRGB(121, 255, 80), 
        HoldAnimation = l_fish_0:WaitForChild("small"), 
        From = "Ocean"
    }, 
    ["Colossal Squid"] = {
        WeightPool = {
            7000, 
            12000
        }, 
        Chance = 0.02, 
        Rarity = "Mythical", 
        Resilience = 5, 
        ProgressEfficiency = 0.3, 
        Description = "The Colossal Squid is a massive, deep-sea creature with enormous tentacles and large appetite for anglers. Known for its incredible size and strength, it lurks in the deepest parts of the ocean, only occasionally venturing near the surface during the nights.", 
        Hint = "???", 
        FavouriteBait = "None", 
        FavouriteTime = "Night", 
        Price = 6500, 
        XP = 3000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "WOAH. A COLOSSAL SQUID!!", 
            "MY BACCKK", 
            "I CAN'T BELIEVE IT! COLOSSAL SQUID!"
        }, 
        SparkleColor = Color3.fromRGB(255, 82, 82), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Ocean"
    }, 
    ["Whale Shark"] = {
        WeightPool = {
            100000, 
            150000
        }, 
        Chance = 0.01, 
        Rarity = "Mythical", 
        Resilience = 50, 
        ProgressEfficiency = 0.3, 
        Description = "Whale Sharks are large but friendly sharks, as opposed to other sharks found in the Ocean. They are most active during the day, where they swim around in search of small organisms to eat. Despite being playful and harmless, they will still put up quite a hefty fight when hooked.", 
        Hint = "Only rarely spotted in the oceans during a Shark Hunt near the Desolate Deep.", 
        FavouriteBait = "Shrimp", 
        FavouriteTime = "Day", 
        Price = 6500, 
        XP = 3000, 
        Seasons = {
            "Summer", 
            "Autumn"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "WOAH! A WHALE SHARKKKK!", 
            "NO WAY!!", 
            "I CAUGHT A WHALE SHARK!!", 
            "WUHWUHWUHWUHWUHWHALE SHARK??!!"
        }, 
        SparkleColor = Color3.fromRGB(187, 190, 255), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Ocean", 
        Shark = true
    }, 
    ["Long Pike"] = {
        BlockPassiveCapture = true, 
        WeightPool = {
            12, 
            35
        }, 
        Chance = 0.005, 
        Rarity = "Secret", 
        Resilience = 55, 
        Description = "Looooooooooooooooooong Piiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiike", 
        Hint = "???", 
        FavouriteBait = "Insect", 
        FavouriteTime = nil, 
        Price = 18000, 
        XP = 6600, 
        Seasons = {
            "Autumn", 
            "Spring"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A Long Pike!", 
            "I caught a Long Pike!", 
            "Woah! a Long Pike!", 
            "LONG PIKE!!!", 
            "A Long Pike?!", 
            "That's a long Pike!"
        }, 
        SparkleColor = Color3.fromRGB(93, 140, 109), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Ocean"
    }, 
    Mustard = {
        BlockPassiveCapture = true, 
        WeightPool = {
            10, 
            40
        }, 
        Chance = 0.004, 
        Rarity = "Secret", 
        Resilience = 45, 
        Description = "A bulbous and rotund yellow pufferfish.", 
        Hint = "???", 
        FavouriteBait = "Seaweed", 
        FavouriteTime = nil, 
        Price = 19000, 
        XP = 7000, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "Mustard!", 
            "I caught Mustard!", 
            "Woah! Mustard!", 
            "MUSTARD!!!", 
            "Mustard?!", 
            "Augh..."
        }, 
        SparkleColor = Color3.fromRGB(241, 173, 0), 
        HoldAnimation = l_fish_0:WaitForChild("small"), 
        From = "Ocean"
    }, 
    Chub = {
        WeightPool = {
            10, 
            30
        }, 
        Chance = 100, 
        Rarity = "Common", 
        Resilience = 80, 
        Description = "The Chub is a hardy and adaptable freshwater fish, typically found in Roslit Pond. The Chub is an easy catch for novice anglers and is thankfully a common catch.", 
        Hint = "commonly caught in Roslit Pond.", 
        FavouriteBait = "Seaweed", 
        FavouriteTime = "Day", 
        Price = 40, 
        XP = 40, 
        Seasons = {
            "Spring", 
            "Summer"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "I caught a Chub!", 
            "Woah, a Chub!!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Roslit"
    }, 
    Perch = {
        WeightPool = {
            2, 
            12
        }, 
        Chance = 80, 
        Rarity = "Common", 
        Resilience = 70, 
        Description = "The Perch is a common freshwater fish that is best found in Roslit Bays fresh water. They are known for their striped bodies and a playful behaviour.", 
        Hint = "Found in freshwater of Roslit.", 
        FavouriteBait = "Worm", 
        FavouriteTime = nil, 
        Price = 70, 
        XP = 80, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Perch!", 
            "I caught a Perch!", 
            "Woah, a Perch!", 
            "Aww! A Perch!"
        }, 
        SparkleColor = Color3.fromRGB(119, 163, 77), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Roslit"
    }, 
    Minnow = {
        WeightPool = {
            1, 
            6
        }, 
        Chance = 60, 
        Rarity = "Common", 
        Resilience = 90, 
        Description = "Minnows are found in Roslit Bays pond and are easiest to find during the clear spring days. Minnows are commonly found in schools of 4 to 6 fish. They also create a great baitfish!", 
        Hint = "Lives in Roslit Bays pond. Very easy to catch with bagels.", 
        FavouriteBait = "Bagel", 
        FavouriteTime = nil, 
        Price = 45, 
        XP = 75, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "Ouu a Minnow!", 
            "Woah, a Minnow!", 
            "A Minnow!", 
            "I caught a Minnow!", 
            "Aw! I caught a Baitfish!"
        }, 
        SparkleColor = Color3.fromRGB(161, 161, 161), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Roslit"
    }, 
    Pearl = {
        WeightPool = {
            1, 
            4
        }, 
        Chance = 60, 
        Rarity = "Common", 
        Resilience = 100, 
        Description = "A common pearl with some imperfections. [Contribution by @Johnny_D3pp]", 
        Hint = "From catching Clams.", 
        FavouriteBait = "None", 
        FavouriteTime = nil, 
        Price = 60, 
        XP = 0, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Ooo, Shiny!!!"
        }, 
        SparkleColor = Color3.fromRGB(255, 239, 231), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Roslit", 
        IsPearl = true
    }, 
    Pumpkinseed = {
        WeightPool = {
            1, 
            5
        }, 
        Chance = 65, 
        Rarity = "Uncommon", 
        Resilience = 80, 
        Description = "Pumpkinseed are known for their distinctive red or orange edge on the ear flap and their round body shape. They prefer warmer waters and are often found in Roslit Bays freshwater. Pumpkinseed are also much less aggressive compared to other sunfish species.", 
        Hint = "Found in Roslit freshwater during warm days.", 
        FavouriteBait = "Minnow", 
        FavouriteTime = nil, 
        Price = 90, 
        XP = 30, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Pumpkinseed!", 
            "I caught a Pumpkinseed!", 
            "Can it hear me?", 
            "Woah.. Cool ears!"
        }, 
        SparkleColor = Color3.fromRGB(255, 60, 60), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Roslit"
    }, 
    Clownfish = {
        WeightPool = {
            1, 
            6
        }, 
        Chance = 60, 
        Rarity = "Uncommon", 
        Resilience = 70, 
        Description = "The clownfish, known for its vibrant orange and white stripes, is a small, hardy reef dweller. Often found alongside coral and see anemones inside the reef of Roslit Bay.\t\t\tBest paired with the Blue Tang!", 
        Hint = "Found in Roslit Bays coral reef.", 
        FavouriteBait = "Flakes", 
        FavouriteTime = nil, 
        Price = 90, 
        XP = 90, 
        Seasons = {
            "Spring", 
            "Summer"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "Ouu a Clownfish!", 
            "Woah, a Clownfish!", 
            "A Clownfish!", 
            "I caught a Clownfish!", 
            "I caught a Clownfish!", 
            "What kind of circus is this?"
        }, 
        SparkleColor = Color3.fromRGB(255, 167, 43), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Roslit"
    }, 
    ["Blue Tang"] = {
        WeightPool = {
            3, 
            15
        }, 
        Chance = 60, 
        Rarity = "Uncommon", 
        Resilience = 65, 
        Description = "The Blue Tang is most renowned for its vivid blue coloration and yellow tail. Often found alongside coral and see anemones inside the reef of Roslit Bay.\t\t\tBest paired with the Clownfish!", 
        Hint = "Found in Roslit Bays coral reef.", 
        FavouriteBait = "Flakes", 
        FavouriteTime = "Day", 
        Price = 90, 
        XP = 90, 
        Seasons = {
            "Spring", 
            "Summer"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Ouu a Blue Tang!", 
            "Woah, a Blue Tang!", 
            "A Blue Tang!", 
            "I caught a Blue Tang!", 
            "I caught a Blue Tang!", 
            "Found her!"
        }, 
        SparkleColor = Color3.fromRGB(48, 69, 255), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Roslit"
    }, 
    Butterflyfish = {
        WeightPool = {
            2, 
            15
        }, 
        Chance = 40, 
        Rarity = "Uncommon", 
        Resilience = 60, 
        Description = "Butterflyfish are vibrant reef fish known for their striking colors and elaborate patterns. They feed and behave similar to other fish found in Roslit Bays coral reef.", 
        Hint = "Found in Roslit Bays coral reef.", 
        FavouriteBait = "Flakes", 
        FavouriteTime = "Day", 
        Price = 110, 
        XP = 60, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Clear", 
            "Foggy"
        }, 
        Quips = {
            "Ouu a Butterflyfish!", 
            "Woah, a Butterflyfish!", 
            "It's so pretty!"
        }, 
        SparkleColor = Color3.fromRGB(255, 249, 80), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Roslit"
    }, 
    ["Gilded Pearl"] = {
        WeightPool = {
            1, 
            4
        }, 
        Chance = 25, 
        Rarity = "Unusual", 
        Resilience = 100, 
        Description = "A golden pearl with a shiny appearance... Could this hold special powers within it...?", 
        Hint = "From catching Clams.", 
        FavouriteBait = "None", 
        FavouriteTime = nil, 
        Price = 120, 
        XP = 0, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Must be expensive.."
        }, 
        SparkleColor = Color3.fromRGB(255, 213, 108), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Roslit", 
        IsPearl = true
    }, 
    Angelfish = {
        WeightPool = {
            5, 
            20
        }, 
        Chance = 40, 
        Rarity = "Unusual", 
        Resilience = 60, 
        Description = "Angelfish are colorful and striking reef dwellers, known for their vibrant patterns and graceful swimming. Found in Roslit bays coral reef, they are a fun and elegant part of Roslits ecosystem.", 
        Hint = "Found in Roslit Bays coral reef.", 
        FavouriteBait = "Worm", 
        FavouriteTime = nil, 
        Price = 120, 
        XP = 60, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "Ouu an Angelfish!", 
            "Woah, an Angelfish!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Roslit"
    }, 
    Squid = {
        WeightPool = {
            5, 
            25
        }, 
        Chance = 25, 
        Rarity = "Unusual", 
        Resilience = 45, 
        Description = "Squids can be found best at night in the surrounding ocean of Roslit Bay. Squids are rapid swimmers and largely locate their prey by sight. Squids are extremely intelligent and can even hunt in cooperative groups.", 
        Hint = "Best found at night in ocean near Roslit Bay.", 
        FavouriteBait = "Shrimp", 
        FavouriteTime = "Night", 
        Price = 140, 
        XP = 95, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A Squid!", 
            "A cute Squid!", 
            "I caught a Squid!"
        }, 
        SparkleColor = Color3.fromRGB(255, 173, 102), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Roslit"
    }, 
    ["Ribbon Eel"] = {
        WeightPool = {
            5, 
            150
        }, 
        Chance = 12, 
        Rarity = "Unusual", 
        Resilience = 30, 
        Description = "The ribbon eel is a striking and elusive reef fish known for its vibrant blue or green body and long, ribbon-like appearance. While they are rare, the Ribbon Eel can be best found in the coral reef of Roslit Bay", 
        Hint = "Only comes out at night. Can be found inside the coral reef of Roslit Bay.", 
        FavouriteBait = "Minnow", 
        FavouriteTime = nil, 
        Price = 150, 
        XP = 150, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Is it a snake?", 
            "A Ribbon Eel!", 
            "I think some slime got on me.", 
            "Woah! A Ribbon Eel!", 
            "H-eel-lo! Ribbon Eel!"
        }, 
        SparkleColor = Color3.fromRGB(70, 141, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Roslit"
    }, 
    ["Yellow Boxfish"] = {
        WeightPool = {
            5, 
            20
        }, 
        Chance = 18, 
        Rarity = "Unusual", 
        Resilience = 40, 
        Description = "Yellow Boxfish are known for their odd box-shaped body along with their vibrant yellow hue. Despite the cute appearance, they are incredibly toxic to the touch. They lurk around the coral reefs of Roslit Bay during the day.", 
        Hint = "Found in Roslit Bays coral reef.", 
        FavouriteBait = "Seaweed", 
        FavouriteTime = "Day", 
        Price = 140, 
        XP = 100, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "Ouu a Yellow Boxfish!", 
            "Woah, a Yellow Boxfish!"
        }, 
        SparkleColor = Color3.fromRGB(255, 222, 57), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Roslit"
    }, 
    Clam = {
        WeightPool = {
            9, 
            10
        }, 
        Chance = 60, 
        Rarity = "Unusual", 
        Resilience = 70, 
        Description = "The Clam is an interesting fish that is found behind Roslit Bay. They are quite sought after because they yield a valuable pearl once caught. [Contribution by @Johnny_D3pp]", 
        Hint = "Found behind Roslit Bay.", 
        FavouriteBait = "Seaweed", 
        FavouriteTime = nil, 
        Price = 13, 
        XP = 25, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A Clam!", 
            "I caught a Clam!", 
            "Woah, a Clam!", 
            "Wan go clam?"
        }, 
        SparkleColor = Color3.fromRGB(212, 126, 255), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Roslit"
    }, 
    ["Rose Pearl"] = {
        WeightPool = {
            1, 
            4
        }, 
        Chance = 25, 
        Rarity = "Unusual", 
        Resilience = 100, 
        Description = "A pearl with a powerful pink hue.", 
        Hint = "From catching Clams.", 
        FavouriteBait = "None", 
        FavouriteTime = nil, 
        Price = 145, 
        XP = 0, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Pink! My favorite :')"
        }, 
        SparkleColor = Color3.fromRGB(255, 201, 238), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Roslit", 
        IsPearl = true
    }, 
    Arapaima = {
        WeightPool = {
            1000, 
            2000
        }, 
        Chance = 15, 
        Rarity = "Rare", 
        Resilience = 30, 
        Description = "Arapaima are massive freshwater fish with large, broad bodies and a distinctive, armor-like scaled appearance. They have a unique respiratory system that allows them to breathe air, as well as gills.", 
        Hint = "Found in Roslit Bays freshwater during the day.", 
        FavouriteBait = "Minnow", 
        FavouriteTime = nil, 
        Price = 250, 
        XP = 150, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Rain", 
            "Foggy"
        }, 
        Quips = {
            "An Arapaima!", 
            "I caught an Arapaima!", 
            "Woah, an Arapaima!"
        }, 
        SparkleColor = Color3.fromRGB(154, 39, 39), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Roslit"
    }, 
    ["Alligator Gar"] = {
        WeightPool = {
            200, 
            450
        }, 
        Chance = 45, 
        Rarity = "Rare", 
        Resilience = 40, 
        Description = "The Alligator Gar is a large, vicious freshwater fish that can be found in Roslit Bays pond. Gars track back to 100 million years ago, giving them the nickname as a 'living fossil'.", 
        Hint = "Can be found in lakes during summer.", 
        FavouriteBait = "None", 
        FavouriteTime = nil, 
        Price = 220, 
        XP = 100, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "I caught a Gar!", 
            "It's an Alligator Gar!", 
            "A Gar!!", 
            "Woah, an Alligator Gar!", 
            "Aye!! A Gar!", 
            "Oh my Gar!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Roslit"
    }, 
    ["Suckermouth Catfish"] = {
        WeightPool = {
            95, 
            170
        }, 
        Chance = 35, 
        Rarity = "Rare", 
        Resilience = 60, 
        Description = "The Suckermouth Catfish is a tropical freshwater fish found on the ground and near the seaweed of Roslits Bays pond. They are easily notable for their large armour like scutes covering their upper parts of the head and body.", 
        Hint = "Found best near seaweed of Roslit Bays pond.", 
        FavouriteBait = "Seaweed", 
        FavouriteTime = "Day", 
        Price = 160, 
        XP = 80, 
        Seasons = {
            "Spring", 
            "Autumn"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Suckermouth Catfish!", 
            "I caught a Catfish!", 
            "Woah, a Suckermouth!"
        }, 
        SparkleColor = Color3.fromRGB(158, 128, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Roslit"
    }, 
    ["Mauve Pearl"] = {
        WeightPool = {
            1, 
            4
        }, 
        Chance = 10, 
        Rarity = "Rare", 
        Resilience = 100, 
        Description = "A somber purple pearl.", 
        Hint = "From catching Clams.", 
        FavouriteBait = "None", 
        FavouriteTime = nil, 
        Price = 200, 
        XP = 0, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Whoah! Pretty"
        }, 
        SparkleColor = Color3.fromRGB(197, 178, 255), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Roslit", 
        IsPearl = true
    }, 
    ["Dumbo Octopus"] = {
        WeightPool = {
            15, 
            40
        }, 
        Chance = 0.1, 
        Rarity = "Legendary", 
        Resilience = 30, 
        ProgressEfficiency = 0.85, 
        Description = "The Dumbo Octopus is a deep-sea dweller, named for its ear like fins that resemble the ears of Disney's famous elephant character. With a soft, gelatinous body and gentle movements, it glides through the oceans and coral reefs of Roslit Bay.", 
        Hint = "Caught in Roslit Bays coral reef.", 
        FavouriteBait = "Worm", 
        FavouriteTime = nil, 
        Price = 900, 
        XP = 400, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "Woah, I caught a Dumbo!", 
            "A Dumbo Octopus!", 
            "No way! A Dumbo Octupus!"
        }, 
        SparkleColor = Color3.fromRGB(255, 142, 90), 
        HoldAnimation = l_fish_0:WaitForChild("small"), 
        From = "Roslit"
    }, 
    Axolotl = {
        WeightPool = {
            5, 
            15
        }, 
        Chance = 0.05, 
        Rarity = "Legendary", 
        Resilience = 75, 
        ProgressEfficiency = 0.9, 
        Description = "Axolotls are small carnivorous creatures who reside in the Roslit Bay pond. They are nocturnal creatures and are known to hunt primarily worms. They are well known for their ability to regenerate and adorable faces.", 
        Hint = "Caught in Roslit Bays pond at night.", 
        FavouriteBait = "Insect", 
        FavouriteTime = "Night", 
        Price = 1000, 
        XP = 550, 
        Seasons = {
            "Spring", 
            "Autumn"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "This an Axolotl..", 
            "An Axolotl!", 
            "It's so cute!", 
            "That's a cute axolotl!"
        }, 
        SparkleColor = Color3.fromRGB(255, 131, 131), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        ViewportSizeOffset = 2, 
        From = "Roslit"
    }, 
    ["Deep Pearl"] = {
        WeightPool = {
            1, 
            4
        }, 
        Chance = 5, 
        Rarity = "Legendary", 
        Resilience = 100, 
        Description = "A gloomy pearl embued with the essence of the deep ocean.", 
        Hint = "From catching Clams.", 
        FavouriteBait = "None", 
        FavouriteTime = nil, 
        Price = 880, 
        XP = 0, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Surely there's some lore behind this.."
        }, 
        SparkleColor = Color3.fromRGB(82, 39, 255), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Roslit", 
        IsPearl = true
    }, 
    ["Manta Ray"] = {
        WeightPool = {
            7750, 
            10000
        }, 
        Chance = 0.01, 
        Rarity = "Mythical", 
        Resilience = 10, 
        ProgressEfficiency = 0.9, 
        Description = "Manta Rays are very elegant and remarkably large creatures that coast alongside the coral reefs of Roslit Bay. They move their wing-like fins in a wavy motion to generate enough speed to guide through the ocean. Manta Rays typically feed on small fish during the night.", 
        Hint = "Found gliding through Roslit Bays coral reef during the night.", 
        FavouriteBait = "Shrimp", 
        FavouriteTime = "Night", 
        Price = 3000, 
        XP = 1000, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "WOAH.. A Manta Ray!", 
            "I caught a Manta Ray!", 
            "Woah.. A Manta Ray!!", 
            "Hol-ey Mol-ray!"
        }, 
        SparkleColor = Color3.fromRGB(87, 118, 255), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Roslit"
    }, 
    ["Aurora Pearl"] = {
        WeightPool = {
            1, 
            4
        }, 
        Chance = 2.5, 
        Rarity = "Mythical", 
        Resilience = 100, 
        Description = "The colors and light of the Aurora Borealis is prevalent within this glowing pearl.", 
        Hint = "From catching Clams.", 
        FavouriteBait = "None", 
        FavouriteTime = nil, 
        Price = 2250, 
        XP = 0, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Aurora!?! Like borealis?"
        }, 
        SparkleColor = Color3.fromRGB(106, 255, 188), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Roslit", 
        IsPearl = true
    }, 
    ["Golden Sea Pearl"] = {
        WeightPool = {
            1, 
            4
        }, 
        Chance = 0.2, 
        Rarity = "Exotic", 
        Resilience = 100, 
        Description = "A strikingly shiny pearl, rumored to have originated from the deepest depths of Atlantis.", 
        Hint = "From catching Clams.", 
        FavouriteBait = "None", 
        FavouriteTime = nil, 
        Price = 3500, 
        XP = 600, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Golden... So.. SHINY"
        }, 
        SparkleColor = Color3.fromRGB(255, 228, 130), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Roslit", 
        IsPearl = true
    }, 
    Basalt = {
        WeightPool = {
            150, 
            210
        }, 
        Chance = 55, 
        Rarity = "Trash", 
        Resilience = 120, 
        Description = "Basalt, also known as Lava Rock, is an igneous volcanic rock that forms when molten lava cools and solidifies. Very common to find when in a volcanic area.", 
        Hint = "Found in active Volcanoes", 
        FavouriteBait = "Magnet", 
        FavouriteTime = nil, 
        Price = 15, 
        XP = 10, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Ermm..?", 
            "Uhmm..?", 
            "Some Basalt!", 
            "Oh. A Piece of Basalt.", 
            "It's!- Oh.. Basalt..", 
            "Basalt.."
        }, 
        SparkleColor = Color3.fromRGB(59, 59, 59), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Roslit Volcano"
    }, 
    ["Volcanic Geode"] = {
        WeightPool = {
            200, 
            200
        }, 
        Chance = 17, 
        Rarity = "Rare", 
        Resilience = 120, 
        Description = "The Volcanic Geode encases a magma crystal core, preserving its contents with an amber-like quality. Within this geode, you might find a trove of rare or extinct treasures\226\128\148 it's like a volcanic Christmas!", 
        Hint = "Chipped off a volcanic geode.", 
        FavouriteBait = "Magnet", 
        FavouriteTime = nil, 
        BuyMult = 3, 
        Price = 200, 
        XP = 20, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Ooo, shiny!", 
            "A rock...?!", 
            "Woah! Glowy thing!", 
            "A Geode!", 
            "What's this thing?"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("crate"), 
        IsCrate = true, 
        CrateType = "All", 
        BaitContents = {
            "Coal", 
            "Coal", 
            "Coal", 
            "Coal", 
            "Maggot", 
            "Maggot", 
            "Minnow", 
            "Truffle Worm", 
            "Coal", 
            "Night Shrimp", 
            "Rapid Catcher", 
            "Instant Catcher", 
            "Super Flakes", 
            "Night Shrimp", 
            "Rapid Catcher", 
            "Super Flakes"
        }, 
        FishContents = {
            "Ember Snapper", 
            "Pyrogrub", 
            "Sturgeon", 
            "Magma Tang", 
            "Alligator Gar", 
            "Pufferfish", 
            "Sea Urchin", 
            "Sea Urchin", 
            "Perch", 
            "Perch", 
            "Perch", 
            "Angelfish", 
            "Rock", 
            "Rock", 
            "Rock", 
            "Magma Tang"
        }, 
        CoinContents = {
            150, 
            500
        }, 
        From = "Roslit Volcano"
    }, 
    ["Magma Tang"] = {
        WeightPool = {
            6, 
            30
        }, 
        Chance = 50, 
        Rarity = "Uncommon", 
        Resilience = 40, 
        Description = "The Magma Tang is a rare lava imbued Tang with a resting body temperature of 950C. They are extremely common in the lava, as they practically are part of the lava.", 
        Hint = "Found in Roslit Volcano during the day.", 
        FavouriteBait = "Coal", 
        FavouriteTime = "Day", 
        Price = 130, 
        XP = 90, 
        Seasons = {
            "Spring", 
            "Summer"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Ouu a Blue Tang!", 
            "Woah, a Blue Tang!", 
            "A Blue Tang!", 
            "I caught a Blue Tang!", 
            "I caught a Blue Tang!", 
            "Found her!.. But evil!"
        }, 
        SparkleColor = Color3.fromRGB(255, 158, 73), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Roslit Volcano"
    }, 
    ["Ember Snapper"] = {
        WeightPool = {
            60, 
            120
        }, 
        Chance = 50, 
        Rarity = "Unusual", 
        Resilience = 40, 
        Description = "The Ember Snapper is a lava swimming fish with a resemblance to the salt water 'Red Snapper'. The Ember Snapper is acute in volcanic habitats due to their thick skin and strong dorsal fins.", 
        Hint = "Found in volcanic regions.", 
        FavouriteBait = "Coal", 
        FavouriteTime = nil, 
        Price = 200, 
        XP = 120, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "An Ember Snapper!", 
            "Woah! I caught an Ember Snapper!", 
            "I caught an Ember Snapper!", 
            "Ember Snapper!!!", 
            "It burns!"
        }, 
        SparkleColor = Color3.fromRGB(191, 39, 25), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Roslit Volcano"
    }, 
    ["Ember Perch"] = {
        WeightPool = {
            4, 
            15
        }, 
        Chance = 80, 
        Rarity = "Unusual", 
        Resilience = 40, 
        Description = "The Ember Perch is a lava swimming fish with a resemblance to the fresh water 'Perch'. The Ember Perch is acute in volcanic habitats due to their thick skin and ability to turn coal and carbon into a food source.", 
        Hint = "Found in volcanic regions.", 
        FavouriteBait = "None", 
        FavouriteTime = nil, 
        Price = 160, 
        XP = 100, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "An Ember Perch!", 
            "I caught a Perch!.. Why is it so hot?", 
            "Woah, a Perch! Why is it on fire?", 
            "Aww! An Ember Perch!", 
            "Woah! An Ember Perch!"
        }, 
        SparkleColor = Color3.fromRGB(255, 19, 19), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Roslit Volcano"
    }, 
    Pyrogrub = {
        WeightPool = {
            300, 
            600
        }, 
        Chance = 25, 
        Rarity = "Rare", 
        Resilience = 25, 
        ProgressEfficiency = 0.8, 
        Description = "The Pyrogrub is a fearsome, lava swimming eel that thrives in the most volcanic of environments. The Pyrogrub sports thick dragon-like scales which allow it's inner body to not react to any form of outside temperature.", 
        Hint = "Found in volcanic regions.", 
        FavouriteBait = "Coal", 
        FavouriteTime = nil, 
        Price = 340, 
        XP = 120, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Pyrogrub!", 
            "I caught a Pyrogrub!", 
            "Woah, a Pyrogrub!", 
            "What the?!"
        }, 
        SparkleColor = Color3.fromRGB(255, 151, 46), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Roslit Volcano"
    }, 
    ["Obsidian Salmon"] = {
        WeightPool = {
            40, 
            180
        }, 
        Chance = 3, 
        Rarity = "Legendary", 
        Resilience = 15, 
        ProgressEfficiency = 0.9, 
        Description = "The Obsidian Salmon is an extremely rare breed of Sockeye Salmon. The Obsidian Salmon breeds extremely deep in the heart of Roslit Volcano. They are extremely strong and are twice as dense as a common Sockeye Salmon.", 
        Hint = "???", 
        FavouriteBait = "Coal", 
        FavouriteTime = "Night", 
        Price = 600, 
        XP = 300, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Obsidian Salmoff!", 
            "Woah! An Obsidian Salmon!", 
            "Awesome! An Obsidian Salmon", 
            "An Obsidian Salmon!", 
            "Woah, An Obsidian Salmon!", 
            "A Salmon!..? Made of obsidian?"
        }, 
        SparkleColor = Color3.fromRGB(102, 0, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Roslit Volcano"
    }, 
    ["Obsidian Swordfish"] = {
        WeightPool = {
            1000, 
            2500
        }, 
        Chance = 0.01, 
        Rarity = "Mythical", 
        Resilience = 20, 
        ProgressEfficiency = 0.8, 
        Description = "Swordfish are extremely strong and notable due to their long flattened bill that resembles a sword, as their name implies. This swordfish has adapted to it's magma filled life, and is now imbued with Obsidian skin.", 
        Hint = "???", 
        FavouriteBait = "Minnow", 
        FavouriteTime = nil, 
        Price = 2500, 
        XP = 1000, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Windy", 
            "Clear"
        }, 
        Quips = {
            "An Obsidian Swordfish!", 
            "WOAH! An Obsidian Swordfish!!", 
            "OBSIDIANNN SWORDFISHHHH", 
            "I caught an Obsidian Swordfish!!"
        }, 
        SparkleColor = Color3.fromRGB(176, 79, 255), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        ViewportSizeOffset = 0.9, 
        From = "Roslit Volcano"
    }, 
    ["Molten Banshee"] = {
        WeightPool = {
            3000, 
            5500
        }, 
        Chance = 0.01, 
        FinalChanceDivisor = 3, 
        Rarity = "Exotic", 
        Resilience = 40, 
        ProgressEfficiency = 0.65, 
        Description = "The Molten Banshee is a complex fish of unknown terrestrial origin, that has resided inside the Roslit Volcano. It possesses a torpedo-like body with many sharp mandibles and scorching hot encrustments. They are rumored to have possibly come from another planet, and may be a bio-mechanical lifeform.", 
        Hint = "???", 
        FavouriteBait = "Truffle Worm", 
        FavouriteTime = nil, 
        Price = 6500, 
        XP = 2000, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Molten Banshee!", 
            "WOAH! A Molten Banshee!!", 
            "MOLTEN BANSHEEEEEEEEE", 
            "I caught a Molten Banshee!!"
        }, 
        SparkleColor = Color3.fromRGB(255, 92, 28), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Roslit Volcano"
    }, 
    Ice = {
        WeightPool = {
            40, 
            60
        }, 
        Chance = 35, 
        Rarity = "Trash", 
        Resilience = 90, 
        Description = "Chunk of ice that broke off from a glacier in Snowcap. Kinda fun to lick..", 
        Hint = "Found in frozen bodies of water.", 
        FavouriteBait = "Magnet", 
        FavouriteTime = nil, 
        Price = 15, 
        XP = 10, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Ermm..?", 
            "Uhmm..?", 
            "A block of Ice!", 
            "Oh. Ice.", 
            "Ouu! Let me lick it!", 
            "Ice..", 
            "It's not a popsicle, but it will do!"
        }, 
        SparkleColor = Color3.fromRGB(171, 255, 245), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Snowcap"
    }, 
    Bluegill = {
        WeightPool = {
            1, 
            6
        }, 
        Chance = 85, 
        Rarity = "Common", 
        Resilience = 90, 
        Description = "A small, round freshwater fish with bright blue and orange hues, easily recognized by its distinct gill spot. It can be found all over the waters of Snowcap.", 
        Hint = "Found in saltwater\226\128\153s near Snowcap.", 
        FavouriteBait = "Insect", 
        FavouriteTime = nil, 
        Price = 60, 
        XP = 90, 
        Seasons = {
            "Summer", 
            "Spring"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Bluegill!", 
            "But I pinked the Red Pill!", 
            "I caught a Bluegill!!", 
            "Lovely, a Bluegill!"
        }, 
        SparkleColor = Color3.fromRGB(149, 255, 188), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Snowcap"
    }, 
    Grayling = {
        WeightPool = {
            5, 
            20
        }, 
        Chance = 75, 
        Rarity = "Common", 
        Resilience = 70, 
        Description = "An interesting, cold-water fish with shimmering silver scales and a signature large, colourful dorsal fin. It is known for it's beauty and its agile swimming behaviour. The Grayling is often found in Snowcap Pond during the day, but it can rarely be found at night.", 
        Hint = "Found in Snowcap Pond during the day.", 
        FavouriteBait = "Insect", 
        FavouriteTime = "Day", 
        Price = 80, 
        XP = 100, 
        Seasons = {
            "Spring", 
            "Summer"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A Grayling!", 
            "I caught a Grayling!", 
            "Oh, a Grayling!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Snowcap"
    }, 
    ["Red Drum"] = {
        WeightPool = {
            10, 
            25
        }, 
        Chance = 40, 
        Rarity = "Common", 
        Resilience = 50, 
        Description = "The Red Drum is a close relative to the Black Drum; Red Drum can be found all around Snowcaps vast salt-waters.", 
        Hint = "Found in salt-water of Snowcap.", 
        FavouriteBait = "Insect", 
        FavouriteTime = nil, 
        Price = 80, 
        XP = 50, 
        Seasons = {
            "Spring", 
            "Autumn"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Red Drum!", 
            "I caught a Red Drum!", 
            "Woah, a Drum!", 
            "It'a Red Drum!", 
            "All I see is Red Drum."
        }, 
        SparkleColor = Color3.fromRGB(255, 49, 49), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Snowcap"
    }, 
    Herring = {
        WeightPool = {
            5, 
            11
        }, 
        Chance = 80, 
        Rarity = "Common", 
        Resilience = 80, 
        Description = "The Herring is a slender silvery fish known for its schooling behaviour. Herring can often be found in costal waters during the day.", 
        Hint = "Found commonly in the coast of Snowcaps salt-water during the day.", 
        FavouriteBait = "Shrimp", 
        FavouriteTime = "Day", 
        Price = 70, 
        XP = 50, 
        Seasons = {
            "Summer", 
            "Spring"
        }, 
        Weather = {
            "Clear", 
            "Windy"
        }, 
        Quips = {
            "A Herring!", 
            "I caught a Herring!", 
            "Oh, a Herring!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Snowcap"
    }, 
    Pollock = {
        WeightPool = {
            10, 
            50
        }, 
        Chance = 80, 
        Rarity = "Common", 
        Resilience = 60, 
        Description = "Pollock are sleek, silver fish with a light belly contrasting a darker dorsal. They are fast swimmers and often found feeding under Snowcap Islands docks.", 
        Hint = "Found in Snowcap island, especially near the docks.", 
        FavouriteBait = "None", 
        FavouriteTime = nil, 
        Price = 70, 
        XP = 50, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Foggy", 
            "Rain"
        }, 
        Quips = {
            "A Pollock!", 
            "I caught a Pollock!", 
            "Woah, a Pollock!", 
            "Look! A Pollock!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Snowcap"
    }, 
    ["Arctic Char"] = {
        WeightPool = {
            20, 
            60
        }, 
        Chance = 40, 
        Rarity = "Uncommon", 
        Resilience = 50, 
        Description = "The Arctic Char is a striking fish commonly known for its vibrant reddish-orange belly and long mouth. They can be found in the cold salt-waters of Snowcap Island.", 
        Hint = "Found in open salt-water near Snowcap.", 
        FavouriteBait = "Insect", 
        FavouriteTime = nil, 
        Price = 80, 
        XP = 50, 
        Seasons = {
            "Spring", 
            "Autumn"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Char!", 
            "I caught an Arctic Char!", 
            "Woah, a Char!", 
            "It's an Arctic Char!"
        }, 
        SparkleColor = Color3.fromRGB(255, 83, 83), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Snowcap"
    }, 
    Burbot = {
        WeightPool = {
            10, 
            35
        }, 
        Chance = 50, 
        Rarity = "Uncommon", 
        Resilience = 50, 
        Description = "The Burbot is a long, slender freshwater fish with a mottled brown and green appearance, resembling a cross between a catfish and an eel. Burbots are known for being active in colder temperatures, particularly under the ice in Snowcap Pond.", 
        Hint = "Found in Snowcap Pond.", 
        FavouriteBait = "Minnow", 
        FavouriteTime = nil, 
        Price = 80, 
        XP = 110, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A Burbot!", 
            "I caught a Burbot!", 
            "Oh, a Burbot!"
        }, 
        SparkleColor = Color3.fromRGB(194, 255, 129), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Snowcap"
    }, 
    Blackfish = {
        WeightPool = {
            5, 
            20
        }, 
        Chance = 80, 
        Rarity = "Uncommon", 
        Resilience = 60, 
        Description = "Blackfish are small, black, nighttime swimmers that can be most commonly found in the cold the rocky waters of Snowcap Pond.", 
        Hint = "Found in Snowcap Pond during the night.", 
        FavouriteBait = "Worm", 
        FavouriteTime = "Night", 
        Price = 100, 
        XP = 100, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Blackfish!", 
            "I caught a Blackfish!", 
            "Oh, a Blackfish!"
        }, 
        SparkleColor = Color3.fromRGB(113, 113, 113), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Snowcap"
    }, 
    ["Skipjack Tuna"] = {
        WeightPool = {
            70, 
            160
        }, 
        Chance = 40, 
        Rarity = "Unusual", 
        Resilience = 45, 
        Description = "The Skipjack Tuna can be caught near Snowcap Island. They are extremely agile swimmers, allowing them to put up a strong fight against anglers.", 
        Hint = "Found near Snowcap Island.", 
        FavouriteBait = "None", 
        FavouriteTime = nil, 
        Price = 150, 
        XP = 100, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "I caught a Tuna!", 
            "A Skipjack Tuna!", 
            "Woah, a Skipjack Tuna!", 
            "I caught a Skipjack Tuna!"
        }, 
        SparkleColor = Color3.fromRGB(162, 174, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Snowcap"
    }, 
    ["Glacier Pike"] = {
        WeightPool = {
            12, 
            35
        }, 
        Chance = 45, 
        Rarity = "Unusual", 
        Resilience = 55, 
        Description = "Pikes are a long, predatory freshwater fish known for its aggressive nature and sharp teeth. Glacier Pikes are supremely found in cold freshwaters in Snowcap Island. They can be determined by their unique ice-coloured scales and longer fins.", 
        Hint = "Found in Snowcaps freshwater. Seems to prefer insect baits.", 
        FavouriteBait = "Insect", 
        FavouriteTime = nil, 
        Price = 230, 
        XP = 90, 
        Seasons = {
            "Autumn", 
            "Spring"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A Glacier Pike!", 
            "I caught a Glacier Pike!", 
            "Woah! a Glacier Pike!", 
            "GLACIER PIKE!!!", 
            "I'd prefer a lance.", 
            "A Glacier Pike?!", 
            "That's a big Glacier Pike!"
        }, 
        SparkleColor = Color3.fromRGB(93, 140, 109), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Snowcap"
    }, 
    Lingcod = {
        WeightPool = {
            40, 
            140
        }, 
        Chance = 40, 
        Rarity = "Unusual", 
        Resilience = 50, 
        ProgressEfficiency = 0.95, 
        Description = "A large, aggressive predator with mottled brown and green skin, known for its sharp teeth and oddly fierce fighting behaviour when hooked. They can be found in ocean water near Snowcap during the day. They are especially active near the water-side enterance of Snowcap Cave.", 
        Hint = "Found in Snowcaps ocean water during the day. Especially active near the water-side enterance of Snowcap Cave.", 
        FavouriteBait = "Fish Head", 
        FavouriteTime = "Day", 
        Price = 110, 
        XP = 80, 
        Seasons = {
            "Autumn", 
            "Summer"
        }, 
        Weather = {
            "Windy"
        }, 
        Quips = {
            "I caught a Lingcod!", 
            "Woah! this is freaky!", 
            "A Lingcod!", 
            "It's a Lingcod!"
        }, 
        SparkleColor = Color3.fromRGB(76, 115, 55), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Snowcap"
    }, 
    Sturgeon = {
        WeightPool = {
            200, 
            800
        }, 
        Chance = 20, 
        Rarity = "Rare", 
        Resilience = 35, 
        Description = "A massive, ancient fish with a long, armoured body and distinctive bony plates. Sturgeons are known for their size and strength, making them challenging to catch.", 
        Hint = "found in Snowcap Pond.", 
        FavouriteBait = "Seaweed", 
        FavouriteTime = nil, 
        Price = 300, 
        XP = 100, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Sturgeon!", 
            "I AMM.. I AMM A STURGEON!!", 
            "I caught a Sturgeon Fish!", 
            "A Sturgeon!!", 
            "Woahh a Sturgeon!"
        }, 
        SparkleColor = Color3.fromRGB(232, 232, 232), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Snowcap"
    }, 
    ["Pond Emperor"] = {
        WeightPool = {
            1000, 
            2500
        }, 
        Chance = 0.05, 
        Rarity = "Legendary", 
        Resilience = 25, 
        ProgressEfficiency = 0.6, 
        Description = "Pond Emperors are highly territorial, powerful swimmers that will consume almost anything. Their striking coloration, aggressive nature, and rare appearances make them a prized and fortunate catch for anglers.", 
        Hint = "Found in Snowcap Pond.", 
        FavouriteBait = "Squid", 
        FavouriteTime = nil, 
        Price = 900, 
        XP = 700, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Pond Emperor!", 
            "WOAH! A Pond Emperor!!", 
            "Pond Emperor!", 
            "I caught a Pond Emperor!!"
        }, 
        SparkleColor = Color3.fromRGB(136, 39, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Snowcap"
    }, 
    Ringle = {
        WeightPool = {
            1, 
            4
        }, 
        Chance = 0.01, 
        Rarity = "Mythical", 
        Resilience = 80, 
        ProgressEfficiency = 0.5, 
        Description = "The Ringle is an interesting and elusive fish that swims at extremely low and cold depths. They have a Rhino-like horn that they use to attack their prey. Most commonly found in the open ocean of Snowcap Island.", 
        Hint = "Found in the open ocean of Snowcap Island during the night.", 
        FavouriteBait = "Bagel", 
        FavouriteTime = "Night", 
        Price = 900, 
        XP = 500, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Clear", 
            "Foggy"
        }, 
        Quips = {
            "A Ringle!", 
            "I caught a Ringle!", 
            "A Ringle!!", 
            "Woah, a Ringle!"
        }, 
        SparkleColor = Color3.fromRGB(87, 224, 255), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Snowcap"
    }, 
    Glacierfish = {
        WeightPool = {
            400, 
            600
        }, 
        Chance = 0.02, 
        Rarity = "Mythical", 
        Resilience = 10, 
        ProgressEfficiency = 0.85, 
        Description = "Glacierfish are cold saltwater fish with large, broad bodies and a distinctive pink fin colouration. They are an extremely rare fish and can sometimes be a difficult catch for any angler. They can be found more commonly in Snowcap Caves during the night.", 
        Hint = "Found in Snowcap Caves during the night. Big fan of the Truffle Worm.", 
        FavouriteBait = "Truffle Worm", 
        FavouriteTime = "Night", 
        Price = 800, 
        XP = 400, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Rain", 
            "Foggy"
        }, 
        Quips = {
            "A Glacierfish!", 
            "I caught a Glacierfish!", 
            "Woah, a Glacierfish!", 
            "It's beautiful..!"
        }, 
        SparkleColor = Color3.fromRGB(161, 233, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Snowcap"
    }, 
    Sweetfish = {
        WeightPool = {
            2, 
            5
        }, 
        Chance = 75, 
        Rarity = "Common", 
        Resilience = 85, 
        Description = "The Sweetfish is known for its delicate sweet flavour, and its golden hue. They are very commonly found in short river-like gap of Sunstone Island.", 
        Hint = "Found in the centre gap of Sunstone Island.", 
        FavouriteBait = "Worm", 
        FavouriteTime = nil, 
        Price = 40, 
        XP = 25, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Sweetfish!", 
            "Is there a sour one?", 
            "Woah! A Sweetfish!", 
            "Hope it's not artificially sweet!"
        }, 
        SparkleColor = Color3.fromRGB(157, 255, 96), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Sunstone"
    }, 
    Glassfish = {
        WeightPool = {
            1, 
            4
        }, 
        Chance = 90, 
        Rarity = "Common", 
        Resilience = 90, 
        Description = "The glassfish is a small, transparent fish with a delicate, almost invisible body that makes it well-suited for avoiding predators. It is a common find within the waters of Sunstone Island.", 
        Hint = "Found in Sunstone Island.", 
        FavouriteBait = "Flakes", 
        FavouriteTime = nil, 
        Price = 45, 
        XP = 50, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "Ouu a Glassfish!", 
            "Woah, a Glassfish!", 
            "I can barely see it!"
        }, 
        SparkleColor = Color3.fromRGB(126, 126, 126), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Sunstone"
    }, 
    ["Longtail Bass"] = {
        WeightPool = {
            20, 
            40
        }, 
        Chance = 50, 
        Rarity = "Uncommon", 
        Resilience = 70, 
        Description = "The Longtail Bass is a striking species known for its elongated tail fin and vibrant coloration. It can be found all over the ocean, and is also a common catch of Sunstone Island!", 
        Hint = "Found in open ocean water and in Sunstone.", 
        FavouriteBait = "Shrimp", 
        FavouriteTime = nil, 
        Price = 120, 
        XP = 70, 
        Seasons = {
            "Spring", 
            "Summer"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A Longtail Bass!", 
            "I caught a Longtail Bass!"
        }, 
        SparkleColor = Color3.fromRGB(255, 89, 89), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Sunstone"
    }, 
    ["Red Tang"] = {
        WeightPool = {
            3, 
            15
        }, 
        Chance = 55, 
        Rarity = "Uncommon", 
        Resilience = 65, 
        Description = "The Red Tang is a relatively common catch within Sunstone Island. Very similar to other Tangs such as the Blue Tang, just red!", 
        Hint = "Found in Sunstone Island.", 
        FavouriteBait = "Flakes", 
        FavouriteTime = nil, 
        Price = 100, 
        XP = 90, 
        Seasons = {
            "Spring", 
            "Summer"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Ouu a Red Tang!", 
            "Woah, a Red Tang!", 
            "A Red Tang!", 
            "I caught a Red Tang!", 
            "I caught a Red Tang!", 
            "Found her!.. But red!"
        }, 
        SparkleColor = Color3.fromRGB(255, 82, 82), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Sunstone"
    }, 
    Chinfish = {
        WeightPool = {
            20, 
            40
        }, 
        Chance = 70, 
        Rarity = "Uncommon", 
        Resilience = 80, 
        Description = "The Chinfish is a peculiar species with a distinct chin-like protrusion on its lower jaw. They are sluggish swimmers and are an interesting catch to have on the other side of your line.", 
        Hint = "Caught near Sunstone Island.", 
        FavouriteBait = "None", 
        FavouriteTime = nil, 
        Price = 85, 
        XP = 40, 
        Seasons = {
            "Autumn", 
            "Winter"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "Woah, a Chinfish!", 
            "The Megachin!", 
            "I caught a Chinfish!", 
            "It's a Chinfish!", 
            "It's mewing!?"
        }, 
        SparkleColor = Color3.fromRGB(214, 214, 214), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Sunstone"
    }, 
    Trumpetfish = {
        WeightPool = {
            9, 
            20
        }, 
        Chance = 40, 
        Rarity = "Unusual", 
        Resilience = 60, 
        Description = "The Trumpetfish is a long, slender fish known for its tubular body and pointed snout. Its unique shape makes it a fascinating sight for visitors of Sunstone.", 
        Hint = "Found in the waters near Sunstone Island during the day.", 
        FavouriteBait = "Shrimp", 
        FavouriteTime = "Day", 
        Price = 100, 
        XP = 80, 
        Seasons = {
            "Autumn", 
            "Summer"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Woah, a Trumpetfish!", 
            "Baby Keem!", 
            "What a catch!", 
            "Holy.. This thing is weird.."
        }, 
        SparkleColor = Color3.fromRGB(247, 255, 98), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Sunstone"
    }, 
    ["Mahi Mahi"] = {
        WeightPool = {
            70, 
            150
        }, 
        Chance = 20, 
        Rarity = "Rare", 
        Resilience = 30, 
        Description = "The Mahi Mahi is a vibrant, fast-swimming fish known for its striking colors of blue, green, and yellow. They can be found all around Sunstone island, and is prized by many anglers.", 
        Hint = "Found near Sunstone Island.", 
        FavouriteBait = "None", 
        FavouriteTime = nil, 
        Price = 150, 
        XP = 90, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "Clear", 
            "Windy"
        }, 
        Quips = {
            "I caught a Mahi Mahi!", 
            "Woah, a Mahi Mahi!!", 
            "It's a Mahi Mahi!"
        }, 
        SparkleColor = Color3.fromRGB(255, 249, 89), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Sunstone"
    }, 
    Napoleonfish = {
        WeightPool = {
            250, 
            350
        }, 
        Chance = 19, 
        Rarity = "Rare", 
        Resilience = 40, 
        Description = "The Napoleonfish, also known as the Humphead Wrasse, is a large and brightly coloured fish with a distinctive bump on its forehead. Despite its size, it is surprisingly agile, making it a thrilling challenge for anglers.", 
        Hint = "Found easier in the outer waters of Sunstone Island during the day.", 
        FavouriteBait = "None", 
        FavouriteTime = "Day", 
        Price = 200, 
        XP = 100, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Windy"
        }, 
        Quips = {
            "A Napoleonfish!", 
            "I caught a Napoleonfish!", 
            "Woahh, a Napoleonfish!"
        }, 
        SparkleColor = Color3.fromRGB(90, 255, 195), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Sunstone"
    }, 
    Sunfish = {
        WeightPool = {
            4000, 
            10000
        }, 
        Chance = 1, 
        Rarity = "Legendary", 
        Resilience = 70, 
        ProgressEfficiency = 0.4, 
        Description = "Sunfish are the heaviest bony fish species alive today. Common sunfish can weigh up to one metric tonne but on rare instances they can way two metric tonnes! The largest appeal of the ocean Sunfish is the unusual shape of it's body and it's astonishing weight. Sunfish have the name for their love of basking in the sun by floating to the surface of the water.", 
        Hint = "Caught near Sunstone Island and can sometimes weigh over 1,000 kg.", 
        FavouriteBait = "None", 
        FavouriteTime = "Day", 
        Price = 1500, 
        XP = 550, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "I think my backbone snapped..", 
            "Woah!!", 
            "OH MY! A SUNFISH?", 
            "A sunfish!", 
            "Woah, a Sunfish!", 
            "Nice tan..", 
            "How did I pull this up?", 
            "A SUNFISH!", 
            "MOLA MOLA!"
        }, 
        SparkleColor = Color3.fromRGB(255, 232, 99), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Sunstone"
    }, 
    Wiifish = {
        WeightPool = {
            200, 
            400
        }, 
        Chance = 1, 
        Rarity = "Legendary", 
        Resilience = 40, 
        ProgressEfficiency = 0.8, 
        Description = "The Wiifish is a legendary tropic fish that can only be found in the saltwater\226\128\153s Sunstone Island during the day. They are an extremely old fish, dating back over 230,000,000 years ago. While the Wiifish is a slow swimmer, they can put up an immense fight for even advanced anglers.", 
        Hint = "Found rarely near Sunstone Island during the day.", 
        FavouriteBait = "None", 
        FavouriteTime = nil, 
        Price = 1200, 
        XP = 500, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Woah, a Wiifish!", 
            "This thing is super ancient!", 
            "A Wiifish!!", 
            "This brings me back!"
        }, 
        SparkleColor = Color3.fromRGB(255, 136, 51), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Sunstone"
    }, 
    Voltfish = {
        WeightPool = {
            8, 
            16
        }, 
        Chance = 0.01, 
        Rarity = "Mythical", 
        Resilience = 30, 
        ProgressEfficiency = 0.4, 
        Description = "The Voltfish is a lightning-fast relative of the Mythic Fish. They swim solo near the surface of the waters surrounding Sunstone, and make sporadic movements when hooked.", 
        Hint = "Found swimming near Sunstone Island during the Night.", 
        FavouriteBait = "Super Flakes", 
        FavouriteTime = "Night", 
        Price = 2200, 
        XP = 850, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A Voltfish!", 
            "Woah, a Voltfish!", 
            "Ouu! A Voltfish!", 
            "It zapped me!"
        }, 
        SparkleColor = Color3.fromRGB(255, 154, 71), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Sunstone"
    }, 
    ["Smallmouth Bass"] = {
        WeightPool = {
            5, 
            17
        }, 
        Chance = 75, 
        Rarity = "Common", 
        Resilience = 80, 
        Description = "The Smallmouth Bass is a popular freshwater fish known for its fighting spirit and preference for clear, cool waters. It has a streamlined body with a greenish-brown coloration and distinctive horizontal stripes.  It can be found in plenty of freshwaters, but is native to Terrapin Islands filtered water.", 
        Hint = "Can be found in freshwaters and in the filtered waters of Terrapin Island.", 
        FavouriteBait = "Worm", 
        FavouriteTime = nil, 
        Price = 70, 
        XP = 90, 
        Seasons = {
            "Spring", 
            "Summer"
        }, 
        Weather = {
            "Windy"
        }, 
        Quips = {
            "A Smallmouth Bass!", 
            "I caught a Smallmouth Bass!", 
            "Woah! A Smallmouth Bass!", 
            "Ouu! A Bass!"
        }, 
        SparkleColor = Color3.fromRGB(127, 255, 88), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Terrapin"
    }, 
    Gudgeon = {
        WeightPool = {
            1, 
            3
        }, 
        Chance = 80, 
        Rarity = "Common", 
        Resilience = 100, 
        Description = "The Gudgeon is an extremely small, slender fish. They are adaptable and can thrive in a variety of freshwater environments but are native and commonly found near Terrapin Island.", 
        Hint = "Found in the water of Terrapin Island.", 
        FavouriteBait = "Insect", 
        FavouriteTime = "Day", 
        Price = 40, 
        XP = 10, 
        Seasons = {
            "Spring", 
            "Summer"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "I can barely see it!", 
            "A Gudgeon.!", 
            "Oh, cool!"
        }, 
        SparkleColor = Color3.fromRGB(216, 251, 255), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Terrapin"
    }, 
    ["White Bass"] = {
        WeightPool = {
            3, 
            25
        }, 
        Chance = 60, 
        Rarity = "Uncommon", 
        Resilience = 70, 
        Description = "The White Bass is a slender, silvery fish with horizontal black stripes running along its body. It can be found in plenty of freshwaters, but is native to Terrapin Islands filtered water.", 
        Hint = "Can be found in freshwaters and in the filtered waters of Terrapin Island during the day.", 
        FavouriteBait = "Minnow", 
        FavouriteTime = "Day", 
        Price = 110, 
        XP = 50, 
        Seasons = {
            "Spring", 
            "Summer"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A White Bass!", 
            "I caught a White Bass!", 
            "Woah! A White Bass!", 
            "Ouu! A Bass!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Terrapin"
    }, 
    Walleye = {
        WeightPool = {
            18, 
            40
        }, 
        Chance = 60, 
        Rarity = "Uncommon", 
        Resilience = 70, 
        Description = "The Walleye is a predatory fish known for its sharp teeth and distinctive large eyes. The Walleye can be found around the East side of Terrapin Island.", 
        Hint = "Can be found near Terrapin Island.", 
        FavouriteBait = "Minnow", 
        FavouriteTime = nil, 
        Price = 90, 
        XP = 90, 
        Seasons = {
            "Spring", 
            "Autumn"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Woah! A Walleye!", 
            "I caught a Walleye!", 
            "Lovely, a Walleye!"
        }, 
        SparkleColor = Color3.fromRGB(113, 188, 96), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Terrapin"
    }, 
    ["Redeye Bass"] = {
        WeightPool = {
            3, 
            15
        }, 
        Chance = 40, 
        Rarity = "Unusual", 
        Resilience = 50, 
        Description = "The Redeye Bass looks very similar to the Largemouth Bass. However, the Redeye bass has very distinct red or orange eyes to go along with its greenish brown body.", 
        Hint = "Can be found in freshwaters and in the filtered waters of Terrapin Island during the day.", 
        FavouriteBait = "Flakes", 
        FavouriteTime = "Day", 
        Price = 115, 
        XP = 100, 
        Seasons = {
            "Spring", 
            "Autumn"
        }, 
        Weather = {
            "Windy"
        }, 
        Quips = {
            "A Redeyed Bass!", 
            "I caught a Redeye Bass!", 
            "Woah! A Redeye Bass!", 
            "Ouu! A Redeye Bass!"
        }, 
        SparkleColor = Color3.fromRGB(255, 29, 29), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Terrapin"
    }, 
    ["Chinook Salmon"] = {
        WeightPool = {
            100, 
            400
        }, 
        Chance = 30, 
        Rarity = "Unusual", 
        Resilience = 50, 
        Description = "The Chinook Salmon, also known as King Salmon, are large silver fish with a slightly forked tail and a black mouth. They are highly prized; and are a common target for sport and commercial fishing. The King Salmon are commonly in ocean waters, but during the Autumn they migrate to Terrapin Island to lay eggs.", 
        Hint = "Found in the waters of Terrapin Island, and general ocean waters.", 
        FavouriteBait = "Minnow", 
        FavouriteTime = nil, 
        Price = 230, 
        XP = 100, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Ou! A Chinook Salmon!", 
            "A King Salmon!", 
            "I Caught a King Salmon!", 
            "Woah, a King Salmon!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Terrapin"
    }, 
    ["King Oyster"] = {
        WeightPool = {
            4, 
            10
        }, 
        Chance = 20, 
        Rarity = "Rare", 
        Resilience = 95, 
        Description = "King Oysters are a special breed of oysters that can only be found around Terrapin Island. They filter almost all salt out of the water, making Terrapins water freshwater.", 
        Hint = "Can be easily caught while cage fishing. Only found near Terrapin Island.", 
        FavouriteBait = "None", 
        FavouriteTime = nil, 
        Price = 200, 
        XP = 35, 
        Seasons = {
            "Summer", 
            "Autumn"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "An Oyster!", 
            "Woah! A King Oyster", 
            "Awesome!", 
            "A King Oyster!", 
            "Ou! A King Oyster!"
        }, 
        SparkleColor = Color3.fromRGB(217, 215, 151), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Terrapin"
    }, 
    ["Golden Smallmouth Bass"] = {
        WeightPool = {
            15, 
            45
        }, 
        Chance = 4, 
        Rarity = "Legendary", 
        Resilience = 55, 
        Description = "A special and extremely rare breed of the Smallmouth Bass. They are extremely scarce in quantity, but they have slightly more haste and resilience than their cousins. Can be found alongside the Common Smallmouth Bass.", 
        Hint = "Swims fiercely in freshwater alongside their cousin; the Smallmouth Bass.", 
        FavouriteBait = "Flakes", 
        FavouriteTime = "Day", 
        Price = 700, 
        XP = 250, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "Now, where's the cymbol?", 
            "A Golden Bass??", 
            "Golden Bass!", 
            "A Golden Smallmouth Bass!", 
            "A Gold Bass!", 
            "I usually wear silver.", 
            "So shiny! A Golden Bass!"
        }, 
        SparkleColor = Color3.fromRGB(255, 205, 3), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Terrapin"
    }, 
    Olm = {
        WeightPool = {
            1, 
            4
        }, 
        Chance = 2, 
        Rarity = "Legendary", 
        Resilience = 80, 
        ProgressEfficiency = 0.95, 
        Description = "The Olm is an aquatic salamander which is an exclusively cave-dwelling species. The olm is mostly found in dark and moist areas of freshwater. They are most notable for their adaptations to a life of darkness with-in their caves. The Olm has severely under underdeveloped eyes, leaving it blind. This blindness gives them an acute sense of smell and hearing.", 
        Hint = "Resides on the floor of caves and dark rocky areas. Loves the night.", 
        FavouriteBait = "Flakes", 
        FavouriteTime = "Night", 
        Price = 900, 
        XP = 500, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Clear", 
            "Foggy"
        }, 
        Quips = {
            "An Olm!", 
            "I caught an Olm!", 
            "Olm.. my gosh!", 
            "An Olm!!", 
            "Woah, an Olm!", 
            "This ain't no Axolotl..", 
            "It looks like a recorder"
        }, 
        SparkleColor = Color3.fromRGB(255, 178, 178), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        ViewportSizeOffset = 2, 
        From = "Terrapin"
    }, 
    ["Sea Turtle"] = {
        WeightPool = {
            700, 
            1500
        }, 
        Chance = 0.005, 
        Rarity = "Mythical", 
        Resilience = 10, 
        ProgressEfficiency = 0.9, 
        Description = "The Sea Turtle is a graceful marine creature with a streamlined shell and paddle-like flippers, found gliding peacefully in warm coastal waters. Known for their calm demeanour and protected status, Sea Turtles are a rare and beautiful sight that often symbolizes good fortune.", 
        Hint = "Caught near Terrapin Island during the day.", 
        FavouriteBait = "None", 
        FavouriteTime = "Day", 
        Price = 2000, 
        XP = 1000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A TURTLEEE!", 
            "WOAH.. A TURTLE!", 
            "I like turtles :3", 
            "I caught a Sea Turtle!"
        }, 
        SparkleColor = Color3.fromRGB(160, 255, 83), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Terrapin"
    }, 
    Spiderfish = {
        WeightPool = {
            3, 
            10
        }, 
        Chance = 90, 
        Rarity = "Common", 
        Resilience = 90, 
        Description = "The Spiderfish is a rare void fish, caught only in Vertigos calm waters. They are schooling fish and are a common prey of Vertigos vicious predators.", 
        Hint = "Found commonly in Vertigo.", 
        FavouriteBait = "None", 
        FavouriteTime = nil, 
        Price = 30, 
        XP = 20, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "I caught a Spiderfish!", 
            "Ouu! A Spiderfish!", 
            "A Spiderfish!"
        }, 
        SparkleColor = Color3.fromRGB(53, 60, 79), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Vertigo"
    }, 
    ["Night Shrimp"] = {
        WeightPool = {
            1, 
            2
        }, 
        Chance = 45, 
        Rarity = "Common", 
        Resilience = 200, 
        Description = "Night Shrimp are small, versatile crustaceans that can be found in an abundance in Vertigo's calm water. night Shrimp are predominantly diurnal, making day fishing the most effective time.", 
        Hint = "Caught with crab cages in Vertigo.", 
        FavouriteBait = "None", 
        FavouriteTime = "Day", 
        Price = 55, 
        XP = 35, 
        Seasons = {
            "Summer", 
            "Winter"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Night Shrimp!", 
            "Woah! A Night Shrimp", 
            "Awesome!", 
            "A Night Shrimp!", 
            "Ou! A Night Shrimpy!"
        }, 
        SparkleColor = Color3.fromRGB(49, 51, 74), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Vertigo"
    }, 
    ["Twilight Eel"] = {
        WeightPool = {
            100, 
            200
        }, 
        Chance = 70, 
        Rarity = "Uncommon", 
        Resilience = 40, 
        Description = "The Twilight Eel, whilst resembling a giant tadpole, is an Eel. Twilight Eels are extremely slimy, and use the bulb on their head to attract prey.", 
        Hint = "Found in Vertigo's Dip.", 
        FavouriteBait = "Insect", 
        FavouriteTime = nil, 
        Price = 90, 
        XP = 100, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Woah, a Twilight Eel!", 
            "I caught an Eel!", 
            "It looks like a tadpole!"
        }, 
        SparkleColor = Color3.fromRGB(128, 255, 121), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Vertigo"
    }, 
    ["Fangborn Gar"] = {
        WeightPool = {
            170, 
            380
        }, 
        Chance = 50, 
        Rarity = "Unusual", 
        Resilience = 30, 
        Description = "The Fangborn Gar is a vicious Voidwater fish that is completely blind. They roam the waters aimlessly and use a sense of smell to track food in Vertigo Dip.", 
        Hint = "Found in Vertigo's cave water.", 
        FavouriteBait = "Fish Head", 
        FavouriteTime = nil, 
        Price = 170, 
        XP = 100, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A Gar!", 
            "I caught a Fangborn Gar!", 
            "Woah! A Fangborn Gar!", 
            "Oh my Gar!"
        }, 
        SparkleColor = Color3.fromRGB(32, 26, 48), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Vertigo"
    }, 
    Abyssacuda = {
        WeightPool = {
            55, 
            110
        }, 
        Chance = 20, 
        Rarity = "Rare", 
        Resilience = 10, 
        Description = "Abyssacudas are large predatory fish, known for their fearsome appearance and ferocious behaviour. They are adept swimmers, and are a top predator for the Twilight Eel. Abyssacudas are related to the Barracuda, however their cause for being primarily innate to Vertigo is unknown.", 
        Hint = "Found in Vertigos calm waters.", 
        FavouriteBait = "Minnow", 
        FavouriteTime = nil, 
        Price = 400, 
        XP = 90, 
        Seasons = {
            "Spring", 
            "Summer"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Woah, a n Abyssacuda!", 
            "I caught an Abyssacuda!", 
            "An Abyssacuda!!", 
            "Abyssacudaaaaa!!"
        }, 
        SparkleColor = Color3.fromRGB(87, 77, 116), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Vertigo"
    }, 
    ["Voidfin Mahi"] = {
        WeightPool = {
            75, 
            155
        }, 
        Chance = 10, 
        Rarity = "Rare", 
        Resilience = 10, 
        Description = "The Voidfin Mahi are extremely fast and sensitive fish. They can sense a heartbeat from hundreds of miles, and are capable of swimming through some solid bio-matters, such as wood.", 
        Hint = "Found in Vertigo.", 
        FavouriteBait = "Truffle Worm", 
        FavouriteTime = nil, 
        Price = 450, 
        XP = 400, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "Clear", 
            "Windy"
        }, 
        Quips = {
            "I caught a Voidfin Mahi!", 
            "Woah, a Voidfin Mahi!!", 
            "It's a Voidfin Mahi!"
        }, 
        SparkleColor = Color3.fromRGB(83, 67, 106), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Vertigo"
    }, 
    ["Rubber Ducky"] = {
        WeightPool = {
            1, 
            7
        }, 
        Chance = 0.01, 
        Rarity = "Legendary", 
        Resilience = 100, 
        ProgressEfficiency = 0.3, 
        Description = "A simple, squeezable, rubber duck! It may have been lost in one of the deepest parts of our discovered world... But, it's in great condition!", 
        Hint = "???", 
        FavouriteBait = "None", 
        FavouriteTime = nil, 
        Price = 900, 
        XP = 800, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A.. Rubber Duck..?", 
            "Woah!.. A Ducky??", 
            "Awesome!!!!!!!", 
            "Did someone lose this?", 
            "How did this get down here..?"
        }, 
        SparkleColor = Color3.fromRGB(255, 234, 115), 
        HoldAnimation = l_fish_0:WaitForChild("small"), 
        From = "Vertigo"
    }, 
    Isonade = {
        WeightPool = {
            6000, 
            13000
        }, 
        Chance = 0.1, 
        Rarity = "Mythical", 
        Resilience = 8, 
        ProgressEfficiency = 0.5, 
        Description = "The Isonade is a sinister creature that is assumed extinct. They are seeming to be a dream that is possible to be caught and captured. They only circle near Strange Whirlpools, can they even sometimes can be the cause for one.", 
        Hint = "Can be found when fishing in a strange whirlpool.", 
        FavouriteBait = "Truffle Worm", 
        FavouriteTime = nil, 
        Price = 8000, 
        XP = 1200, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "WOAH!! I CAUGHT AN ISONADE!", 
            "AN ISONADE??", 
            "HOLY.. AN ISONADE??", 
            "I CAN'T FEEL MY SPINE!!", 
            "THESE EXIST?"
        }, 
        SparkleColor = Color3.fromRGB(47, 29, 106), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Vertigo"
    }, 
    Ghoulfish = {
        WeightPool = {
            45, 
            120
        }, 
        Chance = 0.1, 
        Rarity = "Limited", 
        Resilience = 30, 
        ProgressEfficiency = 0.9, 
        Description = "The Ghoulfish is known for its eerie appearance. They only appear during FischFright season, and are a scary bite to have on the end of your rod.", 
        Hint = "Only can be caught during FischFright.", 
        FavouriteBait = "Squid", 
        FavouriteTime = nil, 
        Price = 1000, 
        XP = 600, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Ghoulfish!", 
            "I caught a Ghoulfish!", 
            "Woah! A Ghoulfish!", 
            "Ouu! A Ghoulfish!", 
            "what? there's nothing there..", 
            "\240\159\145\187\240\159\145\187\240\159\145\187"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        FromLimited = "FischFright", 
        From = "FischFright"
    }, 
    Lurkerfish = {
        WeightPool = {
            5, 
            20
        }, 
        Chance = 0.01, 
        Rarity = "Limited", 
        Resilience = 20, 
        ProgressEfficiency = 0.9, 
        Description = "The Lurkerfish is an interesting breed of the Anglerfish that is only visible during FischFright. It is said this fish gains its visible body from the though of FischFight, and during the rest of the year, the Lurkerfish is completely invisible to the untrained eye.", 
        Hint = "Only can be caught during FischFright.", 
        FavouriteBait = "Squid", 
        FavouriteTime = nil, 
        Price = 1500, 
        XP = 800, 
        Seasons = {
            "Winter", 
            "Autumn"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "Woah, a Lurkerfish!", 
            "No way! A Lurkerfish!", 
            "I caught a Lurkerfish!", 
            "I'm lurking..."
        }, 
        SparkleColor = Color3.fromRGB(140, 255, 176), 
        HoldAnimation = l_fish_0:WaitForChild("small"), 
        FromLimited = "FischFright", 
        From = "FischFright"
    }, 
    ["Candy Fish"] = {
        WeightPool = {
            5, 
            10
        }, 
        Chance = 10, 
        Rarity = "Limited", 
        Resilience = 50, 
        Description = "The Candy Fisch is a vibrant, bright coloured fish, formed from glucose and carbon. Known for their playful nature, and sweet gummy texture. Only can be caught during FischFright.", 
        Hint = "Only can be caught during FischFright.", 
        FavouriteBait = "Flakes", 
        FavouriteTime = nil, 
        Price = 200, 
        XP = 400, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "Woah, a Candy Fisch!", 
            "No way! A Candy Fisch!", 
            "I caught a Candy Fisch!"
        }, 
        SparkleColor = Color3.fromRGB(255, 51, 51), 
        HoldAnimation = l_fish_0:WaitForChild("small"), 
        FromLimited = "FischFright", 
        From = "FischFright"
    }, 
    Zombiefish = {
        WeightPool = {
            15, 
            30
        }, 
        Chance = 10, 
        Rarity = "Limited", 
        Resilience = 50, 
        Description = "Once a lifeless fish drifting to the surface, the Zombiefish was struck by lightning and brought back to life. Now reanimated, it prowls the waters during FischFright, haunting the tides with its undead presence.", 
        Hint = "Only can be caught during FischFright.", 
        FavouriteBait = "Flakes", 
        FavouriteTime = nil, 
        Price = 200, 
        XP = 400, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "Woah, a Zombiefish!", 
            "No way! A Zombiefish!", 
            "I caught a Zombiefish!", 
            "Rahh! I'm gonna eat your brains!"
        }, 
        SparkleColor = Color3.fromRGB(255, 51, 51), 
        HoldAnimation = l_fish_0:WaitForChild("small"), 
        FromLimited = "FischFright", 
        From = "FischFright"
    }, 
    Skelefish = {
        WeightPool = {
            5, 
            10
        }, 
        Chance = 10, 
        Rarity = "Limited", 
        Resilience = 50, 
        Description = "The Skelefish is a literal fish skeleton, eerily animated as if it still had flesh. Its bony structure drifts through the water, with jagged, rib-like bones and a hollow skull that stares blankly ahead. Only can be caught during FischFright.", 
        Hint = "Only can be caught during FischFright.", 
        FavouriteBait = "Fish Head", 
        FavouriteTime = nil, 
        Price = 200, 
        XP = 400, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "Woah, a Skelefish!", 
            "No way! A Skelefish!", 
            "I caught a Skelefish!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        FromLimited = "FischFright", 
        From = "FischFright"
    }, 
    Nessie = {
        BlockPassiveCapture = true, 
        WeightPool = {
            20000, 
            40000
        }, 
        Chance = 0.01, 
        Rarity = "Limited", 
        Resilience = 5, 
        ProgressEfficiency = 0.2, 
        Description = "Nessie is thought to be a complete myth. Little did these anglers know, you found the impossible catch... Nessie... Only obtainable during FischFright ", 
        Hint = "Only obtainable during FischFright", 
        FavouriteBait = "Truffle Worm", 
        FavouriteTime = "Night", 
        Price = 6500, 
        XP = 3000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "WOAH, NESSIE!?!", 
            "MY BACCKK", 
            "I CAN'T BELIEVE IT! NESSIE!", 
            "I DIDN'T THINK IT WAS REAL!!"
        }, 
        SparkleColor = Color3.fromRGB(129, 255, 181), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        FromLimited = "FischFright", 
        From = "FischFright"
    }, 
    ["Jack-o-Lantern"] = {
        BlockPassiveCapture = true, 
        WeightPool = {
            210, 
            350
        }, 
        Chance = 1, 
        FinalChanceDivisor = 30, 
        Rarity = "Limited", 
        Resilience = 30, 
        ProgressEfficiency = 0.4, 
        Description = "Someone carved this and threw it into the ocean for you to catch...", 
        Hint = "Only obtainable during FischFright; Caught while fishing anywhere during the event!", 
        FavouriteBait = "Gummy Fish", 
        FavouriteTime = nil, 
        Price = 1600, 
        XP = 1400, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "HELLOOO SPOOOKYYY MONTHH!!", 
            "Wait I knew who carved this???", 
            "AAAAAAAAAAAAAAA!!!!!!"
        }, 
        SparkleColor = Color3.fromRGB(126, 255, 216), 
        HoldAnimation = l_fish_0:WaitForChild("small"), 
        FromLimited = "FischFright 2", 
        From = "FischFright 2", 
        IsLimitedBestiary = true
    }, 
    ["Pumpkin Pufferfish"] = {
        WeightPool = {
            5, 
            20
        }, 
        Chance = 60, 
        Rarity = "Limited", 
        Resilience = 80, 
        Description = "A pufferfish with a spooky twist.", 
        Hint = "Only obtainable during FischFright; Caught while fishing at the Frightful Village!", 
        FavouriteBait = "Hallow-Pop", 
        FavouriteTime = "Night", 
        Price = 200, 
        XP = 150, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "\240\159\142\131", 
            "The Jack-o-Lantern muhaahaha", 
            "The chocolate Icing MUHAHAHAH", 
            "The SPOOKY version of the pufferfish."
        }, 
        SparkleColor = Color3.fromRGB(255, 227, 15), 
        HoldAnimation = l_fish_0:WaitForChild("small"), 
        FromLimited = "FischFright 2", 
        From = "FischFright 2", 
        IsLimitedBestiary = true
    }, 
    Frankenshrimp = {
        WeightPool = {
            1, 
            2
        }, 
        Chance = 90, 
        Rarity = "Limited", 
        Resilience = 100, 
        Description = "A shrimp that was deconstructed and reconstructed in the form of a zombie.", 
        Hint = "Only obtainable during FischFright; Caught while fishing at the Frightful Village!", 
        FavouriteBait = "Candy Corn", 
        FavouriteTime = "Day", 
        Price = 150, 
        XP = 100, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A Frankenshrimp!", 
            "How many times do you think it took to make this thing???", 
            "ZAWMBIEEE SHRAMPPP!!!"
        }, 
        SparkleColor = Color3.fromRGB(255, 107, 96), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        FromLimited = "FischFright 2", 
        From = "FischFright 2", 
        IsLimitedBestiary = true
    }, 
    ["Licorice Leech"] = {
        WeightPool = {
            3.2, 
            6.4
        }, 
        Chance = 60, 
        Rarity = "Limited", 
        Resilience = 90, 
        Description = "This creature's favorite candy is licorice, who would've guessed.", 
        Hint = "Only obtainable during FischFright; Obtained through Trick-or-Treating!", 
        FavouriteBait = "Gobstopper", 
        FavouriteTime = nil, 
        Price = 200, 
        XP = 150, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "What do you think this thing tastes like?", 
            "Licorice with a side of... Leech??", 
            "Didn't know a candy could have teeth like that."
        }, 
        SparkleColor = Color3.fromRGB(255, 107, 96), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        FromLimited = "FischFright 2", 
        From = "FischFright 2", 
        IsLimitedBestiary = true
    }, 
    ["Candle Carp"] = {
        WeightPool = {
            20, 
            70
        }, 
        Chance = 50, 
        Rarity = "Limited", 
        Resilience = 50, 
        Description = "A carp with a little spin on it, don't hold it for too long.", 
        Hint = "Only obtainable during FischFright; Caught while fishing at the Frightful Village!", 
        FavouriteBait = "Sour Gummy Worm", 
        FavouriteTime = "Night", 
        Price = 400, 
        XP = 250, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Windy"
        }, 
        Quips = {
            "Carp-tastic!", 
            "!!!", 
            "Woah! Grey Carp!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        FromLimited = "FischFright 2", 
        From = "FischFright 2", 
        IsLimitedBestiary = true
    }, 
    ["Spooky Relic"] = {
        WeightPool = {
            210, 
            210
        }, 
        Chance = 30, 
        Rarity = "Limited", 
        Resilience = 20, 
        ProgressEfficiency = 0.5, 
        Description = "A stone filled with the blessing of the Vampire King. Returning it to its throne under the Statue of Sovereignty will result in your currently equipped rod being engulfed in its power.", 
        Hint = "Only obtainable during FischFright; Obtained as a rare reward from Trick-or-Treating!", 
        FavouriteBait = "Gummy Fish", 
        FavouriteTime = "Day", 
        Price = 1000, 
        XP = 600, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "This is like a normal relic but scarier..", 
            "Woah.. A Spooky Relic??", 
            "Yippie A Spooky Relic!!"
        }, 
        SparkleColor = Color3.fromRGB(126, 255, 216), 
        HoldAnimation = l_fish_0:WaitForChild("small"), 
        FromLimited = "FischFright 2", 
        From = "FischFright 2", 
        IsLimitedBestiary = true
    }, 
    ["Eerie Relic"] = {
        WeightPool = {
            210, 
            210
        }, 
        Chance = 30, 
        Rarity = "Limited", 
        Resilience = 20, 
        ProgressEfficiency = 0.5, 
        Description = "A stone filled with the blessing of the Werewolf King. Returning it to its throne under the Statue of Sovereignty will result in your currently equipped rod being engulfed in its power.", 
        Hint = "Only obtainable during FischFright; Obtained as a rare reward from Trick-or-Treating!", 
        FavouriteBait = nil, 
        FavouriteTime = nil, 
        Price = 1000, 
        XP = 600, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "This is like a normal relic but more eerie..", 
            "Woah.. An Eerie Relic??", 
            "Yippie A Eerie Relic!!"
        }, 
        SparkleColor = Color3.fromRGB(126, 255, 216), 
        HoldAnimation = l_fish_0:WaitForChild("small"), 
        FromLimited = "FischFright 2", 
        From = "FischFright 2", 
        IsLimitedBestiary = true
    }, 
    ["Frightful Relic"] = {
        WeightPool = {
            210, 
            210
        }, 
        Chance = 30, 
        Rarity = "Limited", 
        Resilience = 20, 
        ProgressEfficiency = 0.5, 
        Description = "A stone filled with the blessing of the Pumpkin King. Returning it to its throne under the Statue of Sovereignty will result in your currently equipped rod being engulfed in its power.", 
        Hint = "Only obtainable during FischFright; Obtained as a rare reward from Trick-or-Treating!", 
        FavouriteBait = nil, 
        FavouriteTime = nil, 
        Price = 1000, 
        XP = 600, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "This is like a normal relic but I get a sense of frightfulness..", 
            "Woah.. A Frightful Relic??", 
            "Yippie A Frightful Relic!!"
        }, 
        SparkleColor = Color3.fromRGB(126, 255, 216), 
        HoldAnimation = l_fish_0:WaitForChild("small"), 
        FromLimited = "FischFright 2", 
        From = "FischFright 2", 
        IsLimitedBestiary = true
    }, 
    ["Ghost Minnow"] = {
        WeightPool = {
            1, 
            6
        }, 
        Chance = 90, 
        Rarity = "Limited", 
        Resilience = 100, 
        Description = "The ghost minnow, a distant relative to the normal minnow, the only difference is that one is translucent.", 
        Hint = "Only obtainable during FischFright; Caught while fishing at the Frightful Village!", 
        FavouriteBait = nil, 
        FavouriteTime = nil, 
        Price = 150, 
        XP = 100, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "WOAH A GHOST MINNOW!!! wait these exist??", 
            "What's the difference between this and a normal minnow?", 
            "Wow this fish is massive..!"
        }, 
        SparkleColor = Color3.fromRGB(161, 161, 161), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        FromLimited = "FischFright 2", 
        From = "FischFright 2", 
        IsLimitedBestiary = true
    }, 
    ["Mourning Manta Ray"] = {
        WeightPool = {
            7750, 
            10000
        }, 
        Chance = 5, 
        Rarity = "Limited", 
        Resilience = 5, 
        ProgressEfficiency = 0.1, 
        Description = "This Manta Ray has been through some things, hope it gets well soon <3.", 
        Hint = "Only obtainable during FischFright; Caught while fishing at the Frightful Village!", 
        FavouriteBait = "Sour Gummy Worm", 
        FavouriteTime = nil, 
        Price = 12000, 
        XP = 6000, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Windy"
        }, 
        Quips = {
            "Awe poor Manta Ray :(.", 
            "Rip Skelefish 24 - 24.", 
            "LLSF \240\159\149\138\239\184\143\240\159\149\138\239\184\143\240\159\149\138\239\184\143."
        }, 
        SparkleColor = Color3.fromRGB(87, 118, 255), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        FromLimited = "FischFright 2", 
        From = "FischFright 2", 
        IsLimitedBestiary = true
    }, 
    ["Caramel Chub"] = {
        WeightPool = {
            10, 
            30
        }, 
        Chance = 50, 
        Rarity = "Limited", 
        Resilience = 70, 
        Description = "You might not want to eat this, yeah it's caramel but I would be careful.", 
        Hint = "Only obtainable during FischFright; Obtained through Trick-or-Treating!", 
        FavouriteBait = "Gummy Fish", 
        FavouriteTime = "Night", 
        Price = 250, 
        XP = 200, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "I thought this would be sticky?", 
            "Woah, a Chub... But caramel??"
        }, 
        SparkleColor = Color3.fromRGB(193, 130, 58), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        FromLimited = "FischFright 2", 
        From = "FischFright 2", 
        IsLimitedBestiary = true
    }, 
    ["Candy Corn Cod"] = {
        WeightPool = {
            20, 
            100
        }, 
        Chance = 50, 
        Rarity = "Limited", 
        Resilience = 50, 
        Description = "It's very similar to a normal cod but this one was candified.", 
        Hint = "Only obtainable during FischFright; Obtained through Trick-or-Treating!", 
        FavouriteBait = "Hallow-Pop", 
        FavouriteTime = "Day", 
        Price = 400, 
        XP = 250, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Cod.. I swear this wasn't candy before??", 
            "I caught a Cod... But strangely this feels different.", 
            "mmmmm candy corn my favorite..."
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        FromLimited = "FischFright 2", 
        From = "FischFright 2", 
        IsLimitedBestiary = true
    }, 
    ["Frightful Crate"] = {
        WeightPool = {
            80, 
            80
        }, 
        Chance = 40, 
        Rarity = "Limited", 
        Resilience = 30, 
        Description = "A spooky wooden crate with fabric over top to preserve the bait inside. Seems like it came straight from the Pumpkin King. Opening it might give you an array of spooky baits.", 
        Hint = "Only obtainable during FischFright; Caught while fishing at the Frightful Village!", 
        FavouriteBait = "Magnet", 
        FavouriteTime = nil, 
        Price = 800, 
        Unpurchasable = true, 
        XP = 500, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "BOOO. Scared you didn't I.", 
            "Wow a bait crate with a SPOOOKYYY twist.", 
            "That's a pretty cool pumpkin face if you ask me."
        }, 
        SparkleColor = Color3.fromRGB(130, 130, 130), 
        HoldAnimation = l_fish_0:WaitForChild("crate"), 
        FromLimited = "FischFright 2", 
        From = "FischFright 2", 
        IsLimitedBestiary = true, 
        IsCrate = true, 
        CrateType = "All", 
        Currency = "Candy", 
        BaitContents = {
            "Gummy Fish", 
            "Hallow-Pop", 
            "Candy Corn", 
            "Gobstopper"
        }, 
        FishContents = {
            "Xtra Sour Gummy Pack", 
            "Caramel Chub", 
            "Gummy Guppy", 
            "Licorice Leech", 
            "Marshmallow Mackerel", 
            "Lollipop Lamprey"
        }, 
        CoinContents = {
            5, 
            10
        }
    }, 
    ["Xtra Sour Gummy Pack"] = {
        WeightPool = {
            8, 
            8
        }, 
        Chance = 0, 
        Rarity = "Limited", 
        Resilience = 130, 
        Description = "A sour pack of gummies; so sour even the fish would pucker!", 
        Hint = "Only obtainable during FischFright; ???", 
        FavouriteBait = nil, 
        FavouriteTime = nil, 
        Price = 100, 
        Unpurchasable = true, 
        XP = 50, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "YUMMY!"
        }, 
        SparkleColor = Color3.fromRGB(130, 130, 130), 
        HoldAnimation = l_fish_0:WaitForChild("crate"), 
        FromLimited = "FischFright 2", 
        From = "FischFright 2", 
        IsLimitedBestiary = true, 
        IsCrate = true, 
        CrateType = "Bait", 
        BaitContents = {
            "Sour Gummy Worm"
        }
    }, 
    Kelpie = {
        WeightPool = {
            500, 
            1500
        }, 
        Chance = 1, 
        Rarity = "Limited", 
        Resilience = 3, 
        ProgressEfficiency = 0.1, 
        Description = "A mythical water horse with a spooky aura, lurking in the frightful pools.", 
        Hint = "Only obtainable during FischFright; Exclusively caught from Frightful Pools!", 
        FavouriteBait = "Gummy Fish", 
        FavouriteTime = nil, 
        Price = 12500, 
        XP = 6500, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A Kelpie! Straight out of legends.", 
            "This horse-fish is eerie!", 
            "Beware its watery tricks."
        }, 
        SparkleColor = Color3.fromRGB(0, 128, 0), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        FromLimited = "FischFright 2", 
        From = "FischFright 2", 
        IsLimitedBestiary = true
    }, 
    ["Phantom Jellyfish"] = {
        WeightPool = {
            100, 
            300
        }, 
        Chance = 40, 
        Rarity = "Limited", 
        Resilience = 8, 
        ProgressEfficiency = 0.85, 
        Description = "A ghostly jellyfish that floats ethereally through the water.", 
        Hint = "Only obtainable during FischFright; Exclusively caught from Frightful Pools!", 
        FavouriteBait = "Hallow-Pop", 
        FavouriteTime = "Night", 
        Price = 800, 
        XP = 500, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Windy"
        }, 
        Quips = {
            "Phantom Jellyfish! So translucent.", 
            "It stings with spectral pain!", 
            "Boo! Jelly style."
        }, 
        SparkleColor = Color3.fromRGB(173, 216, 230), 
        HoldAnimation = l_fish_0:WaitForChild("small"), 
        FromLimited = "FischFright 2", 
        From = "FischFright 2", 
        IsLimitedBestiary = true
    }, 
    ["Vampire Perch"] = {
        WeightPool = {
            200, 
            600
        }, 
        Chance = 25, 
        Rarity = "Limited", 
        Resilience = 10, 
        ProgressEfficiency = 0.7, 
        Description = "A blood-sucking perch with fangs ready to bite.", 
        Hint = "Only obtainable during FischFright; Exclusively caught from Frightful Pools!", 
        FavouriteBait = "Candy Corn", 
        FavouriteTime = "Day", 
        Price = 1200, 
        XP = 700, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "Vampire Perch! Thirsty for blood?", 
            "Count Perchula!", 
            "It vantz to suck your bait."
        }, 
        SparkleColor = Color3.fromRGB(139, 0, 0), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        FromLimited = "FischFright 2", 
        From = "FischFright 2", 
        IsLimitedBestiary = true
    }, 
    ["Spider Salmon"] = {
        WeightPool = {
            300, 
            800
        }, 
        Chance = 20, 
        Rarity = "Limited", 
        Resilience = 12, 
        ProgressEfficiency = 0.55, 
        Description = "A salmon covered in web-like patterns, creepy and crawly.", 
        Hint = "Only obtainable during FischFright; Exclusively caught from Frightful Pools!", 
        FavouriteBait = "Gobstopper", 
        FavouriteTime = nil, 
        Price = 1800, 
        XP = 1000, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Spider Salmon! Eight legs? No, but spooky.", 
            "Webbing its way to your rod.", 
            "Arachno-fish!"
        }, 
        SparkleColor = Color3.fromRGB(128, 128, 128), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        FromLimited = "FischFright 2", 
        From = "FischFright 2", 
        IsLimitedBestiary = true
    }, 
    ["Werewolf Walleye"] = {
        WeightPool = {
            400, 
            1200
        }, 
        Chance = 18, 
        Rarity = "Limited", 
        Resilience = 14, 
        ProgressEfficiency = 0.4, 
        Description = "A walleye that howls at the moon, transforming under the night sky.", 
        Hint = "Only obtainable during FischFright; Exclusively caught from Frightful Pools!", 
        FavouriteBait = "Sour Gummy Worm", 
        FavouriteTime = "Night", 
        Price = 2200, 
        XP = 1300, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "Werewolf Walleye! Awooo!", 
            "Full moon special.", 
            "Bites harder at night."
        }, 
        SparkleColor = Color3.fromRGB(105, 105, 105), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        FromLimited = "FischFright 2", 
        From = "FischFright 2", 
        IsLimitedBestiary = true
    }, 
    ["Coffin Crab"] = {
        WeightPool = {
            50, 
            150
        }, 
        Chance = 45, 
        Rarity = "Limited", 
        Resilience = 20, 
        ProgressEfficiency = 0.9, 
        Description = "A crab that hides in coffin-like shells, emerging only to pinch.", 
        Hint = "Only obtainable during FischFright; Caught while fishing at the Frightful Village!", 
        FavouriteBait = "Gummy Fish", 
        FavouriteTime = "Day", 
        Price = 500, 
        XP = 300, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "Coffin Crab! Rest in pieces.", 
            "Pinchy undead.", 
            "Crab from the grave."
        }, 
        SparkleColor = Color3.fromRGB(139, 69, 19), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        FromLimited = "FischFright 2", 
        From = "FischFright 2", 
        IsLimitedBestiary = true
    }, 
    ["Ectoplasm Eel"] = {
        WeightPool = {
            150, 
            450
        }, 
        Chance = 30, 
        Rarity = "Limited", 
        Resilience = 25, 
        ProgressEfficiency = 0.8, 
        Description = "An eel made of glowing ectoplasm, slippery and supernatural.", 
        Hint = "Only obtainable during FischFright; Caught while fishing at the Frightful Village!", 
        FavouriteBait = "Hallow-Pop", 
        FavouriteTime = nil, 
        Price = 1000, 
        XP = 600, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Windy"
        }, 
        Quips = {
            "Ectoplasm Eel! Ghostly slime.", 
            "Shocking and spooky.", 
            "Eel from the beyond."
        }, 
        SparkleColor = Color3.fromRGB(50, 205, 50), 
        HoldAnimation = l_fish_0:WaitForChild("small"), 
        FromLimited = "FischFright 2", 
        From = "FischFright 2", 
        IsLimitedBestiary = true
    }, 
    ["Potion Perch"] = {
        WeightPool = {
            100, 
            300
        }, 
        Chance = 40, 
        Rarity = "Limited", 
        Resilience = 18, 
        ProgressEfficiency = 0.9, 
        Description = "A perch that brews mysterious potions in its belly.", 
        Hint = "Only obtainable during FischFright; Caught while fishing at the Frightful Village!", 
        FavouriteBait = "Gobstopper", 
        FavouriteTime = "Day", 
        Price = 700, 
        XP = 400, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Potion Perch! Magical brew.", 
            "What does it concoct?", 
            "Enchanted fish."
        }, 
        SparkleColor = Color3.fromRGB(148, 0, 211), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        FromLimited = "FischFright 2", 
        From = "FischFright 2", 
        IsLimitedBestiary = true
    }, 
    ["Gravestone Stingray"] = {
        WeightPool = {
            2000, 
            5000
        }, 
        Chance = 8, 
        Rarity = "Limited", 
        Resilience = 5, 
        ProgressEfficiency = 0.3, 
        Description = "A massive stingray shaped like a gravestone, haunting the depths.", 
        Hint = "Only obtainable during FischFright; Caught while fishing at the Frightful Village!", 
        FavouriteBait = "Sour Gummy Worm", 
        FavouriteTime = nil, 
        Price = 8000, 
        XP = 4000, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "Gravestone Stingray! Monumental catch.", 
            "RIP to my rod.", 
            "Sting from the grave."
        }, 
        SparkleColor = Color3.fromRGB(112, 128, 144), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        FromLimited = "FischFright 2", 
        From = "FischFright 2", 
        IsLimitedBestiary = true
    }, 
    ["Marshmallow Mackerel"] = {
        WeightPool = {
            50, 
            200
        }, 
        Chance = 50, 
        Rarity = "Limited", 
        Resilience = 50, 
        ProgressEfficiency = 1.1, 
        Description = "A sweet mackerel that tastes like toasted marshmallows.", 
        Hint = "Only obtainable during FischFright; Obtained through Trick-or-Treating!", 
        FavouriteBait = "Gummy Fish", 
        FavouriteTime = "Night", 
        Price = 400, 
        XP = 200, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "Marshmallow Mackerel! Fluffy fish.", 
            "Sweet and spooky.", 
            "Campfire favorite."
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        FromLimited = "FischFright 2", 
        From = "FischFright 2", 
        IsLimitedBestiary = true
    }, 
    ["Gummy Guppy"] = {
        WeightPool = {
            5, 
            15
        }, 
        Chance = 60, 
        Rarity = "Limited", 
        Resilience = 80, 
        Description = "A chewy guppy made entirely of gummy candy.", 
        Hint = "Only obtainable during FischFright; Obtained through Trick-or-Treating!", 
        FavouriteBait = "Hallow-Pop", 
        FavouriteTime = "Day", 
        Price = 200, 
        XP = 150, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Windy"
        }, 
        Quips = {
            "Gummy Guppy! Chewy delight.", 
            "Candy fish!", 
            "Sweet catch."
        }, 
        SparkleColor = Color3.fromRGB(255, 0, 0), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        FromLimited = "FischFright 2", 
        From = "FischFright 2", 
        IsLimitedBestiary = true
    }, 
    ["Lollipop Lamprey"] = {
        WeightPool = {
            10, 
            40
        }, 
        Chance = 55, 
        Rarity = "Limited", 
        Resilience = 60, 
        Description = "A lamprey with a lollipop for a head, sucking on sweets.", 
        Hint = "Only obtainable during FischFright; Obtained through Trick-or-Treating!", 
        FavouriteBait = "Candy Corn", 
        FavouriteTime = nil, 
        Price = 300, 
        XP = 200, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "Lollipop Lamprey! Sweet sucker.", 
            "Candy on a stick... fish?", 
            "Lick it?"
        }, 
        SparkleColor = Color3.fromRGB(255, 105, 180), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        FromLimited = "FischFright 2", 
        From = "FischFright 2", 
        IsLimitedBestiary = true
    }, 
    ["Baby Nessie"] = {
        WeightPool = {
            100, 
            400
        }, 
        Chance = 25, 
        Rarity = "Limited", 
        Resilience = 30, 
        ProgressEfficiency = 2, 
        Description = "A cute baby version of the legendary Nessie, with a spooky twist.", 
        Hint = "Only obtainable during FischFright; Obtained through Trick-or-Treating!", 
        FavouriteBait = "Gobstopper", 
        FavouriteTime = "Night", 
        Price = 11500, 
        XP = 6800, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Baby Nessie! Adorable monster.", 
            "Mini loch legend.", 
            "Aww, spooky cute."
        }, 
        SparkleColor = Color3.fromRGB(34, 139, 34), 
        HoldAnimation = l_fish_0:WaitForChild("small"), 
        FromLimited = "FischFright 2", 
        From = "FischFright 2", 
        IsLimitedBestiary = true
    }, 
    Scarecrow = {
        BlockPassiveCapture = true, 
        WeightPool = {
            200, 
            600
        }, 
        Chance = 1, 
        FinalChanceDivisor = 30, 
        Rarity = "Limited", 
        Resilience = 40, 
        ProgressEfficiency = 0.3, 
        Description = "Not a fish, but a scarecrow that somehow ended up in the water.", 
        Hint = "Only obtainable during FischFright; Caught while fishing anywhere during the event!", 
        FavouriteBait = "Sour Gummy Worm", 
        FavouriteTime = "Day", 
        Price = 600, 
        XP = 400, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "Scarecrow! Scaring fish?", 
            "Farmyard floater.", 
            "Crow repellent in water."
        }, 
        SparkleColor = Color3.fromRGB(218, 165, 32), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        FromLimited = "FischFright 2", 
        From = "FischFright 2", 
        IsLimitedBestiary = true
    }, 
    ["Skeletal Nessie"] = {
        BlockPassiveCapture = true, 
        WeightPool = {
            5000, 
            15000
        }, 
        Chance = 1, 
        FinalChanceDivisor = 35, 
        Rarity = "Limited", 
        Resilience = 5, 
        ProgressEfficiency = 0.1, 
        Description = "The bony remains of Nessie, risen from the catacombs.", 
        Hint = "Only obtainable during FischFright; ???", 
        FavouriteBait = "Gummy Fish", 
        FavouriteTime = nil, 
        Price = 15000, 
        XP = 7000, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "Skeletal Nessie! Bone-chilling.", 
            "Undead legend.", 
            "Rattling catch."
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        FromLimited = "FischFright 2", 
        From = "FischFright 2", 
        IsLimitedBestiary = true
    }, 
    Turkey = {
        WeightPool = {
            80, 
            300
        }, 
        Chance = 0, 
        Rarity = "Limited", 
        Resilience = 20, 
        ProgressEfficiency = 0.35, 
        Description = "Turkeys are large and heavy birds with a uniquely-shaped tail consisting of many feathers that line up to create a circular pattern. However, the poor Turkey is the desired choice of food for many fischers for Fischgiving dinner.", 
        Hint = "Only obtainable during Fischgiving", 
        FavouriteBait = "Insect", 
        FavouriteTime = nil, 
        Price = 4000, 
        XP = 1700, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Woah! a Turkey!", 
            "A Turkey!", 
            "Gobble Gobble!", 
            "Woah, A Turkey!"
        }, 
        SparkleColor = Color3.fromRGB(208, 104, 135), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        FromLimited = "Fischgiving", 
        From = "Fischgiving"
    }, 
    Icicle = {
        WeightPool = {
            4, 
            12
        }, 
        Chance = 1, 
        Rarity = "Limited", 
        Resilience = 100, 
        Description = "A strong and frigid ice formation with a pointy end.", 
        Hint = "???", 
        FavouriteBait = "Holly Berry", 
        FavouriteTime = nil, 
        Price = 130, 
        XP = 60, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Woah, an Icicle!"
        }, 
        SparkleColor = Color3.fromRGB(66, 236, 255), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        FromLimited = "Fischmas", 
        From = "Fischmas"
    }, 
    ["Basic Present"] = {
        WeightPool = {
            90, 
            90
        }, 
        Chance = 9, 
        Rarity = "Limited", 
        Resilience = 60, 
        Description = "A nice christmas present wrapped in white and red gift paper. Maybe it has some goodies inside!", 
        Hint = "Only can be caught during Fischmas24.", 
        FavouriteBait = "Magnet", 
        FavouriteTime = nil, 
        Price = 120, 
        XP = 40, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Present!", 
            "Woah! A Present!", 
            "It's my lucky day!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("crate"), 
        IsCrate = true, 
        CrateType = "FishAndCoins", 
        FishContents = l_presents_0.Basic, 
        CoinContents = {
            30, 
            50
        }, 
        FromLimited = "Fischmas", 
        From = "Fischmas"
    }, 
    ["Unique Present"] = {
        WeightPool = {
            90, 
            90
        }, 
        Chance = 4, 
        Rarity = "Limited", 
        Resilience = 50, 
        Description = "A nice christmas present wrapped in white and teal gift paper. Maybe it has some better goodies inside!", 
        Hint = "Only can be caught during Fischmas24.", 
        FavouriteBait = "Magnet", 
        FavouriteTime = nil, 
        Price = 180, 
        XP = 55, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Present!", 
            "Woah! A Present!", 
            "It's my lucky day!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("crate"), 
        IsCrate = true, 
        CrateType = "FishAndCoins", 
        FishContents = l_presents_0.Unique, 
        CoinContents = {
            90, 
            130
        }, 
        FromLimited = "Fischmas", 
        From = "Fischmas"
    }, 
    ["Supreme Present"] = {
        WeightPool = {
            90, 
            90
        }, 
        Chance = 0.4, 
        Rarity = "Limited", 
        Resilience = 45, 
        Description = "A gistening christmas present wrapped in magical gift paper. Maybe it has some great goodies inside!", 
        Hint = "Only can be caught during Fischmas24.", 
        FavouriteBait = "Magnet", 
        FavouriteTime = nil, 
        Price = 650, 
        XP = 120, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Present!", 
            "Woah! A Present!", 
            "It's my lucky day!"
        }, 
        SparkleColor = Color3.fromRGB(99, 255, 151), 
        HoldAnimation = l_fish_0:WaitForChild("crate"), 
        IsCrate = true, 
        CrateType = "FishAndCoins", 
        FishContents = l_presents_0.Supreme, 
        CoinContents = {
            450, 
            800
        }, 
        FromLimited = "Fischmas", 
        From = "Fischmas"
    }, 
    ["Festive Bait Crate"] = {
        WeightPool = {
            80, 
            80
        }, 
        Chance = 2.5, 
        Rarity = "Limited", 
        Resilience = 90, 
        Description = "A festive wooden crate with patterend fabric over top to preserve the bait inside. Seems like it fell off of santa's sleigh! Opening it might give you an array of jolly baits!", 
        Hint = "Only can be caught during Fischmas24.", 
        FavouriteBait = "Magnet", 
        FavouriteTime = nil, 
        BuyMult = 2.3, 
        Price = 500, 
        Unpurchasable = true, 
        XP = 300, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Crate of Festive Bait!", 
            "A Festive Bait Crate!", 
            "Woah! A Crate!", 
            "A Crate!", 
            "Who left this here?", 
            "Oh, the worms still moving?", 
            "A Crate full of Jolly Bait!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("crate"), 
        FromLimited = "Fischmas", 
        From = "Fischmas", 
        IsCrate = true, 
        CrateType = "Bait", 
        BaitContents = {
            "Peppermint Worm", 
            "Holly Berry"
        }
    }, 
    Cookie = {
        WeightPool = {
            1, 
            6
        }, 
        Chance = 90, 
        Rarity = "Limited", 
        Resilience = 100, 
        Description = "A delicious cookie, favored by Santa Claus. Goes well together with a warm glass of milk.", 
        Hint = "Only can be caught during Fischmas24.", 
        FavouriteBait = "Holly Berry", 
        FavouriteTime = nil, 
        Price = 20, 
        XP = 9, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Woah, a Cookie!", 
            "Om nom nom"
        }, 
        SparkleColor = Color3.fromRGB(225, 166, 115), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        FromLimited = "Fischmas", 
        From = "Fischmas"
    }, 
    ["Glass of Milk"] = {
        WeightPool = {
            1, 
            6
        }, 
        Chance = 90, 
        Rarity = "Limited", 
        Resilience = 100, 
        Description = "A delicious glass of milk, favored by Santa Claus. Goes well together with a cookie.", 
        Hint = "Only can be caught during Fischmas24.", 
        FavouriteBait = "Peppermint Worm", 
        FavouriteTime = nil, 
        Price = 20, 
        XP = 9, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Woah, a Glass of Milk!", 
            "Yum!"
        }, 
        SparkleColor = Color3.fromRGB(231, 231, 231), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        FromLimited = "Fischmas", 
        From = "Fischmas"
    }, 
    ["Candy Cane Carp"] = {
        WeightPool = {
            10, 
            50
        }, 
        Chance = 60, 
        Rarity = "Limited", 
        Resilience = 70, 
        Description = "Candy Cane Carps are an interesting Fischmas fish. They exhibit coloration like that of a candy cane, as well as having a bunch of candy canes sticking out all round their body. They also taste like peppermint!", 
        Hint = "Only can be caught during Fischmas24.", 
        FavouriteBait = "Peppermint Worm", 
        FavouriteTime = "Day", 
        Price = 75, 
        XP = 85, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Woah, a Candy Cane Carp!", 
            "It's a Candy Cane Carp!", 
            "Woahh! This is bigger than I thought.", 
            "Carp-tastic!", 
            "!!!", 
            "Woah!", 
            "A Candy Cane Carp! My skill are sharp!", 
            "Candy Cane Carp Tuah!"
        }, 
        SparkleColor = Color3.fromRGB(255, 117, 117), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        FromLimited = "Fischmas", 
        From = "Fischmas"
    }, 
    ["Santa Salmon"] = {
        WeightPool = {
            80, 
            200
        }, 
        Chance = 50, 
        Rarity = "Limited", 
        Resilience = 70, 
        Description = "Santa Salmons are very old and heavy salmons. They also possess a jolly santa hat and a long white beard. How festive!", 
        Hint = "Only can be caught during Fischmas24.", 
        FavouriteBait = "Holly Berry", 
        FavouriteTime = nil, 
        Price = 120, 
        XP = 130, 
        Seasons = {
            "Spring", 
            "Winter"
        }, 
        Weather = {
            "Rain", 
            "Clear"
        }, 
        Quips = {
            "A Santa Salmon!", 
            "Woah, A Santa Salmon!", 
            "A Santa Salmon!!!", 
            "Ho-ho-ho!"
        }, 
        SparkleColor = Color3.fromRGB(154, 218, 143), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        FromLimited = "Fischmas", 
        From = "Fischmas"
    }, 
    ["Gingerbread Fish"] = {
        WeightPool = {
            20, 
            35
        }, 
        Chance = 20, 
        Rarity = "Limited", 
        Resilience = 50, 
        Description = "A gingerbread cookie that was decorated with frosting and gumdrops to look like a fish. It seems to have come to life. Also makes for a yummy snack!", 
        Hint = "Only can be caught during Fischmas24.", 
        FavouriteBait = "Peppermint Worm", 
        FavouriteTime = nil, 
        Price = 135, 
        XP = 150, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "Woah, a Gingerbread Fish!", 
            "No way! A Gingerbread Fish!", 
            "I caught a Gingerbread Fish!", 
            "You can't catch me, I'm the Gingerbread Fish!"
        }, 
        SparkleColor = Color3.fromRGB(165, 89, 54), 
        HoldAnimation = l_fish_0:WaitForChild("small"), 
        FromLimited = "Fischmas", 
        From = "Fischmas"
    }, 
    ["Ornament Fish"] = {
        WeightPool = {
            3, 
            7
        }, 
        Chance = 15, 
        Rarity = "Limited", 
        Resilience = 80, 
        ProgressEfficiency = 0.95, 
        Description = "An decorative ornament in the shape of a fish. Seems to exhibit signs of low intelligence.", 
        Hint = "Only can be caught during Fischmas24.", 
        FavouriteBait = "Holly Berry", 
        FavouriteTime = nil, 
        Price = 140, 
        XP = 165, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Woah, an Ornament!", 
            "Ouu! An Ornament Fish!"
        }, 
        SparkleColor = Color3.fromRGB(225, 50, 62), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        FromLimited = "Fischmas", 
        From = "Fischmas"
    }, 
    ["Snowflake Flounder"] = {
        WeightPool = {
            15, 
            55
        }, 
        Chance = 10, 
        Rarity = "Limited", 
        Resilience = 80, 
        Description = "A very cold Flounder with a unique snowflake-like pattern on its body. Beware when holding - it's freezing cold!", 
        Hint = "Only can be caught during Fischmas24.", 
        FavouriteBait = "Peppermint Worm", 
        FavouriteTime = "Night", 
        Price = 145, 
        XP = 180, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A Snowflake Flounder!", 
            "A Snowflake!", 
            "I caught a Snowflake Flounder!"
        }, 
        SparkleColor = Color3.fromRGB(137, 205, 236), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        FromLimited = "Fischmas", 
        From = "Fischmas"
    }, 
    Olmdeer = {
        WeightPool = {
            1, 
            4
        }, 
        Chance = 2, 
        Rarity = "Limited", 
        Resilience = 75, 
        ProgressEfficiency = 0.9, 
        Description = "The Olmdeer is a unique species of Olm, possessing two antlers on its head like those of a reindeer, hence its name. They have been heard to lead Santa's sleigh through the night sky.", 
        Hint = "Only can be caught during Fischmas24.", 
        FavouriteBait = "Holly Berry", 
        FavouriteTime = "Night", 
        Price = 400, 
        XP = 300, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Clear", 
            "Foggy"
        }, 
        Quips = {
            "An Olmdeer!", 
            "I caught an Olmdeer!", 
            "Olm.. my gosh!        deer", 
            "An Olmdeer!!", 
            "Woah, an Olmdeer!", 
            "It looks like a recorder.. but jolly!"
        }, 
        SparkleColor = Color3.fromRGB(138, 108, 96), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        ViewportSizeOffset = 2, 
        FromLimited = "Fischmas", 
        From = "Fischmas"
    }, 
    ["Santa Pufferfish"] = {
        WeightPool = {
            8, 
            25
        }, 
        Chance = 0.1, 
        Rarity = "Limited", 
        Resilience = 50, 
        ProgressEfficiency = 0.875, 
        Description = "A pufferfish, but with a santa hat! How jolly!", 
        Hint = "Only can be caught during Fischmas24.", 
        FavouriteBait = "Peppermint Worm", 
        FavouriteTime = "Night", 
        Price = 2000, 
        XP = 1200, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "Woah! a Santa Pufferfish!", 
            "A Santa Pufferfish!", 
            "Woah, A Santa Pufferfish!", 
            "Ho-ho-ho!"
        }, 
        SparkleColor = Color3.fromRGB(255, 16, 16), 
        HoldAnimation = l_fish_0:WaitForChild("small"), 
        FromLimited = "Fischmas", 
        From = "Fischmas"
    }, 
    ["Northstar Serpent"] = {
        WeightPool = {
            140000, 
            200000
        }, 
        Chance = 0.02, 
        FinalChanceDivisor = 12, 
        Rarity = "Limited", 
        Resilience = 10, 
        ProgressEfficiency = 0.1, 
        Description = "The Northstar Serpent is an insanely large and menacing sea serpent species. They have a long and spiny body, with bioluminescent fins throught it. Near their heads, they have six large tentacle-like appendages, which are spun in a screw motion to move at incredible speeds. Attempting to catch the Northstar Serpent will almost always result in catastrophe, those who are capable of hooking and catching such a formidable beast are truly legendary anglers.", 
        Hint = "???", 
        FavouriteBait = "Holly Berry", 
        FavouriteTime = "None", 
        Price = 20000, 
        XP = 5000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A NORTHSTAR SERPENT!!", 
            "IT'S HEAVY!", 
            "WHAT IS THIS THING?!", 
            "WOAH!!!", 
            "SERPENT!!!!!"
        }, 
        SparkleColor = Color3.fromRGB(255, 237, 137), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        FromLimited = "Fischmas", 
        From = "Fischmas"
    }, 
    ["Confetti Shark"] = {
        WeightPool = {
            800, 
            1200
        }, 
        Chance = 50, 
        Rarity = "Limited", 
        Resilience = 50, 
        Description = "A festive predator that appears during the Golden Tide celebration, known for its colorful scales that seem to shimmer and shed like confetti in the water. These sharks are drawn to the excitement of celebration, making them a sought-after catch during festivities.", 
        Hint = "???", 
        FavouriteBait = "Deep Coral", 
        FavouriteTime = nil, 
        Price = 1200, 
        XP = 600, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Confetti Shark! Time to celebrate!", 
            "The party has arrived!", 
            "Now THIS is how you make a splash!", 
            "It's raining scales!"
        }, 
        SparkleColor = Color3.fromRGB(154, 218, 143), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        FromLimited = "Golden Tide", 
        IsLimitedBestiary = true, 
        From = "Golden Tide"
    }, 
    ["Tidal Pike"] = {
        WeightPool = {
            1500, 
            2500
        }, 
        Chance = 45, 
        Rarity = "Limited", 
        Resilience = 45, 
        Description = "A swift pike species that rides the golden tides, its scales gleaming with an iridescent sheen that reflects the celebration's lights. These fish are known to dart through the water with remarkable agility.", 
        Hint = "???", 
        FavouriteBait = "Night Shrimp", 
        FavouriteTime = nil, 
        Price = 1500, 
        XP = 800, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Tidal Pike! Fast as the current!", 
            "Caught in the golden rush!", 
            "This pike's got perfect timing!"
        }, 
        SparkleColor = Color3.fromRGB(154, 218, 143), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        FromLimited = "Golden Tide", 
        IsLimitedBestiary = true, 
        From = "Golden Tide"
    }, 
    ["Countdown Perch"] = {
        WeightPool = {
            3000, 
            5000
        }, 
        Chance = 35, 
        Rarity = "Limited", 
        Resilience = 40, 
        Description = "This peculiar perch species appears as the Golden Tide approaches, with markings on its fins that seem to shift and change like the hands of a clock. Legend says it can sense the turning of the tide.", 
        Hint = "???", 
        FavouriteBait = "Weird Algae", 
        FavouriteTime = nil, 
        Price = 2000, 
        XP = 1200, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Countdown Perch! Time is ticking!", 
            "The tide is turning!", 
            "Right on schedule!"
        }, 
        SparkleColor = Color3.fromRGB(154, 218, 143), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        FromLimited = "Golden Tide", 
        IsLimitedBestiary = true, 
        From = "Golden Tide"
    }, 
    ["Hourglass Bass"] = {
        WeightPool = {
            8000, 
            12000
        }, 
        Chance = 25, 
        Rarity = "Limited", 
        Resilience = 25, 
        Description = "A mesmerizing bass with markings that resemble flowing sand in an hourglass. Its transparent fins seem to sparkle with golden particles, making it a living timekeeper of the Golden Tide celebration.", 
        Hint = "???", 
        FavouriteBait = "Aurora Bait", 
        FavouriteTime = nil, 
        Price = 3000, 
        XP = 2000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "An Hourglass Bass! Time stands still!", 
            "The sands of time caught in my net!", 
            "What perfect timing!"
        }, 
        SparkleColor = Color3.fromRGB(154, 218, 143), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        FromLimited = "Golden Tide", 
        IsLimitedBestiary = true, 
        From = "Golden Tide"
    }, 
    ["Eternal Frostwhale"] = {
        WeightPool = {
            10000, 
            15000
        }, 
        Chance = 0.01, 
        Rarity = "Limited", 
        Resilience = 3, 
        Description = "An ancient behemoth that emerges only during the Golden Tide, its crystalline body seemming to contain an entire frozen cosmos. This legendary creature is said to have witnessed countless celebrations, its presence marking truly special occasions.", 
        Hint = "???", 
        FavouriteBait = "Shark Head", 
        FavouriteTime = nil, 
        Price = 12000, 
        XP = 8000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "THE ETERNAL FROSTWHALE! IMPOSSIBLE!", 
            "A legend frozen in time!", 
            "The ancient one appears!", 
            "The tide bows to its eternal majesty!"
        }, 
        SparkleColor = Color3.fromRGB(154, 218, 143), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        FromLimited = "Golden Tide", 
        IsLimitedBestiary = true, 
        From = "Golden Tide", 
        CustomProgressEfficiency = {
            {
                Rod = "Firework Rod", 
                Value = -0.6
            }, 
            {
                Value = 0.2
            }
        }
    }, 
    Cryoskin = {
        Icon = "rbxassetid://96530556200239", 
        BlockPassiveCapture = true, 
        WeightPool = {
            30, 
            80
        }, 
        Chance = 10, 
        Rarity = "Common", 
        Resilience = 100, 
        ProgressEfficiency = 0.8, 
        Description = "Cryoskin... Used to craft something?", 
        Hint = "Its pretty", 
        FavouriteBait = "None", 
        FavouriteTime = "None", 
        Price = 50, 
        XP = 250, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Thats pretty"
        }, 
        SparkleColor = Color3.fromRGB(170, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Challenger's Deep"
    }, 
    ["Frostscale Fangtooth"] = {
        WeightPool = {
            30, 
            70
        }, 
        Chance = 60, 
        Rarity = "Common", 
        Resilience = 90, 
        Description = "A small, sharp-toothed fish with icy blue scales that shimmer in the dark.", 
        Hint = "Found in the coldest parts of the deep, especially under direct light.", 
        FavouriteBait = "Bagel", 
        FavouriteTime = "Day", 
        Price = 30, 
        XP = 50, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Frostscale Fangtooth!", 
            "Cold and sharp!"
        }, 
        SparkleColor = Color3.fromRGB(102, 178, 255), 
        HoldAnimation = l_fish_0:WaitForChild("small"), 
        From = "Challenger's Deep"
    }, 
    ["Subzero Stargazer"] = {
        WeightPool = {
            20, 
            45
        }, 
        Chance = 50, 
        Rarity = "Uncommon", 
        Resilience = 80, 
        Description = "A unique fish with glowing eyes that stare into the abyss. Its body is covered in frost.", 
        Hint = "Lurks near the surface of freezing waters, seeking light.", 
        FavouriteBait = "Flakes", 
        FavouriteTime = "Day", 
        Price = 100, 
        XP = 110, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Subzero Stargazer!", 
            "Rollin', Rollin', Rollin'..."
        }, 
        SparkleColor = Color3.fromRGB(102, 178, 255), 
        HoldAnimation = l_fish_0:WaitForChild("small"), 
        From = "Challenger's Deep"
    }, 
    ["Chillshadow Chub"] = {
        WeightPool = {
            6, 
            16
        }, 
        Chance = 45, 
        Rarity = "Uncommon", 
        Resilience = 70, 
        Description = "A small fish that blends into the icy shadows of the deep.", 
        Hint = "Found in areas with heavy ice cover, especially under clear skies.", 
        FavouriteBait = "Insect", 
        FavouriteTime = "Day", 
        Price = 100, 
        XP = 100, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Chillshadow Chub!", 
            "Slippery little guy!"
        }, 
        SparkleColor = Color3.fromRGB(102, 178, 255), 
        HoldAnimation = l_fish_0:WaitForChild("small"), 
        From = "Challenger's Deep"
    }, 
    ["Deep Freeze Devilfish"] = {
        WeightPool = {
            90, 
            190
        }, 
        Chance = 20, 
        Rarity = "Unusual", 
        Resilience = 65, 
        Description = "A devilish fish with icy spines that can freeze anything it touches.", 
        Hint = "Prefers cold waters, especially during storms.", 
        FavouriteBait = "Squid", 
        FavouriteTime = nil, 
        Price = 300, 
        XP = 250, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A Deep Freeze Devilfish!", 
            "Hypothermic!"
        }, 
        SparkleColor = Color3.fromRGB(102, 178, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Challenger's Deep"
    }, 
    ["Iceberg Isopod"] = {
        WeightPool = {
            95, 
            240
        }, 
        Chance = 15, 
        Rarity = "Rare", 
        Resilience = 50, 
        Description = "An armored isopod that thrives in the freezing depths.", 
        Hint = "Found near underwater ice formations in the dark, especially during windy weather.", 
        FavouriteBait = "Minnow", 
        FavouriteTime = "Night", 
        Price = 400, 
        XP = 350, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Windy"
        }, 
        Quips = {
            "An Iceberg Isopod!", 
            "It's like a living iceberg!"
        }, 
        SparkleColor = Color3.fromRGB(102, 178, 255), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Challenger's Deep"
    }, 
    ["Cryo Coelacanth"] = {
        WeightPool = {
            70, 
            210
        }, 
        Chance = 11, 
        Rarity = "Rare", 
        Resilience = 30, 
        Description = "A prehistoric fish with icy blue fins that glow faintly in the dark.", 
        Hint = "Appears during the coldest nights, when the moon is full.", 
        FavouriteBait = "Shrimp", 
        FavouriteTime = nil, 
        Price = 500, 
        XP = 650, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Cryo Coelacanth!", 
            "It froze my hook..."
        }, 
        SparkleColor = Color3.fromRGB(102, 178, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Challenger's Deep"
    }, 
    ["Polar Prowler"] = {
        Icon = "rbxassetid://106979038247843", 
        WeightPool = {
            9000, 
            23000
        }, 
        Chance = 10, 
        Rarity = "Legendary", 
        Resilience = 12, 
        ProgressEfficiency = 0.8, 
        Description = "A sleek, predatory fish that hunts in the freezing cold with unmatched speed.", 
        Hint = "Found in the deepest of trenches, most notably when the stars are present.", 
        FavouriteBait = "Truffle Worm", 
        FavouriteTime = "Night", 
        Price = 1500, 
        XP = 2000, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A POLAR PROWLER!?", 
            "IT'S QUICK!"
        }, 
        SparkleColor = Color3.fromRGB(102, 178, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Challenger's Deep"
    }, 
    ["Chillfin Chimaera"] = {
        WeightPool = {
            9000, 
            26000
        }, 
        Chance = 8, 
        Rarity = "Mythical", 
        Resilience = 8, 
        ProgressEfficiency = 0.5, 
        Description = "A ghostly fish with glowing fins and a long, whip-like frosty tail.", 
        Hint = "Appears in the deepest, coldest waters, especially in the dark.", 
        FavouriteBait = "Fish Head", 
        FavouriteTime = "Night", 
        Price = 4000, 
        XP = 2800, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A CHILLFIN CHIMAERA!?", 
            "SPOOKY!", 
            "CHILLING!"
        }, 
        SparkleColor = Color3.fromRGB(102, 178, 255), 
        HoldAnimation = l_fish_0:WaitForChild("bigbasic"), 
        From = "Challenger's Deep"
    }, 
    ["Frozen Leviathan"] = {
        BlockPassiveCapture = true, 
        Icon = "rbxassetid://81152570606021", 
        WeightPool = {
            500000, 
            1400000
        }, 
        Chance = 0.1, 
        FinalChanceDivisor = 20, 
        Rarity = "Exotic", 
        Resilience = 3, 
        ProgressEfficiency = 0.1, 
        Description = "A chilling creature with icy tentacles that can freeze anything it touches. Legends say it guards the deepest parts of the ocean.", 
        Hint = "Appears during the coldest nights, when the moon is full.", 
        FavouriteBait = "Truffle Worm", 
        FavouriteTime = "Night", 
        Price = 18000, 
        XP = 20000, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "THE FROZEN LEVIATHAN!?!", 
            "ABSOLUTE ZERO!", 
            "FREEZING KRAKEN!?"
        }, 
        SparkleColor = Color3.fromRGB(102, 178, 255), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Challenger's Deep"
    }, 
    ["Lightning Minnow"] = {
        WeightPool = {
            5, 
            15
        }, 
        Chance = 75, 
        Rarity = "Common", 
        Resilience = 70, 
        Description = "A tiny, energetic fish that seems to crackle with electricity. Their scales generate small static charges, making them tingle when caught.", 
        Hint = "Found darting in schools through Zeus Pool.", 
        FavouriteBait = "Flakes", 
        FavouriteTime = "Day", 
        Price = 120, 
        XP = 80, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "Ouch! Static shock!", 
            "A Lightning Minnow!", 
            "Tingly little one!", 
            "Zeus' smallest spark!"
        }, 
        SparkleColor = Color3.fromRGB(255, 246, 127), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Atlantis"
    }, 
    ["Thunder Bass"] = {
        WeightPool = {
            300, 
            600
        }, 
        Chance = 45, 
        Rarity = "Unusual", 
        Resilience = 45, 
        Description = "A powerful predator whose scales conduct electricity. During storms, they create impressive displays of bio-electricity across the water's surface.", 
        Hint = "Most active during thunderstorms in Zeus Pool.", 
        FavouriteBait = "Fish Head", 
        FavouriteTime = "Night", 
        Price = 450, 
        XP = 250, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A Thunder Bass!", 
            "What power!", 
            "Zeus' bass!", 
            "It's electrifying!"
        }, 
        SparkleColor = Color3.fromRGB(86, 142, 255), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Atlantis"
    }, 
    ["Static Ray"] = {
        WeightPool = {
            150, 
            300
        }, 
        Chance = 55, 
        Rarity = "Uncommon", 
        Resilience = 60, 
        Description = "This unique ray channels Zeus' power through its flat body, creating electromagnetic fields that stun smaller fish.", 
        Hint = "Glides along the bottom of Zeus Pool during storms.", 
        FavouriteBait = "Shrimp", 
        FavouriteTime = nil, 
        Price = 280, 
        XP = 150, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A Static Ray!", 
            "Watch the charge!", 
            "Stunning catch!", 
            "Kwijts Electric Guitar!"
        }, 
        SparkleColor = Color3.fromRGB(189, 178, 255), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Atlantis"
    }, 
    ["Storm Eel"] = {
        WeightPool = {
            400, 
            800
        }, 
        Chance = 35, 
        Rarity = "Unusual", 
        Resilience = 40, 
        Description = "A serpentine fish that generates powerful electrical fields. Their bodies glow with inner lightning during storms.", 
        Hint = "Hunts during thunderstorms in Zeus Pool.", 
        FavouriteBait = "Fish Head", 
        FavouriteTime = "Night", 
        Price = 550, 
        XP = 300, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A Storm Eel!", 
            "Lightning in water!", 
            "Zeus' serpent!", 
            "What a shock!"
        }, 
        SparkleColor = Color3.fromRGB(255, 217, 116), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Atlantis"
    }, 
    ["Voltfin Carp"] = {
        WeightPool = {
            100, 
            250
        }, 
        Chance = 65, 
        Rarity = "Common", 
        Resilience = 65, 
        Description = "These large carp have fins that spark with electrical energy. They gather in groups during storms to create spectacular light shows.", 
        Hint = "Common in Zeus Pool, especially before storms.", 
        FavouriteBait = "Worm", 
        FavouriteTime = nil, 
        Price = 180, 
        XP = 100, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A Voltfin Carp!", 
            "Sparking scales!", 
            "Electric fins!", 
            "zeus carp!"
        }, 
        SparkleColor = Color3.fromRGB(255, 238, 147), 
        HoldAnimation = l_fish_0:WaitForChild("small"), 
        From = "Atlantis"
    }, 
    ["Thunder Serpent"] = {
        WeightPool = {
            1000, 
            2000
        }, 
        Chance = 1, 
        Rarity = "Legendary", 
        Resilience = 20, 
        Description = "A massive eel-like creature that channels Zeus' lightning directly. Its presence can electrify entire sections of the pool during storms.", 
        Hint = "Only appears during the fiercest thunderstorms in zeus pool.", 
        FavouriteBait = "None", 
        FavouriteTime = "Night", 
        Price = 2500, 
        XP = 1200, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "THE THUNDER SERPENT!", 
            "Zeus' CHOSEN!", 
            "PURE LIGHTNING!", 
            "THE STORM INCARNATE!"
        }, 
        SparkleColor = Color3.fromRGB(86, 142, 255), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Atlantis"
    }, 
    ["Lightning Pike"] = {
        WeightPool = {
            200, 
            450
        }, 
        Chance = 15, 
        Rarity = "Rare", 
        Resilience = 35, 
        Description = "An aggressive predator that uses electrical pulses to stun its prey. Their elongated bodies act as natural conductors for Zeus' power.", 
        Hint = "Hunts near the surface during storms in zeus pool.", 
        FavouriteBait = "Minnow", 
        FavouriteTime = nil, 
        Price = 276, 
        XP = 143, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A Lightning Pike!", 
            "Zeus' hunter!", 
            "Electric predator!", 
            "What power!"
        }, 
        SparkleColor = Color3.fromRGB(255, 251, 163), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Atlantis"
    }, 
    ["Sparkfin Tetra"] = {
        WeightPool = {
            50, 
            120
        }, 
        Chance = 85, 
        Rarity = "Common", 
        Resilience = 75, 
        Description = "Small but fierce, these tetras have fins that constantly emit tiny electrical sparks. They school together to create impressive electrical displays.", 
        Hint = "Schools in the shallows of Zeus Pool.", 
        FavouriteBait = "Insect", 
        FavouriteTime = "Day", 
        Price = 90, 
        XP = 30, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A Sparkfin Tetra!", 
            "Tiny zapper!", 
            "Watch the sparks!", 
            "Lightning in miniature!"
        }, 
        SparkleColor = Color3.fromRGB(255, 243, 148), 
        HoldAnimation = l_fish_0:WaitForChild("small"), 
        From = "Atlantis"
    }, 
    ["Stormcloud Angelfish"] = {
        WeightPool = {
            600, 
            1200
        }, 
        Chance = 25, 
        Rarity = "Rare", 
        Resilience = 30, 
        Description = "A majestic fish whose fins ripple like storm clouds. They can generate powerful electrical fields that mirror Zeus' lightning.", 
        Hint = "Found in deeper parts of Zeus Pool during storms.", 
        FavouriteBait = "Shrimp", 
        FavouriteTime = nil, 
        Price = 310, 
        XP = 231, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A Stormcloud Angel!", 
            "Zeus' beauty!", 
            "Storm incarnate!", 
            "Magnificent!"
        }, 
        SparkleColor = Color3.fromRGB(161, 196, 255), 
        HoldAnimation = l_fish_0:WaitForChild("small"), 
        From = "Atlantis"
    }, 
    ["Zeus' Herald"] = {
        WeightPool = {
            1500, 
            3000
        }, 
        Chance = 0.02, 
        Rarity = "Mythical", 
        Resilience = 15, 
        Description = "A legendary fish said to be Zeus' messenger, its body pure lightning given form. Its presence heralds the greatest of storms.", 
        Hint = "Appears only during the most powerful thunderstorms in zeus pool.", 
        FavouriteBait = "None", 
        FavouriteTime = "Night", 
        Price = 5000, 
        XP = 2000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "Zeus' HERALD!", 
            "THE LIGHTNING LORD!", 
            "THUNDER INCARNATE!", 
            "THE STORM KING'S MESSENGER!"
        }, 
        SparkleColor = Color3.fromRGB(255, 238, 128), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Atlantis"
    }, 
    ["Colossal Carp"] = {
        WeightPool = {
            20, 
            50
        }, 
        Chance = 60, 
        Rarity = "Uncommon", 
        Resilience = 75, 
        Description = "A normally peaceful species grown enormous in Poseidon's waters. Their size alone commands respect from other inhabitants.", 
        Hint = "Makes large waves when surfacing in Poseidon's Pool.", 
        FavouriteBait = "Seaweed", 
        FavouriteTime = "Day", 
        Price = 180, 
        XP = 100, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A COLOSSAL CARP!", 
            "GIANT SCALES!", 
            "POSEIDON'S BLESSING!", 
            "ENORMOUS!"
        }, 
        SparkleColor = Color3.fromRGB(134, 180, 255), 
        HoldAnimation = l_fish_0:WaitForChild("small"), 
        From = "Atlantis"
    }, 
    ["Titan Tuna"] = {
        WeightPool = {
            30, 
            70
        }, 
        Chance = 55, 
        Rarity = "Uncommon", 
        Resilience = 70, 
        Description = "A tuna of impossible size, grown massive in Poseidon's blessed waters. Its powerful swimming can create whirlpools with a single tail flick.", 
        Hint = "Feel for sudden strong currents in deep water, Poseidon Pool fish.", 
        FavouriteBait = "Fish Head", 
        FavouriteTime = "Day", 
        Price = 220, 
        XP = 120, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A TITAN TUNA!", 
            "OCEAN GIANT!", 
            "MASSIVE CATCH!", 
            "WHAT POWER!"
        }, 
        SparkleColor = Color3.fromRGB(158, 190, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Atlantis"
    }, 
    ["Giant Manta"] = {
        WeightPool = {
            60, 
            120
        }, 
        Chance = 35, 
        Rarity = "Unusual", 
        Resilience = 65, 
        Description = "An enormous manta ray blessed by Poseidon's power. Its wingspan can cast shadows over entire sections of the pool, and its movements create powerful currents.", 
        Hint = "Watch for massive shadows gliding beneath the surface, Poseidon Pool fish.", 
        FavouriteBait = "Shrimp", 
        FavouriteTime = "Day", 
        Price = 350, 
        XP = 180, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A GIANT MANTA!", 
            "THE OCEAN'S WINGS!", 
            "WHAT A WINGSPAN!", 
            "MAJESTIC GIANT!"
        }, 
        SparkleColor = Color3.fromRGB(86, 154, 255), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Atlantis"
    }, 
    ["Leviathan Bass"] = {
        WeightPool = {
            80, 
            160
        }, 
        Chance = 30, 
        Rarity = "Unusual", 
        Resilience = 60, 
        Description = "A bass grown to monstrous proportions under Poseidon's influence. Its strikes can create small whirlpools in the water.", 
        Hint = "Creates disturbances in Poseidon's Pool when hunting, Poseidon Pool fish.", 
        FavouriteBait = "Fish Head", 
        FavouriteTime = "Night", 
        Price = 400, 
        XP = 200, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A LEVIATHAN BASS!", 
            "MASSIVE!", 
            "POSEIDON'S BASS!", 
            "WHAT POWER!"
        }, 
        SparkleColor = Color3.fromRGB(101, 164, 255), 
        HoldAnimation = l_fish_0:WaitForChild("bigbasic"), 
        From = "Atlantis"
    }, 
    ["Massive Marlin"] = {
        WeightPool = {
            200, 
            450
        }, 
        Chance = 15, 
        Rarity = "Rare", 
        Resilience = 45, 
        Description = "A marlin grown to colossal proportions under Poseidon's influence. Its spear-like bill can pierce the strongest materials, and its speed defies its massive size.", 
        Hint = "Watch for massive shapes breaking the surface at high speed, Poseidon Pool fish..", 
        FavouriteBait = "Fish Head", 
        FavouriteTime = "Day", 
        Price = 800, 
        XP = 400, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A MASSIVE MARLIN!", 
            "OCEAN SPEAR!", 
            "WHAT SPEED!", 
            "POSEIDON'S BLADE!"
        }, 
        SparkleColor = Color3.fromRGB(101, 164, 255), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Atlantis"
    }, 
    ["Titanic Sturgeon"] = {
        WeightPool = {
            250, 
            500
        }, 
        Chance = 12, 
        Rarity = "Rare", 
        Resilience = 40, 
        Description = "An ancient species grown to impossible size in Poseidon's domain. Its armored scales could withstand the pressure of the deepest trenches.", 
        Hint = "Patrols the deep waters of Poseidon's Pool.", 
        FavouriteBait = "Seaweed", 
        FavouriteTime = "Night", 
        Price = 900, 
        XP = 450, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A TITANIC STURGEON!", 
            "ANCIENT ONE!", 
            "POSEIDON'S ARMOR!", 
            "WHAT A BEAST!"
        }, 
        SparkleColor = Color3.fromRGB(158, 190, 255), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Atlantis"
    }, 
    ["Titanfang Grouper"] = {
        WeightPool = {
            300, 
            600
        }, 
        Chance = 10, 
        Rarity = "Rare", 
        Resilience = 35, 
        Description = "A fearsome grouper species unique to Poseidon's Pool. Its massive jaws are lined with dagger-like teeth, making it one of the most formidable predators in these sacred waters.", 
        Hint = "Listen for deep rumbling sounds in Poseidon's Pool.", 
        FavouriteBait = "Fish Head", 
        FavouriteTime = "Night", 
        Price = 1000, 
        XP = 500, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A TITANFANG GROUPER!", 
            "THOSE TEETH!", 
            "POSEIDON'S HUNTER!", 
            "APEX PREDATOR!"
        }, 
        SparkleColor = Color3.fromRGB(120, 175, 255), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Atlantis"
    }, 
    ["Deep Emperor"] = {
        WeightPool = {
            2500, 
            5000
        }, 
        Chance = 0.4, 
        Rarity = "Legendary", 
        Resilience = 25, 
        ProgressEfficiency = 0.4, 
        Description = "A massive predator from the ocean's greatest depths, its body adapted to crushing pressures. Few have ever seen one and lived to tell the tale.", 
        Hint = "Lurks in the darkest depths of Poseidon's Pool.", 
        FavouriteBait = "Fish Head", 
        FavouriteTime = "Night", 
        Price = 3000, 
        XP = 1500, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "THE DEEP EMPEROR!", 
            "RULER OF THE ABYSS!", 
            "WHAT A MONSTER!", 
            "POSEIDON'S CHOSEN!"
        }, 
        SparkleColor = Color3.fromRGB(76, 143, 255), 
        HoldAnimation = l_fish_0:WaitForChild("bigbasic"), 
        From = "Atlantis"
    }, 
    ["Deep Behemoth"] = {
        WeightPool = {
            3000, 
            6000
        }, 
        Chance = 0.2, 
        Rarity = "Legendary", 
        Resilience = 20, 
        ProgressEfficiency = 0.35, 
        Description = "A deep-sea creature of terrifying proportions. Its exact species is unknown, but its size and strength suggest ancient origins from Poseidon's earliest creations.", 
        Hint = "The deepest parts of the pool grow still when it approaches, Poseidon Pool fish.", 
        FavouriteBait = "Truffle Worm", 
        FavouriteTime = "Night", 
        Price = 4000, 
        XP = 2000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A DEEP BEHEMOTH!", 
            "ANCIENT ONE!", 
            "THE DEEP'S TERROR!", 
            "UNBELIEVABLE SIZE!"
        }, 
        SparkleColor = Color3.fromRGB(43, 99, 255), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Atlantis"
    }, 
    ["Abyssal Goliath"] = {
        WeightPool = {
            7000, 
            12000
        }, 
        Chance = 0.08, 
        Rarity = "Mythical", 
        Resilience = 15, 
        ProgressEfficiency = 0.25, 
        Description = "A colossal deep-sea fish of impossible size, its mere presence creates currents in the water. Its true size is unknown as none have ever seen its full form.", 
        Hint = "The deepest parts of Poseidon's Pool occasionally tremble with its presence, Poseidon Pool.", 
        FavouriteBait = "Truffle Worm", 
        FavouriteTime = "Night", 
        Price = 6000, 
        XP = 2500, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "THE ABYSSAL GOLIATH!", 
            "POSEIDON'S GIANT!", 
            "IMPOSSIBLE SIZE!", 
            "THE DEEP'S MASTER!"
        }, 
        SparkleColor = Color3.fromRGB(43, 99, 255), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Atlantis"
    }, 
    ["Sunken Silverscale"] = {
        WeightPool = {
            4, 
            14
        }, 
        Chance = 85, 
        Rarity = "Common", 
        Resilience = 85, 
        Description = "These fish have adapted to live among the submerged silver treasures. Their scales have taken on a metallic sheen that mimics the precious artifacts they swim among.", 
        Hint = "Sunken's Depth Pool", 
        FavouriteBait = "Shrimp", 
        FavouriteTime = "Day", 
        Price = 65, 
        XP = 45, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Sunken Silverscale!", 
            "Treasure of the deep!", 
            "Like swimming silver!"
        }, 
        SparkleColor = Color3.fromRGB(192, 192, 192), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Atlantis"
    }, 
    ["Atlantean Anchovy"] = {
        WeightPool = {
            2, 
            8
        }, 
        Chance = 85, 
        Rarity = "Common", 
        Resilience = 95, 
        Description = "These small silver fish gather in massive schools throughout the sunken depths. Their scales have taken on a slight golden tinge from generations of exposure to ancient magic.", 
        Hint = "Sunken's Depth Pool", 
        FavouriteBait = "None", 
        FavouriteTime = nil, 
        Price = 40, 
        XP = 25, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "An Atlantean Anchovy!", 
            "Tiny but magnificent!", 
            "A piece of the depths!"
        }, 
        SparkleColor = Color3.fromRGB(255, 223, 128), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Atlantis"
    }, 
    ["Oracle Minnow"] = {
        WeightPool = {
            2, 
            7
        }, 
        Chance = 90, 
        Rarity = "Common", 
        Resilience = 90, 
        Description = "These prophetic little fish are said to gather where important events will occur. Ancient civilizations would watch their schooling patterns to predict the future.", 
        Hint = "Sunken's Depth Pool", 
        FavouriteBait = "Flakes", 
        FavouriteTime = "Day", 
        Price = 50, 
        XP = 30, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "An Oracle Minnow!", 
            "What secrets does it know?", 
            "The future-telling fish!"
        }, 
        SparkleColor = Color3.fromRGB(186, 255, 201), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Atlantis"
    }, 
    ["Poseidon's Perch"] = {
        WeightPool = {
            10, 
            25
        }, 
        Chance = 80, 
        Rarity = "Common", 
        Resilience = 75, 
        Description = "These curious fish inhabit the grand sunken temples. Their fins have patterns resembling ancient waves, leading many to believe they were blessed by ancient gods.", 
        Hint = "Sunken's Depth Pool", 
        FavouriteBait = "Insect", 
        FavouriteTime = "Day", 
        Price = 70, 
        XP = 50, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "Poseidon's Perch!", 
            "Blessed by the depths!", 
            "A divine catch!"
        }, 
        SparkleColor = Color3.fromRGB(255, 183, 107), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Atlantis"
    }, 
    ["Marble Maiden"] = {
        WeightPool = {
            15, 
            35
        }, 
        Chance = 60, 
        Rarity = "Uncommon", 
        Resilience = 70, 
        Description = "These elegant fish have skin that resembles polished marble, allowing them to blend perfectly with the classical architecture of the depths.", 
        Hint = "Sunken's Depth Pool", 
        FavouriteBait = "Worm", 
        FavouriteTime = nil, 
        Price = 120, 
        XP = 80, 
        Seasons = {
            "Spring", 
            "Summer"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Marble Maiden!", 
            "Grace of the ruins!", 
            "Beautiful as stone!"
        }, 
        SparkleColor = Color3.fromRGB(158, 253, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Atlantis"
    }, 
    ["Crystal Chorus"] = {
        WeightPool = {
            25, 
            50
        }, 
        Chance = 50, 
        Rarity = "Uncommon", 
        Resilience = 60, 
        Description = "These mysterious fish gather around ancient power crystals, creating haunting harmonies with their fins. The vibrations seem to resonate with the city's magic.", 
        Hint = "Sunken's Depth Pool", 
        FavouriteBait = "Shrimp", 
        FavouriteTime = "Night", 
        Price = 160, 
        XP = 100, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Crystal Chorus!", 
            "Listen to its song!", 
            "The harmony of the depths!"
        }, 
        SparkleColor = Color3.fromRGB(201, 255, 252), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Atlantis"
    }, 
    ["Helios Ray"] = {
        WeightPool = {
            30, 
            60
        }, 
        Chance = 45, 
        Rarity = "Unusual", 
        Resilience = 55, 
        Description = "These ray-like fish have skin that seems to capture and store sunlight, making them glow like miniature suns in the darker depths. Ancient texts suggest they once lit the streets of the sunken city.", 
        Hint = "Sunken's Depth Pool", 
        FavouriteBait = "Fish Head", 
        FavouriteTime = "Day", 
        Price = 180, 
        XP = 110, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Helios Ray!", 
            "Light of the deep!", 
            "Sun beneath the waves!"
        }, 
        SparkleColor = Color3.fromRGB(255, 182, 255), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Atlantis"
    }, 
    ["Philosopher's Fish"] = {
        WeightPool = {
            35, 
            70
        }, 
        Chance = 30, 
        Rarity = "Unusual", 
        Resilience = 45, 
        Description = "These contemplative creatures gather in ancient libraries. They swim in complex patterns that some scholars believe correspond to mathematical formulas.", 
        Hint = "Sunken's Depth Pool", 
        FavouriteBait = "Coral", 
        FavouriteTime = "Day", 
        Price = 300, 
        XP = 180, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Philosopher's Fish!", 
            "Such wisdom!", 
            "The patterns make sense!"
        }, 
        SparkleColor = Color3.fromRGB(255, 215, 156), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Atlantis"
    }, 
    ["Atlantean Guardian"] = {
        WeightPool = {
            40, 
            80
        }, 
        Chance = 35, 
        Rarity = "Unusual", 
        Resilience = 50, 
        Description = "These impressive fish patrol the ancient ruins like sentinels. Their scales bear markings reminiscent of ancient armor, and they're known to chase away threatening predators.", 
        Hint = "Sunken's Depth Pool", 
        FavouriteBait = "Fish Head", 
        FavouriteTime = nil, 
        Price = 250, 
        XP = 150, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "An Atlantean Guardian!", 
            "Protector of the deep!", 
            "Still standing watch!"
        }, 
        SparkleColor = Color3.fromRGB(147, 196, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Atlantis"
    }, 
    ["Triton's Herald"] = {
        WeightPool = {
            100, 
            200
        }, 
        Chance = 15, 
        Rarity = "Rare", 
        Resilience = 35, 
        Description = "These majestic fish were said to announce the arrival of ancient rulers. Their fins resemble flowing trumpets, and they produce a haunting call that carries for miles underwater.", 
        Hint = "Sunken's Depth Pool", 
        FavouriteBait = "Deep Coral", 
        FavouriteTime = "Night", 
        Price = 500, 
        XP = 300, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Triton's Herald!", 
            "The announcing fish!", 
            "Listen to its call!"
        }, 
        SparkleColor = Color3.fromRGB(255, 170, 89), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Atlantis"
    }, 
    ["Twilight Glowfish"] = {
        WeightPool = {
            150, 
            300
        }, 
        Chance = 12, 
        Rarity = "Rare", 
        Resilience = 30, 
        Description = "Masters of both light and shadow, these mysterious fish emit a captivating glow that intensifies during twilight hours. Their presence is said to reveal hidden pathways in ancient ruins.", 
        Hint = "Sunken's Depth Pool", 
        FavouriteBait = "Night Shrimp", 
        FavouriteTime = "Night", 
        Price = 650, 
        XP = 400, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Twilight Glowfish!", 
            "Between day and night!", 
            "Follow its light!"
        }, 
        SparkleColor = Color3.fromRGB(147, 0, 211), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Atlantis"
    }, 
    ["Atlantean Alchemist"] = {
        WeightPool = {
            200, 
            400
        }, 
        Chance = 10, 
        Rarity = "Rare", 
        Resilience = 25, 
        Description = "These fish have evolved to process magical minerals, causing their scales to transmute between different precious metals. They're living examples of ancient alchemy.", 
        Hint = "Sunken's Depth Pool", 
        FavouriteBait = "Fish Head", 
        FavouriteTime = "Night", 
        Price = 800, 
        XP = 500, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "An Atlantean Alchemist!", 
            "Pure gold!", 
            "Now it's silver!"
        }, 
        SparkleColor = Color3.fromRGB(148, 0, 211), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Atlantis"
    }, 
    ["Deep Crownfish"] = {
        WeightPool = {
            500, 
            1000
        }, 
        Chance = 0.5, 
        Rarity = "Legendary", 
        Resilience = 20, 
        Description = "This regal fish bears markings resembling an ancient crown and is believed to be descended from royal aquariums. Its presence is said to calm the waters around it.", 
        Hint = "Sunken's Depth Pool", 
        FavouriteBait = "None", 
        FavouriteTime = "Day", 
        Price = 2000, 
        XP = 1000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "THE DEEP CROWNFISH!", 
            "ROYALTY OF THE DEPTHS!", 
            "THE CROWNED ONE!"
        }, 
        SparkleColor = Color3.fromRGB(0, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Atlantis"
    }, 
    ["Celestial Koi"] = {
        WeightPool = {
            5000, 
            10000
        }, 
        Chance = 0.1, 
        Rarity = "Mythical", 
        Resilience = 10, 
        Description = "A Celestial koi fish that ancient texts claim once guided lost souls through the depths. Its scales shine with otherworldly light, and its presence causes the surrounding waters to swirl with magical energy.", 
        Hint = "Sunken's Depth Pool", 
        FavouriteBait = "Truffle Worm", 
        FavouriteTime = "Night", 
        Price = 8000, 
        XP = 3000, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "THE CELESTIAL KOI!", 
            "GUIDE OF THE DEPTHS!", 
            "THE ANCIENT ONE APPEARS!"
        }, 
        SparkleColor = Color3.fromRGB(0, 183, 255), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Atlantis"
    }, 
    ["Column Crawler"] = {
        WeightPool = {
            5, 
            12
        }, 
        Chance = 80, 
        Rarity = "Common", 
        Resilience = 85, 
        Description = "These agile fish have adapted to life among the ethereal columns. Their flattened bodies allow them to slip through the narrowest gaps in the mysterious structures.", 
        Hint = "Ethereal Abyss Pool", 
        FavouriteBait = "Worm", 
        FavouriteTime = nil, 
        Price = 55, 
        XP = 35, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Column Crawler!"
        }, 
        SparkleColor = Color3.fromRGB(189, 189, 189), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Atlantis"
    }, 
    ["Atlantean Sardine"] = {
        WeightPool = {
            3, 
            10
        }, 
        Chance = 90, 
        Rarity = "Common", 
        Resilience = 95, 
        Description = "These tiny fish have evolved to navigate the narrow ethereal currents. Their scales have a unique blue-green tint from consuming the abyss's ancient algae.", 
        Hint = "Ethereal Abyss Pool", 
        FavouriteBait = "None", 
        FavouriteTime = "Day", 
        Price = 35, 
        XP = 20, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "An Atlantean Sardine!"
        }, 
        SparkleColor = Color3.fromRGB(0, 255, 191), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Atlantis"
    }, 
    ["Neptune's Nibbler"] = {
        WeightPool = {
            5, 
            15
        }, 
        Chance = 85, 
        Rarity = "Common", 
        Resilience = 90, 
        Description = "These small, vibrant fish are known for nibbling on the enchanted coral that grows in the ethereal abyss. Their diet gives them a slight blue glow at night.", 
        Hint = "Ethereal Abyss Pool", 
        FavouriteBait = "Seaweed", 
        FavouriteTime = "Day", 
        Price = 45, 
        XP = 30, 
        Seasons = {
            "Spring", 
            "Summer"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Neptune's Nibbler!"
        }, 
        SparkleColor = Color3.fromRGB(86, 190, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Atlantis"
    }, 
    ["Aqua Scribe"] = {
        WeightPool = {
            4, 
            11
        }, 
        Chance = 85, 
        Rarity = "Common", 
        Resilience = 80, 
        Description = "These peculiar fish are often seen tracing patterns in the ethereal silt that resemble ancient script. Some scholars believe they're connected to the abyss's lost knowledge.", 
        Hint = "Ethereal Abyss Pool", 
        FavouriteBait = "Seaweed", 
        FavouriteTime = "Day", 
        Price = 60, 
        XP = 40, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "An Aqua Scribe!"
        }, 
        SparkleColor = Color3.fromRGB(145, 255, 249), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Atlantis"
    }, 
    ["Temple Drifter"] = {
        WeightPool = {
            25, 
            55
        }, 
        Chance = 50, 
        Rarity = "Uncommon", 
        Resilience = 65, 
        Description = "These serene fish float gracefully through ethereal temples, their fins flowing like ceremonial robes. They seem to follow ancient patrol routes of the temple guardians.", 
        Hint = "Ethereal Abyss Pool", 
        FavouriteBait = "Deep Coral", 
        FavouriteTime = "Day", 
        Price = 170, 
        XP = 105, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Temple Drifter!", 
            "Guardian of sacred waters!"
        }, 
        SparkleColor = Color3.fromRGB(255, 217, 143), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Atlantis"
    }, 
    ["Mosaic Swimmer"] = {
        WeightPool = {
            20, 
            40
        }, 
        Chance = 55, 
        Rarity = "Uncommon", 
        Resilience = 70, 
        Description = "The scales of these fish form intricate patterns matching the ethereal mosaics. They often gather in groups to create living recreations of the abyss's lost artwork.", 
        Hint = "Ethereal Abyss Pool", 
        FavouriteBait = "Coral", 
        FavouriteTime = nil, 
        Price = 150, 
        XP = 95, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Mosaic Swimmer!", 
            "Living art!"
        }, 
        SparkleColor = Color3.fromRGB(255, 198, 112), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Atlantis"
    }, 
    ["Echo Fisher"] = {
        WeightPool = {
            30, 
            65
        }, 
        Chance = 48, 
        Rarity = "Uncommon", 
        Resilience = 60, 
        Description = "These clever fish use echolocation to navigate the darkest corners of the abyss. Their clicking sounds bounce off the ancient walls in patterns that some say form words in the old tongue.", 
        Hint = "Ethereal Abyss Pool", 
        FavouriteBait = "Shrimp", 
        FavouriteTime = "Night", 
        Price = 190, 
        XP = 115, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "An Echo Fisher!", 
            "The whispers of the deep!"
        }, 
        SparkleColor = Color3.fromRGB(147, 196, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Atlantis"
    }, 
    ["Oracle's Eye"] = {
        WeightPool = {
            45, 
            90
        }, 
        Chance = 25, 
        Rarity = "Unusual", 
        Resilience = 40, 
        Description = "These unusual fish have eye-like patterns that seem to shimmer with prophetic visions. Ancient mystics believed they could see glimpses of the future in their scales.", 
        Hint = "Ethereal Abyss Pool", 
        FavouriteBait = "Night Shrimp", 
        FavouriteTime = "Night", 
        Price = 350, 
        XP = 200, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "An Oracle's Eye!", 
            "What does it see?", 
            "The future swims!"
        }, 
        SparkleColor = Color3.fromRGB(186, 141, 255), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Atlantis"
    }, 
    ["Siren Singer"] = {
        WeightPool = {
            50, 
            95
        }, 
        Chance = 28, 
        Rarity = "Unusual", 
        Resilience = 35, 
        Description = "These enchanting fish produce melodic vibrations that ancient mariners often mistook for ethereal songs. Their scales shimmer with hypnotic patterns when they sing.", 
        Hint = "Ethereal Abyss Pool", 
        FavouriteBait = "Deep Coral", 
        FavouriteTime = "Night", 
        Price = 380, 
        XP = 220, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Siren Singer!", 
            "Such a beautiful song!", 
            "Don't get hypnotized!"
        }, 
        SparkleColor = Color3.fromRGB(255, 105, 180), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Atlantis"
    }, 
    ["Chronos Deep Swimmer"] = {
        WeightPool = {
            55, 
            100
        }, 
        Chance = 22, 
        Rarity = "Unusual", 
        Resilience = 38, 
        Description = "These enigmatic fish appear to bend time around them, moving in impossible patterns through the abyss. Their very presence seems to distort the flow of time in ancient ruins.", 
        Hint = "Ethereal Abyss Pool", 
        FavouriteBait = "Truffle Worm", 
        FavouriteTime = nil, 
        Price = 400, 
        XP = 240, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Chronos Deep Swimmer!", 
            "Time bends!", 
            "The eternal one!"
        }, 
        SparkleColor = Color3.fromRGB(135, 206, 235), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Atlantis"
    }, 
    ["Voidscale Guppy"] = {
        WeightPool = {
            150, 
            300
        }, 
        Chance = 12, 
        Rarity = "Rare", 
        Resilience = 30, 
        Description = "These small but remarkable fish have scales that seem to absorb light itself. They create patches of pure darkness in the water, making them nearly invisible when still.", 
        Hint = "Ethereal Abyss Pool", 
        FavouriteBait = "Night Shrimp", 
        FavouriteTime = "Night", 
        Price = 650, 
        XP = 400, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Voidscale Guppy!", 
            "Shadow of the abyss!", 
            "Darkness swims!"
        }, 
        SparkleColor = Color3.fromRGB(50, 50, 50), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Atlantis"
    }, 
    ["Starlit Weaver"] = {
        WeightPool = {
            200, 
            400
        }, 
        Chance = 10, 
        Rarity = "Rare", 
        Resilience = 25, 
        Description = "These ethereal fish trail strands of bioluminescent light that weave complex patterns in the water. The patterns are said to map the currents of magical energy flowing through the abyss.", 
        Hint = "Ethereal Abyss Pool", 
        FavouriteBait = "Deep Coral", 
        FavouriteTime = "Night", 
        Price = 800, 
        XP = 500, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Starlit Weaver!", 
            "The lights dance!", 
            "Weaver of the void!"
        }, 
        SparkleColor = Color3.fromRGB(148, 0, 211), 
        HoldAnimation = l_fish_0:WaitForChild("bigbasic"), 
        From = "Atlantis"
    }, 
    ["Mage Marlin"] = {
        WeightPool = {
            1000, 
            2000
        }, 
        Chance = 1, 
        Rarity = "Legendary", 
        Resilience = 20, 
        Description = "Masters of aquatic magic, these mystical marlins channel the ethereal energies of the abyss through their sword-like bills. Their presence can cause surges of magical power in ancient ruins.", 
        Hint = "Ethereal Abyss Pool", 
        FavouriteBait = "Fish Head", 
        FavouriteTime = "Night", 
        Price = 2500, 
        XP = 1200, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "THE MAGE MARLIN!", 
            "ANCIENT POWER FLOWS!", 
            "MAGIC OF THE DEPTHS!"
        }, 
        SparkleColor = Color3.fromRGB(148, 0, 211), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Atlantis"
    }, 
    ["King Jellyfish"] = {
        WeightPool = {
            3000, 
            5000
        }, 
        Chance = 0.2, 
        Rarity = "Mythical", 
        Resilience = 12, 
        Description = "A behemoth composed partly of pure ethereal energy, this jellyfish is believed to be an ancient guardian of the abyss. It pulses with otherworldly power and commands lesser creatures with its presence.", 
        Hint = "Ethereal Abyss Pool", 
        FavouriteBait = "Truffle Worm", 
        FavouriteTime = "Night", 
        Price = 3500, 
        XP = 1800, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "THE KING JELLYFISH!", 
            "RULER OF THE VOID!", 
            "LIVING ETHEREAL!"
        }, 
        SparkleColor = Color3.fromRGB(158, 0, 255), 
        HoldAnimation = l_fish_0:WaitForChild("small"), 
        From = "Atlantis"
    }, 
    ["Shadowfang Snapper"] = {
        WeightPool = {
            20, 
            50
        }, 
        Chance = 60, 
        Rarity = "Uncommon", 
        Resilience = 75, 
        Description = "A twisted snapper warped by the Kraken's influence, with teeth sharp enough to pierce steel and scales that seem to absorb light.", 
        Hint = "Hunts in the shadowy corners of Kraken's Pool.", 
        FavouriteBait = "Fish Head", 
        FavouriteTime = "Night", 
        Price = 200, 
        XP = 120, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A SHADOWFANG SNAPPER!", 
            "THOSE TEETH!", 
            "DARKNESS BITES!", 
            "SHADOW HUNTER!"
        }, 
        SparkleColor = Color3.fromRGB(66, 28, 82), 
        HoldAnimation = l_fish_0:WaitForChild("small"), 
        From = "Atlantis"
    }, 
    ["Tentacled Horror"] = {
        WeightPool = {
            50, 
            120
        }, 
        Chance = 45, 
        Rarity = "Uncommon", 
        Resilience = 70, 
        Description = "A creature more tentacle than fish, its form suggests a distant relation to the Kraken itself. The water around it seems darker, as if light itself fears to touch it.", 
        Hint = "Look for writhing shadows in the depths, Kraken Pool.", 
        FavouriteBait = "Shrimp", 
        FavouriteTime = "Night", 
        Price = 300, 
        XP = 180, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A TENTACLED HORROR!", 
            "IT WRITHES!", 
            "KRAKEN-SPAWN!", 
            "THE DARKNESS MOVES!"
        }, 
        SparkleColor = Color3.fromRGB(82, 45, 104), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Atlantis"
    }, 
    ["Tentacle Eel"] = {
        WeightPool = {
            100, 
            200
        }, 
        Chance = 30, 
        Rarity = "Unusual", 
        Resilience = 65, 
        Description = "An eel twisted by void energies, its body now covered in small tentacles that reach for anything nearby. Even other Kraken-touched creatures avoid it.", 
        Hint = "Watch for reaching tendrils in dark waters, Kraken Pool.", 
        FavouriteBait = "Fish Head", 
        FavouriteTime = "Night", 
        Price = 450, 
        XP = 250, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A TENTACLE EEL!", 
            "IT REACHES!", 
            "VOID-TOUCHED!", 
            "THE TENDRILS GRASP!"
        }, 
        SparkleColor = Color3.fromRGB(98, 62, 120), 
        HoldAnimation = l_fish_0:WaitForChild("bigbasic"), 
        From = "Atlantis"
    }, 
    ["Deep One"] = {
        WeightPool = {
            200, 
            450
        }, 
        Chance = 15, 
        Rarity = "Rare", 
        Resilience = 45, 
        Description = "An ancient creature that dwells in the blackest depths. Its form suggests it existed long before normal fish, perhaps even before the oceans themselves.", 
        Hint = "The oldest parts of the pool hold its secrets, Kraken Pool.", 
        FavouriteBait = "Truffle Worm", 
        FavouriteTime = "Night", 
        Price = 900, 
        XP = 400, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A DEEP ONE!", 
            "ANCIENT TERROR!", 
            "IT REMEMBERS!", 
            "PRIMORDIAL BEING!"
        }, 
        SparkleColor = Color3.fromRGB(114, 78, 136), 
        HoldAnimation = l_fish_0:WaitForChild("small"), 
        From = "Atlantis"
    }, 
    ["Eldritch Horror"] = {
        WeightPool = {
            400, 
            800
        }, 
        Chance = 10, 
        Rarity = "Rare", 
        Resilience = 40, 
        Description = "A being whose very existence defies comprehension. Its body seems to exist in multiple dimensions at once, making it difficult to perceive or understand.", 
        Hint = "Your eyes may refuse to focus where it swims, Kraken Pool.", 
        FavouriteBait = "Truffle Worm", 
        FavouriteTime = "Night", 
        Price = 1200, 
        XP = 600, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "AN ELDRITCH HORROR!", 
            "REALITY BENDS!", 
            "INCOMPREHENSIBLE!", 
            "MY EYES!"
        }, 
        SparkleColor = Color3.fromRGB(130, 95, 152), 
        HoldAnimation = l_fish_0:WaitForChild("small"), 
        From = "Atlantis"
    }, 
    ["Kraken's Herald"] = {
        WeightPool = {
            2500, 
            5000
        }, 
        Chance = 0.8, 
        Rarity = "Legendary", 
        Resilience = 25, 
        ProgressEfficiency = 0.4, 
        Description = "A massive creature that serves as the Kraken's messenger. Its presence often precedes great disturbances in the deep, and lesser beings flee at its approach.", 
        Hint = "Watch for unusual patterns in the water's surface, Kraken Pool.", 
        FavouriteBait = "Truffle Worm", 
        FavouriteTime = "Night", 
        Price = 3000, 
        XP = 1500, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "THE HERALD APPEARS!", 
            "MESSENGER OF DOOM!", 
            "THE KRAKEN SPEAKS!", 
            "DARKNESS COMES!"
        }, 
        SparkleColor = Color3.fromRGB(146, 111, 168), 
        HoldAnimation = l_fish_0:WaitForChild("small"), 
        From = "Atlantis"
    }, 
    ["Abyssal King"] = {
        WeightPool = {
            3000, 
            6000
        }, 
        Chance = 0.4, 
        Rarity = "Legendary", 
        Resilience = 20, 
        ProgressEfficiency = 0.35, 
        Description = "A colossal being that rules over the abyssal depths. Its authority is second only to the Kraken itself, and its movements can cause earthquakes.", 
        Hint = "The ground trembles when it stirs, Kraken Pool.", 
        FavouriteBait = "Truffle Worm", 
        FavouriteTime = "Night", 
        Price = 4000, 
        XP = 2000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "THE ABYSSAL KING!", 
            "RULER OF DARKNESS!", 
            "BOW BEFORE IT!", 
            "THE DEEP'S MONARCH!"
        }, 
        SparkleColor = Color3.fromRGB(162, 128, 184), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Atlantis"
    }, 
    ["Void Emperor"] = {
        WeightPool = {
            7000, 
            12000
        }, 
        Chance = 0.2, 
        Rarity = "Mythical", 
        Resilience = 15, 
        ProgressEfficiency = 0.3, 
        Description = "An entity of pure darkness that commands the void itself. Its presence can extinguish light and create areas of absolute darkness in the water.", 
        Hint = "Look for patches where light cannot penetrate, Kraken Pool.", 
        FavouriteBait = "Truffle Worm", 
        FavouriteTime = "Night", 
        Price = 6000, 
        XP = 3000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "THE VOID EMPEROR!", 
            "DARKNESS REIGNS!", 
            "THE VOID COMMANDS!", 
            "ALL LIGHT DIES!"
        }, 
        SparkleColor = Color3.fromRGB(178, 144, 200), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Atlantis"
    }, 
    ["Abyssal Devourer"] = {
        WeightPool = {
            12000, 
            24000
        }, 
        Chance = 0.1, 
        Rarity = "Mythical", 
        Resilience = 12, 
        ProgressEfficiency = 0.25, 
        Description = "A colossal entity that feeds on darkness itself. Its hunger is endless, and its presence creates a void that nothing escapes.", 
        Hint = "The depths grow hollow in its wake, Kraken Pool.", 
        FavouriteBait = "Truffle Worm", 
        FavouriteTime = "Night", 
        Price = 8000, 
        XP = 4000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "THE DEVOURER RISES!", 
            "ENDLESS HUNGER!", 
            "ALL SHALL BE CONSUMED!", 
            "DARKNESS FALLS!"
        }, 
        SparkleColor = Color3.fromRGB(186, 152, 208), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Atlantis"
    }, 
    ["The Kraken"] = {
        BlockPassiveCapture = true, 
        WeightPool = {
            500000, 
            1800000
        }, 
        Chance = 0.02, 
        Rarity = "Exotic", 
        Resilience = 9, 
        ProgressEfficiency = 0.15, 
        Description = "The ruler of the abyssal depths, a being of such immense power that its mere presence warps the fabric of reality. Few have ever witnessed its true form and lived.", 
        Hint = "When all other creatures flee, the master approaches, Kraken Pool.", 
        FavouriteBait = {
            "Truffle Worm", 
            "Tryhard Worm"
        }, 
        FavouriteTime = "Night", 
        Price = 20000, 
        XP = 10000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "THE KRAKEN ITSELF!", 
            "MASTER OF THE DEPTHS!", 
            "REALITY SHATTERS!", 
            "THE END IS HERE!"
        }, 
        SparkleColor = Color3.fromRGB(202, 169, 224), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Atlantis"
    }, 
    ["Ancient Kraken"] = {
        BlockPassiveCapture = true, 
        WeightPool = {
            1000000, 
            2500000
        }, 
        Chance = 1.0E-6, 
        Rarity = "Secret", 
        Resilience = 1, 
        ProgressEfficiency = 0.05, 
        Description = "A direct descendant of the original Kraken, possessing a fraction of its progenitor's power. Its true form is impossible to comprehend, and its strength is beyond measure.", 
        Hint = "The oldest legends speak of its existence, Kraken Pool on Poseidon Wrath Event.", 
        FavouriteBait = "Truffle Worm", 
        FavouriteTime = "Night", 
        Price = 50000, 
        XP = 25000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "THE ANCIENT ONE!", 
            "PRIMAL DARKNESS!", 
            "BEYOND REALITY!", 
            "THE END COMES!"
        }, 
        SparkleColor = Color3.fromRGB(210, 177, 232), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Atlantis"
    }, 
    Orca = {
        WeightPool = {
            10000, 
            15000
        }, 
        Chance = 10, 
        Rarity = "Exotic", 
        Resilience = 4, 
        Description = "Orcas tend to migrate from time to time.", 
        Hint = "Search the ocean for migrating orcas", 
        FavouriteBait = "Shark Head", 
        FavouriteTime = nil, 
        Price = 12000, 
        XP = 8000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "ORCA! IMPOSSIBLE!", 
            "The tide bows to its eternal majesty!"
        }, 
        SparkleColor = Color3.fromRGB(85, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Ocean", 
        CustomProgressEfficiency = {
            {
                Value = -0.8
            }
        }
    }, 
    ["Ancient Orca"] = {
        BlockPassiveCapture = true, 
        WeightPool = {
            20000, 
            25000
        }, 
        Chance = 1.0E-8, 
        Rarity = "Secret", 
        Resilience = 5, 
        ProgressEfficiency = 0.2, 
        Description = "A rare orca, tend to migrate from time to time.", 
        Hint = "Search the ocean for migrating orcas", 
        FavouriteBait = "Shark Head", 
        FavouriteTime = nil, 
        Price = 15000, 
        XP = 10000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Ancient Orca! IMPOSSIBLE!", 
            "The tide bows to its eternal majesty!"
        }, 
        SparkleColor = Color3.fromRGB(85, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Ocean"
    }, 
    ["Blue Whale"] = {
        BlockPassiveCapture = true, 
        WeightPool = {
            1300000, 
            3000000
        }, 
        Chance = 5, 
        Rarity = "Exotic", 
        Resilience = 15, 
        ProgressEfficiency = 0.1, 
        Description = "A massive whale, often seen in cold waters during feeding season.", 
        Hint = "Known for its rarity and immense size, only the keenest eyes will spot it.", 
        FavouriteBait = "Shrimp", 
        FavouriteTime = nil, 
        Price = 30000, 
        XP = 25000, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "BLUE WHALE!", 
            "PRETTY BLUE!", 
            "I'll need a line replacement!", 
            "Extra large!"
        }, 
        SparkleColor = Color3.fromRGB(85, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Ocean"
    }, 
    Moby = {
        BlockPassiveCapture = true, 
        WeightPool = {
            1000000, 
            2000000
        }, 
        Chance = 6.0E-4, 
        Rarity = "Secret", 
        Resilience = 1, 
        ProgressEfficiency = 0.05, 
        Description = "A monstrous whale with a fearsome reputation, known to attack those who dare cross its path", 
        Hint = "???", 
        FavouriteBait = "Squid", 
        FavouriteTime = nil, 
        Price = 75000, 
        XP = 60000, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Moby?! IMPOSSIBLE!", 
            "BIG FOREHEAD!", 
            "UNMATCHED STRENGTH!", 
            "IT DIDN'T DESTROY MY BOAT!"
        }, 
        SparkleColor = Color3.fromRGB(85, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Ocean"
    }, 
    ["Titanic Black Seadevil"] = {
        WeightPool = {
            55, 
            105
        }, 
        Chance = 80, 
        Rarity = "Common", 
        Resilience = 95, 
        Description = "An all black anglerfish with a glowing lure that can be seen from miles away.", 
        Hint = "Commonly swims around shallow trenches, typically during storms.", 
        FavouriteBait = "Bagel", 
        FavouriteTime = "None", 
        Price = 45, 
        XP = 20, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A Titanic Black Seadevil!", 
            "Glowy!"
        }, 
        SparkleColor = Color3.fromRGB(29, 30, 77), 
        HoldAnimation = l_fish_0:WaitForChild("small"), 
        From = "Abyssal Zenith"
    }, 
    ["Leviathan Humpback Anglerfish"] = {
        WeightPool = {
            350, 
            800
        }, 
        Chance = 70, 
        Rarity = "Common", 
        Resilience = 90, 
        Description = "An anglerfish with a humpback and a glowing lure that pulses like a heartbeat.", 
        Hint = "Noticed within the warmer parts of the abyss, especially during rainfall.", 
        FavouriteBait = "Worm", 
        FavouriteTime = "None", 
        Price = 40, 
        XP = 25, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A Leviathan Humpback Anglerfish!", 
            "Like a lantern!"
        }, 
        SparkleColor = Color3.fromRGB(29, 30, 77), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Abyssal Zenith"
    }, 
    ["Abyssal Bearded Seadevil"] = {
        Icon = "rbxassetid://124054246093053", 
        WeightPool = {
            180, 
            400
        }, 
        Chance = 60, 
        Rarity = "Uncommon", 
        Resilience = 85, 
        Description = "A terrifying fish with a glowing beard-like lure and razor-sharp teeth.", 
        Hint = "Located in the coldest parts of the trench, typically found in groups.", 
        FavouriteBait = "Insect", 
        FavouriteTime = "None", 
        Price = 120, 
        XP = 95, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "An Abyssal Bearded Seadevil!", 
            "Horrifying!", 
            "Could use a shave..."
        }, 
        SparkleColor = Color3.fromRGB(29, 30, 77), 
        HoldAnimation = l_fish_0:WaitForChild("small"), 
        From = "Abyssal Zenith"
    }, 
    ["Colossal Saccopharynx"] = {
        WeightPool = {
            800, 
            2000
        }, 
        Chance = 55, 
        Rarity = "Uncommon", 
        Resilience = 70, 
        Description = "A large, eel-like fish with a jaw that can unhinge to swallow prey whole.", 
        Hint = "Discovered in the deepest ends of the abyss, especially during gusty weather.", 
        FavouriteBait = "Flakes", 
        FavouriteTime = "None", 
        Price = 100, 
        XP = 90, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Windy"
        }, 
        Quips = {
            "A Colossal Saccopharynx!", 
            "It's like a living nightmare!!"
        }, 
        SparkleColor = Color3.fromRGB(29, 30, 77), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Abyssal Zenith"
    }, 
    ["Radiant Triplewart Seadevil"] = {
        WeightPool = {
            100, 
            210
        }, 
        Chance = 35, 
        Rarity = "Unusual", 
        Resilience = 55, 
        Description = "A bizarre fish with three glowing lures and a body covered in bioluminescent spots.", 
        Hint = "Prefers cool, still waters with empty skies.", 
        FavouriteBait = "Shrimp", 
        FavouriteTime = nil, 
        Price = 600, 
        XP = 200, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Radiant Triplewart Seadevil!", 
            "Greater than immortal!"
        }, 
        SparkleColor = Color3.fromRGB(29, 30, 77), 
        HoldAnimation = l_fish_0:WaitForChild("small"), 
        From = "Abyssal Zenith"
    }, 
    ["Deeplight Footballfish"] = {
        WeightPool = {
            175, 
            400
        }, 
        Chance = 20, 
        Rarity = "Rare", 
        Resilience = 65, 
        Description = "A large footballfish with a circular shape, it can light up the entire abyss.", 
        Hint = "Typically away from groups, it prefers uncrowded skies.", 
        FavouriteBait = "Seaweed", 
        FavouriteTime = nil, 
        Price = 1000, 
        XP = 325, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Deeplight Footballfish!", 
            "Goal!", 
            "Not a typical football..."
        }, 
        SparkleColor = Color3.fromRGB(29, 30, 77), 
        HoldAnimation = l_fish_0:WaitForChild("small"), 
        From = "Abyssal Zenith"
    }, 
    ["Voidglow Ghostfish"] = {
        Icon = "rbxassetid://87185870245453", 
        WeightPool = {
            8000, 
            23000
        }, 
        Chance = 15, 
        Rarity = "Legendary", 
        Resilience = 10, 
        ProgressEfficiency = 0.4, 
        Description = "A ghostly fish with a glowing body that seems to phase in and out of existence.", 
        Hint = "Haunting the deepest parts of the trench, particularly under vast amounts of shade and deep fog.", 
        FavouriteBait = "Squid", 
        FavouriteTime = nil, 
        Price = 7500, 
        XP = 2800, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A Voidglow Ghostfish!", 
            "It isn't even Halloween!", 
            "Spooky!"
        }, 
        SparkleColor = Color3.fromRGB(29, 30, 77), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Abyssal Zenith"
    }, 
    ["Infant Giant Seadevil"] = {
        WeightPool = {
            6000, 
            17000
        }, 
        Chance = 0.005, 
        Rarity = "Legendary", 
        Resilience = 12, 
        ProgressEfficiency = 0.45, 
        Description = "A juvenile version of the Giant Seadevil, with a bright lure and razor-sharp teeth.", 
        Hint = "Found in the deeper parts of the trench, especially within cool temperatures.", 
        FavouriteBait = "Truffle Worm", 
        FavouriteTime = nil, 
        Price = 5000, 
        XP = 2600, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "AN INFANT GIANT SEADEVIL!?", 
            "YOUNG YET DANGEROUS!"
        }, 
        SparkleColor = Color3.fromRGB(29, 30, 77), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Abyssal Zenith"
    }, 
    ["Giant Seadevil"] = {
        WeightPool = {
            20000, 
            50000
        }, 
        Chance = 0.01, 
        Rarity = "Mythical", 
        Resilience = 8, 
        ProgressEfficiency = 0.2, 
        Description = "A massive, terrifying fish with a glowing lure and teeth as sharp as the finest of blades.", 
        Hint = "Swims in the deepest parts of the trench, especially under clear skies.", 
        FavouriteBait = "Fish Head", 
        FavouriteTime = nil, 
        Price = 9000, 
        XP = 3800, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A GIANT SEADEVIL!?", 
            "MONSTER!", 
            "IT GREW UP!"
        }, 
        SparkleColor = Color3.fromRGB(29, 30, 77), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Abyssal Zenith"
    }, 
    ["Quartzfin Queenfish"] = {
        WeightPool = {
            180, 
            400
        }, 
        Chance = 65, 
        Rarity = "Common", 
        Resilience = 100, 
        Description = "A small, shimmering fish with quartz-like fins that sparkle in the light.", 
        Hint = "Found in shallow, clear waters, especially on warm days.", 
        FavouriteBait = "Insect", 
        FavouriteTime = "Day", 
        Price = 300, 
        XP = 50, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Quartzfin Queenfish!", 
            "From the Nether!"
        }, 
        SparkleColor = Color3.fromRGB(85, 250, 220), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Calm Zone"
    }, 
    ["Diamond Discus"] = {
        WeightPool = {
            800, 
            1750
        }, 
        Chance = 55, 
        Rarity = "Uncommon", 
        Resilience = 85, 
        Description = "A flat, disc-shaped fish with diamond-like scales that reflect light beautifully.", 
        Hint = "Glistening in freezing waters, notably when the sky is clear.", 
        FavouriteBait = "Flakes", 
        FavouriteTime = "Day", 
        Price = 1200, 
        XP = 110, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Diamond Discus!", 
            "Not moissanite!", 
            "Mining away!"
        }, 
        SparkleColor = Color3.fromRGB(85, 250, 220), 
        HoldAnimation = l_fish_0:WaitForChild("small"), 
        From = "Calm Zone"
    }, 
    ["Emerald Elephantnose"] = {
        WeightPool = {
            600, 
            1600
        }, 
        Chance = 45, 
        Rarity = "Uncommon", 
        Resilience = 90, 
        Description = "A small fish with an elongated nose and emerald-green scales.", 
        Hint = "Located in clear waters with a glistening green shine, typically during the day.", 
        FavouriteBait = "Bagel", 
        FavouriteTime = "Day", 
        Price = 1000, 
        XP = 100, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "An Emerald Elephantnose!", 
            "Perfect for trading!", 
            "Not quite elephant-sized..."
        }, 
        SparkleColor = Color3.fromRGB(85, 250, 220), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Calm Zone"
    }, 
    ["Sapphire Stargazer"] = {
        WeightPool = {
            500, 
            1400
        }, 
        Chance = 25, 
        Rarity = "Unusual", 
        Resilience = 85, 
        Description = "A flat fish with sapphire-blue scales and glowing eyes that stare into the light.", 
        Hint = "Located in clear waters with a glistening deep blue shine.", 
        FavouriteBait = "Seaweed", 
        FavouriteTime = nil, 
        Price = 1300, 
        XP = 250, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Sapphire Stargazer!", 
            "Rollin', Rollin', Rollin'..."
        }, 
        SparkleColor = Color3.fromRGB(85, 250, 220), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Calm Zone"
    }, 
    ["Ruby Rasbora"] = {
        WeightPool = {
            395, 
            1000
        }, 
        Chance = 20, 
        Rarity = "Rare", 
        Resilience = 70, 
        Description = "A small, red fish with ruby-like scales that shimmer in the light.", 
        Hint = "Located in clear waters with a glistening red shine, typically during cold nights.", 
        FavouriteBait = "Squid", 
        FavouriteTime = "Night", 
        Price = 1400, 
        XP = 350, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Ruby Rasbora!", 
            "Red like a rose!"
        }, 
        SparkleColor = Color3.fromRGB(85, 250, 220), 
        HoldAnimation = l_fish_0:WaitForChild("small"), 
        From = "Calm Zone"
    }, 
    ["Prismatic Parrotfish"] = {
        WeightPool = {
            80, 
            240
        }, 
        Chance = 10, 
        Rarity = "Rare", 
        Resilience = 40, 
        Description = "A colorful fish with scales that reflect every color of the rainbow.", 
        Hint = "Located in clear waters with a glistening rainbow shine.", 
        FavouriteBait = "Minnow", 
        FavouriteTime = nil, 
        Price = 1500, 
        XP = 650, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Prismatic Parrotfish!", 
            "It isn't talking back!"
        }, 
        SparkleColor = Color3.fromRGB(85, 250, 220), 
        HoldAnimation = l_fish_0:WaitForChild("small"), 
        From = "Calm Zone"
    }, 
    ["Crystal Corydoras"] = {
        WeightPool = {
            1500, 
            4000
        }, 
        Chance = 5, 
        Rarity = "Legendary", 
        Resilience = 25, 
        ProgressEfficiency = 0.9, 
        Description = "An armored fish with crystal-like scales that shimmer in the light.", 
        Hint = "Located in clear waters with a wide variation of shining colors, frequently providing light to the darkness.", 
        FavouriteBait = "Truffle Worm", 
        FavouriteTime = "Night", 
        Price = 3000, 
        XP = 2000, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A CRYSTAL CORYDORAS!?", 
            "SO SHINY!", 
            "PRETTY COLORS!"
        }, 
        SparkleColor = Color3.fromRGB(85, 250, 220), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Calm Zone"
    }, 
    ["Shimmering Silverside"] = {
        WeightPool = {
            250, 
            700
        }, 
        Chance = 3, 
        Rarity = "Mythical", 
        Resilience = 20, 
        ProgressEfficiency = 0.8, 
        Description = "A sleek, silver fish with scales that shimmer like liquid metal.", 
        Hint = "Located in clear waters with a unique indescribable shine, rarely spotted within the darkness.", 
        FavouriteBait = "Truffle Worm", 
        FavouriteTime = "Night", 
        Price = 7800, 
        XP = 2400, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A SHIMMERING SILVERSIDE!?", 
            "UNMATCHED BEAUTY!", 
            "ONE OF A KIND!"
        }, 
        SparkleColor = Color3.fromRGB(85, 250, 220), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Calm Zone"
    }, 
    ["Inferno Hide"] = {
        Icon = "rbxassetid://114499683111142", 
        BlockPassiveCapture = true, 
        WeightPool = {
            30, 
            80
        }, 
        Chance = 20, 
        Rarity = "Common", 
        Resilience = 100, 
        ProgressEfficiency = 0.8, 
        Description = "Inferno Hide.. Used to craft something?", 
        Hint = "Its pretty", 
        FavouriteBait = "None", 
        FavouriteTime = "None", 
        Price = 50, 
        XP = 250, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "Thats pretty"
        }, 
        SparkleColor = Color3.fromRGB(170, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Volcanic Vents"
    }, 
    ["Hellfire Haddock"] = {
        WeightPool = {
            25, 
            60
        }, 
        Chance = 70, 
        Rarity = "Common", 
        Resilience = 95, 
        Description = "A small, scorching fish that flickers like a dying flame.", 
        Hint = "Common within the dark, especially after rainfall.", 
        FavouriteBait = "Worm", 
        FavouriteTime = "Night", 
        Price = 50, 
        XP = 20, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A Hellfire Haddock!", 
            "Scorching!"
        }, 
        SparkleColor = Color3.fromRGB(255, 102, 46), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Volcanic Vents"
    }, 
    ["Embertail Eel"] = {
        WeightPool = {
            18, 
            40
        }, 
        Chance = 60, 
        Rarity = "Uncommon", 
        Resilience = 90, 
        Description = "A small eel with molten stripes that shimmer in the dark. It glows faintly at night.", 
        Hint = "A small yet dangerous fish, not a fan of direct light.", 
        FavouriteBait = "Flakes", 
        FavouriteTime = "Night", 
        Price = 130, 
        XP = 90, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "An Embertail Eel!", 
            "Not much meat, but lots of heat!"
        }, 
        SparkleColor = Color3.fromRGB(255, 102, 46), 
        HoldAnimation = l_fish_0:WaitForChild("bigbasic"), 
        From = "Volcanic Vents"
    }, 
    ["Infernal Iguanafish"] = {
        Icon = "rbxassetid://95002653693710", 
        WeightPool = {
            8, 
            20
        }, 
        Chance = 55, 
        Rarity = "Uncommon", 
        Resilience = 80, 
        Description = "A fearsome, lizard-like fish with jagged scales that glow like molten rock.", 
        Hint = "Not quite a lizard, typically found when under star-lit skies.", 
        FavouriteBait = "Insect", 
        FavouriteTime = "Night", 
        Price = 120, 
        XP = 80, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Windy"
        }, 
        Quips = {
            "An Infernal Iguanafish!", 
            "That's not a reptile!"
        }, 
        SparkleColor = Color3.fromRGB(255, 102, 46), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Volcanic Vents"
    }, 
    ["Smoldering Stingray"] = {
        WeightPool = {
            80, 
            170
        }, 
        Chance = 35, 
        Rarity = "Unusual", 
        Resilience = 75, 
        Description = "A broad stingray with glowing magma veins running along its wings.", 
        Hint = "Prefers warm, still waters under the cover of night.", 
        FavouriteBait = "Seaweed", 
        FavouriteTime = "Night", 
        Price = 900, 
        XP = 150, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Smoldering Stingray!", 
            "Ouch!"
        }, 
        SparkleColor = Color3.fromRGB(255, 102, 46), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Volcanic Vents"
    }, 
    ["Pyrite Pufferfish"] = {
        WeightPool = {
            75, 
            190
        }, 
        Chance = 20, 
        Rarity = "Rare", 
        Resilience = 60, 
        Description = "A round, spiky fish with a flaming sheen. Its body hardens when threatened.", 
        Hint = "Found absent from the crowd, it prefers to avoid direct sunlight.", 
        FavouriteBait = "Shrimp", 
        FavouriteTime = "Night", 
        Price = 1100, 
        XP = 250, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Pyrite Pufferfish!", 
            "It seems angered..."
        }, 
        SparkleColor = Color3.fromRGB(255, 102, 46), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Volcanic Vents"
    }, 
    ["Molten Moray"] = {
        WeightPool = {
            80, 
            230
        }, 
        Chance = 15, 
        Rarity = "Rare", 
        Resilience = 35, 
        Description = "A long, slender fish with dark, heat-resistant scales. Hot to the touch.", 
        Hint = "Small yet blindingly bright. When it rains, it hunts.", 
        FavouriteBait = "Minnow", 
        FavouriteTime = nil, 
        Price = 1300, 
        XP = 450, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A Molten Moray!", 
            "It melted my hook!"
        }, 
        SparkleColor = Color3.fromRGB(255, 102, 46), 
        HoldAnimation = l_fish_0:WaitForChild("bigbasic"), 
        From = "Volcanic Vents"
    }, 
    ["Scalding Swordfish"] = {
        WeightPool = {
            10000, 
            25000
        }, 
        Chance = 0.005, 
        Rarity = "Legendary", 
        Resilience = 15, 
        ProgressEfficiency = 0.4, 
        Description = "A sharp fish with glowing red eyes and a body wreathed in smoky tendrils, rumored to be a spirit of the lava itself.", 
        Hint = "With a razor-sharp edge, it is said to appear when the sun blazes overhead.", 
        FavouriteBait = "Truffle Worm", 
        FavouriteTime = "Day", 
        Price = 4000, 
        XP = 1100, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A SCALDING SWORDFISH!?", 
            "FROM THE UNDERWORLD!"
        }, 
        SparkleColor = Color3.fromRGB(255, 102, 46), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Volcanic Vents"
    }, 
    ["Blisterback Blenny"] = {
        Icon = "rbxassetid://110086622505618", 
        WeightPool = {
            10000, 
            28000
        }, 
        Chance = 0.01, 
        Rarity = "Mythical", 
        Resilience = 10, 
        ProgressEfficiency = 0.35, 
        Description = "A colossal fish with jagged, obsidian fins and an inner fire that lights up its body. It is said to be faster than a tsunami.", 
        Hint = "If the skies are clear and the air is hot, be ready.", 
        FavouriteBait = "Fish Head", 
        FavouriteTime = "Day", 
        Price = 6300, 
        XP = 1500, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A BLISTERBACK BLENNY!?", 
            "THE MOLTEN HUNTER!"
        }, 
        SparkleColor = Color3.fromRGB(255, 102, 46), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Volcanic Vents"
    }, 
    ["Hydra Haddock"] = {
        WeightPool = {
            210, 
            470
        }, 
        Chance = 65, 
        Rarity = "Common", 
        Resilience = 90, 
        Description = "A small, hydra-type fish with dark scales and glowing eyes.", 
        Hint = "A steady fish, commonly spotted during windy conditions.", 
        FavouriteBait = "Insect", 
        FavouriteTime = nil, 
        Price = 400, 
        XP = 160, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Windy"
        }, 
        Quips = {
            "A Hydra Haddock!", 
            "Fierce!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("small"), 
        From = "Veil of the Forsaken"
    }, 
    ["Serpent Surgeonfish"] = {
        WeightPool = {
            850, 
            2100
        }, 
        Chance = 55, 
        Rarity = "Uncommon", 
        Resilience = 75, 
        ProgressEfficiency = 0.95, 
        Description = "A long, snake-like fish with sharp fins and glowing eyes.", 
        Hint = "A swift fish that is typically difficult to spot due to foggy conditions.", 
        FavouriteBait = "Bagel", 
        FavouriteTime = nil, 
        Price = 1250, 
        XP = 220, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A Serpent Surgeonfish!", 
            "That's no doctor!", 
            "Where did it get a scalpel..."
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("small"), 
        From = "Veil of the Forsaken"
    }, 
    ["Kraken Koi"] = {
        WeightPool = {
            1000, 
            2800
        }, 
        Chance = 45, 
        Rarity = "Uncommon", 
        Resilience = 70, 
        ProgressEfficiency = 0.85, 
        Description = "A dark, ominous koi with glowing eyes and tentacle-like fins.", 
        Hint = "Located in deeper waters, typically when the weather is still.", 
        FavouriteBait = "Worm", 
        FavouriteTime = nil, 
        Price = 1100, 
        XP = 330, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Kraken Koi!", 
            "A KRAKE- Nevermind...", 
            "Cute!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Veil of the Forsaken"
    }, 
    ["Gorgon Grouper"] = {
        WeightPool = {
            600, 
            1650
        }, 
        Chance = 25, 
        Rarity = "Unusual", 
        Resilience = 55, 
        ProgressEfficiency = 0.8, 
        Description = "A stone-like fish with glowing eyes and a body covered in moss.", 
        Hint = "Prefers to swim in groups, where conditions are clear.", 
        FavouriteBait = "Minnow", 
        FavouriteTime = nil, 
        Price = 1500, 
        XP = 1350, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Gorgon Grouper!", 
            "Doesn't look like a monster to me!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Veil of the Forsaken"
    }, 
    ["Cyclone Scorpionfish"] = {
        WeightPool = {
            460, 
            1200
        }, 
        Chance = 20, 
        Rarity = "Rare", 
        Resilience = 40, 
        ProgressEfficiency = 0.6, 
        Description = "A spiky fish with glowing eyes and a body that spins like a cyclone.", 
        Hint = "Usually found in shallow water, where rain is prevalent.", 
        FavouriteBait = "Seaweed", 
        FavouriteTime = nil, 
        Price = 1800, 
        XP = 1150, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A Cyclone Scorpionfish!", 
            "A disaster fish!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Veil of the Forsaken"
    }, 
    ["Siren Sculpin"] = {
        WeightPool = {
            900, 
            2500
        }, 
        Chance = 10, 
        Rarity = "Rare", 
        Resilience = 30, 
        ProgressEfficiency = 0.5, 
        Description = "A small, glowing fish with a hypnotic pattern on its scales.", 
        Hint = "Typically found alone, where wind is fierce.", 
        FavouriteBait = "Squid", 
        FavouriteTime = nil, 
        Price = 4000, 
        XP = 1450, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Windy"
        }, 
        Quips = {
            "A Siren Sculpin!", 
            "It's so mesmerizing!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Veil of the Forsaken"
    }, 
    ["Typhoon Tailfin"] = {
        WeightPool = {
            12000, 
            34000
        }, 
        Chance = 5, 
        Rarity = "Legendary", 
        Resilience = 10, 
        ProgressEfficiency = 0.2, 
        Description = "A large fish with the power of a typhoon.", 
        Hint = "Occasionally located in stormy weather conditions.", 
        FavouriteBait = "Truffle Worm", 
        FavouriteTime = nil, 
        Price = 9000, 
        XP = 2800, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A TYPHOON TAILFIN!?", 
            "INCREDIBLE POWER!", 
            "DANGER!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Veil of the Forsaken"
    }, 
    ["Twilight Tentaclefish"] = {
        WeightPool = {
            2800, 
            7500
        }, 
        Chance = 3, 
        Rarity = "Mythical", 
        Resilience = 5, 
        ProgressEfficiency = 0.15, 
        Description = "A long, tentacle-like fish with glowing eyes and a body that shimmers in the dark.", 
        Hint = "Rarely spotted in dark, murky waters", 
        FavouriteBait = "Truffle Worm", 
        FavouriteTime = nil, 
        Price = 13000, 
        XP = 3400, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A TWILIGHT TENTACLEFISH!?", 
            "OCTOPUS THING!", 
            "TWILIGHT!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Veil of the Forsaken"
    }, 
    ["Baby Pond Emperor"] = {
        BlockPassiveCapture = true, 
        WeightPool = {
            5, 
            20
        }, 
        Chance = 0.5, 
        Rarity = "Exotic", 
        Resilience = 10, 
        ProgressEfficiency = 0.2, 
        Description = "It's a mini Pond Emperor!", 
        Hint = "Found in Snowcap Pond.", 
        FavouriteBait = "Squid", 
        FavouriteTime = nil, 
        Price = 5000, 
        XP = 100, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "Woah! a Baby Pond Emperor!", 
            "A Baby Pond Emperor..?", 
            "It's so cute!"
        }, 
        SparkleColor = Color3.fromRGB(255, 227, 15), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Snowcap"
    }, 
    ["Sea Leviathan"] = {
        WeightPool = {
            22000, 
            60000
        }, 
        Chance = 1, 
        Rarity = "Extinct", 
        Resilience = 3, 
        Description = "A swift and deadly predator of the fog, elusive and nearly untouchable in its element.", 
        Hint = "Venture into the fog where this elusive creature lurks, quick as the mist itself.", 
        FavouriteBait = "Luminous Larva", 
        FavouriteTime = nil, 
        Price = 21000, 
        XP = 15000, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A SEA LEVIATHAN!?!", 
            "A SHADOW IN THE MIST!", 
            "THE FEROCITY OF A STORM!"
        }, 
        SparkleColor = Color3.fromRGB(255, 47, 0), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Second Sea", 
        CustomProgressEfficiency = {
            {
                Value = -0.9
            }
        }, 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Gale Snapper"] = {
        Icon = "rbxassetid://139112436973391", 
        WeightPool = {
            20, 
            55
        }, 
        Chance = 100, 
        Rarity = "Extinct", 
        Resilience = 80, 
        ProgressEfficiency = 1.2, 
        Description = "A sleek grey fish adorned with shimmering blue stripes, darting through the shallows like a fleeting gust.", 
        Hint = "Look for it when the winds stir the surface.", 
        FavouriteBait = "Worm", 
        FavouriteTime = "Day", 
        Price = 30, 
        XP = 15, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "Windy"
        }, 
        Quips = {
            "A Gale Snapper!", 
            "Quick as the breeze!", 
            "Stripey little fella!"
        }, 
        SparkleColor = Color3.fromRGB(73, 62, 237), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Drift Claw"] = {
        Icon = "rbxassetid://126596829342845", 
        WeightPool = {
            460, 
            1200
        }, 
        Chance = 90, 
        Rarity = "Extinct", 
        Resilience = 65, 
        ProgressEfficiency = 0.95, 
        Description = "A darker red fish with vivid bright red accents, lurking like a crimson shadow in the currents.", 
        Hint = "It thrives where the cool water runs deep and slow.", 
        FavouriteBait = "Shrimp", 
        FavouriteTime = "Night", 
        Price = 40, 
        XP = 20, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A Drift Claw!", 
            "Red as blood!", 
            "Caught in the drift!"
        }, 
        SparkleColor = Color3.fromRGB(255, 75, 10), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    Foamrunner = {
        Icon = "rbxassetid://84356183101180", 
        WeightPool = {
            500, 
            1350
        }, 
        Chance = 80, 
        Rarity = "Extinct", 
        Resilience = 55, 
        ProgressEfficiency = 1.12, 
        Description = "A light blue fish speckled with bright light blue spots, skimming the surface like sea foam.", 
        Hint = "Seek it where the mist meets the eye.", 
        FavouriteBait = "Flakes", 
        FavouriteTime = nil, 
        Price = 80, 
        XP = 40, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A Foamrunner!", 
            "Spotted a speedy one!", 
            "Light as the tide!"
        }, 
        SparkleColor = Color3.fromRGB(120, 255, 246), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    Sprayfin = {
        Icon = "rbxassetid://83395965868895", 
        WeightPool = {
            50, 
            140
        }, 
        Chance = 70, 
        Rarity = "Extinct", 
        Resilience = 60, 
        ProgressEfficiency = 1.08, 
        Description = "A vibrant yellow fish with dark yellow stripes, slashing through the water like a burst of sunlight.", 
        Hint = "It swims under the rays of the sun.", 
        FavouriteBait = "Minnow", 
        FavouriteTime = "Day", 
        Price = 90, 
        XP = 45, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Sprayfin!", 
            "Sunny and swift!", 
            "A splash of gold!"
        }, 
        SparkleColor = Color3.fromRGB(255, 220, 92), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Ripple Spine"] = {
        Icon = "rbxassetid://136572643815500", 
        WeightPool = {
            750, 
            1900
        }, 
        Chance = 60, 
        Rarity = "Extinct", 
        Resilience = 45, 
        ProgressEfficiency = 1.1, 
        Description = "A light blue fish with long, flowing fins and dark blue stripes, rippling through the water like a living wave.", 
        Hint = "It glides where the currents hum softly.", 
        FavouriteBait = "Seaweed", 
        FavouriteTime = "Night", 
        Price = 140, 
        XP = 70, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Ripple Spine!", 
            "Fins like a river!", 
            "Caught a wavy one!"
        }, 
        SparkleColor = Color3.fromRGB(140, 255, 242), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Depth Lurker"] = {
        Icon = "rbxassetid://81860867661655", 
        WeightPool = {
            250, 
            600
        }, 
        Chance = 50, 
        Rarity = "Extinct", 
        Resilience = 50, 
        Description = "A grey fish with light purple fins, lurking in the shadows of the deep like a silent phantom.", 
        Hint = "It waits where the light barely reaches.", 
        FavouriteBait = "Insect", 
        FavouriteTime = nil, 
        Price = 150, 
        XP = 75, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A Depth Lurker!", 
            "Sneaky shadow!", 
            "Purple fins, huh?"
        }, 
        SparkleColor = Color3.fromRGB(157, 157, 209), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Surge Pike"] = {
        Icon = "rbxassetid://108565835701703", 
        WeightPool = {
            1500, 
            4000
        }, 
        Chance = 40, 
        Rarity = "Extinct", 
        Resilience = 35, 
        ProgressEfficiency = 1.05, 
        Description = "A long, slender fish with light yellow fins, surging through the water with electric grace.", 
        Hint = "It strikes when the air feels charged.", 
        FavouriteBait = "Magnet", 
        FavouriteTime = "Day", 
        Price = 380, 
        XP = 190, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Windy"
        }, 
        Quips = {
            "A Surge Pike!", 
            "Long and zappy!", 
            "Caught a live wire!"
        }, 
        SparkleColor = Color3.fromRGB(231, 255, 135), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Abyss Dart"] = {
        Icon = "rbxassetid://120122502922513", 
        WeightPool = {
            650, 
            1800
        }, 
        Chance = 30, 
        Rarity = "Extinct", 
        Resilience = 40, 
        ProgressEfficiency = 0.9, 
        Description = "A lilac colored fish with light purple fins and a sharp, pointed snout, piercing the abyss like a dart.", 
        Hint = "It hunts in the darkest corners of the sea.", 
        FavouriteBait = "Squid", 
        FavouriteTime = "Night", 
        Price = 400, 
        XP = 200, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "An Abyss Dart!", 
            "Pointy and purple!", 
            "Darted right in!"
        }, 
        SparkleColor = Color3.fromRGB(204, 189, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Breaker Moth"] = {
        Icon = "rbxassetid://132703206802175", 
        WeightPool = {
            300, 
            800
        }, 
        Chance = 20, 
        Rarity = "Extinct", 
        Resilience = 25, 
        ProgressEfficiency = 0.65, 
        Description = "A grey fish with sharp teeth, golden accents, and light purple fins, snapping through the tide.", 
        Hint = "It emerges when the moon glows faintly.", 
        FavouriteBait = "Gale Grub", 
        FavouriteTime = "Night", 
        Price = 1100, 
        XP = 550, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A BREAKER MOTH!", 
            "TEETH LIKE DAGGERS!", 
            "GOLDEN SNAP!"
        }, 
        SparkleColor = Color3.fromRGB(230, 202, 64), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Tide Fang"] = {
        Icon = "rbxassetid://113365976852842", 
        WeightPool = {
            600, 
            1500
        }, 
        Chance = 10, 
        Rarity = "Extinct", 
        Resilience = 30, 
        ProgressEfficiency = 0.55, 
        Description = "A dark green fish with teal fins and light green spots, biting through the waves with feral might.", 
        Hint = "It prowls when the tide turns restless.", 
        FavouriteBait = "Neuro Slug", 
        FavouriteTime = "Day", 
        Price = 1200, 
        XP = 600, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Windy"
        }, 
        Quips = {
            "A TIDE FANG!", 
            "FEROCIOUS BITE!", 
            "SPOTTED A BEAST!"
        }, 
        SparkleColor = Color3.fromRGB(64, 230, 166), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Wave Piercer"] = {
        Icon = "rbxassetid://121439252523126", 
        WeightPool = {
            500, 
            1400
        }, 
        Chance = 5, 
        Rarity = "Extinct", 
        Resilience = 15, 
        ProgressEfficiency = 0.45, 
        Description = "A grey fish with light blue fins and dark grey stripes, cutting through the waves with ethereal precision.", 
        Hint = "It appears when the sea mirrors the sky.", 
        FavouriteBait = "Truffle Worm", 
        FavouriteTime = "Night", 
        Price = 2100, 
        XP = 1050, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A WAVE PIERCER!", 
            "SLICES THE TIDE!", 
            "STRIKING BEAUTY!"
        }, 
        SparkleColor = Color3.fromRGB(184, 238, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Gust Tail"] = {
        Icon = "rbxassetid://124021549219972", 
        WeightPool = {
            5500, 
            12000
        }, 
        Chance = 3, 
        Rarity = "Extinct", 
        Resilience = 20, 
        ProgressEfficiency = 0.35, 
        Description = "A beige colored fish with piercing yellow eyes and dark grey stripes, riding the gusts below.", 
        Hint = "It soars beneath stormy whispers.", 
        FavouriteBait = "Nightmare Larva", 
        FavouriteTime = nil, 
        Price = 2200, 
        XP = 1100, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Windy"
        }, 
        Quips = {
            "A GUST TAIL!", 
            "EYES LIKE LIGHTNING!", 
            "WIND IN ITS FINS!"
        }, 
        SparkleColor = Color3.fromRGB(249, 255, 184), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Vortex Ray"] = {
        Icon = "rbxassetid://80389769702703", 
        WeightPool = {
            4000, 
            11000
        }, 
        Chance = 2, 
        Rarity = "Extinct", 
        Resilience = 10, 
        ProgressEfficiency = 0.3, 
        Description = "A deep blue fish with yellow accents and dark blue stripes, swirling through the depths.", 
        Hint = "It spirals where the waters twist.", 
        FavouriteBait = "Luminous Larva", 
        FavouriteTime = "Day", 
        Price = 7500, 
        XP = 3750, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A VORTEX RAY!?!", 
            "TAIL OF DOOM!!", 
            "SWIRLING MENACE!?"
        }, 
        SparkleColor = Color3.fromRGB(84, 155, 255), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Storm Skipper"] = {
        Icon = "rbxassetid://118721375993994", 
        BlockPassiveCapture = true, 
        WeightPool = {
            500, 
            1500
        }, 
        Chance = 1, 
        Rarity = "Extinct", 
        Resilience = 5, 
        ProgressEfficiency = 0.25, 
        Description = "A dark blue fish crackling with light blue electric arcs, adorned with light blue spots and fins, skipping through tempests.", 
        Hint = "It thrives in the midst of chaos.", 
        FavouriteBait = "Golden Worm", 
        FavouriteTime = "Night", 
        Price = 10000, 
        XP = 5000, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "Windy"
        }, 
        Quips = {
            "A STORM SKIPPER!?!", 
            "ELECTRIC FURY!!", 
            "SHOCKING CATCH!?"
        }, 
        SparkleColor = Color3.fromRGB(130, 251, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Watching Glowfin"] = {
        Icon = "rbxassetid://103483576267723", 
        WeightPool = {
            10, 
            40
        }, 
        Chance = 230, 
        Rarity = "Extinct", 
        Resilience = 80, 
        ProgressEfficiency = 1.2, 
        Description = "A vigilant presence that glows with quiet menace.", 
        Hint = "It watches from the shallows when the sun is high.", 
        FavouriteBait = "Worm", 
        FavouriteTime = "Day", 
        Price = 30, 
        XP = 20, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Watching Glowfin!", 
            "Caught it staring!", 
            "Glows with grit!"
        }, 
        SparkleColor = Color3.fromRGB(0, 255, 200), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Drifting Gildfin"] = {
        Icon = "rbxassetid://83632386474738", 
        WeightPool = {
            15, 
            45
        }, 
        Chance = 195, 
        Rarity = "Extinct", 
        Resilience = 75, 
        ProgressEfficiency = 1.15, 
        Description = "A wanderer that drifts with gilded grace.", 
        Hint = "It floats where the currents whisper.", 
        FavouriteBait = "Shrimp", 
        FavouriteTime = "Night", 
        Price = 35, 
        XP = 22, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A Drifting Gildfin!", 
            "Drifts like royalty!", 
            "Gilded catch!"
        }, 
        SparkleColor = Color3.fromRGB(255, 215, 0), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Blue Foamtail"] = {
        Icon = "rbxassetid://119963825311230", 
        WeightPool = {
            20, 
            60
        }, 
        Chance = 175, 
        Rarity = "Extinct", 
        Resilience = 60, 
        ProgressEfficiency = 1.1, 
        Description = "A swift swimmer that foams with blue energy.", 
        Hint = "It races where the waves bubble.", 
        FavouriteBait = "Flakes", 
        FavouriteTime = "Day", 
        Price = 65, 
        XP = 45, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Windy"
        }, 
        Quips = {
            "A Blue Foamtail!", 
            "Foamy and fast!", 
            "Blue blur!"
        }, 
        SparkleColor = Color3.fromRGB(0, 191, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Redwood Duskray"] = {
        Icon = "rbxassetid://102903621677111", 
        WeightPool = {
            30, 
            80
        }, 
        Chance = 165, 
        Rarity = "Extinct", 
        Resilience = 50, 
        ProgressEfficiency = 1.05, 
        Description = "A sturdy glider that rays through the dusk.", 
        Hint = "It soars when the light fades red.", 
        FavouriteBait = "Minnow", 
        FavouriteTime = "Night", 
        Price = 125, 
        XP = 70, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Redwood Duskray!", 
            "Dusk\226\128\153s tough flyer!", 
            "Redwood ruler!"
        }, 
        SparkleColor = Color3.fromRGB(139, 0, 0), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Oak Stripetail"] = {
        Icon = "rbxassetid://71230130632791", 
        WeightPool = {
            40, 
            100
        }, 
        Chance = 150, 
        Rarity = "Extinct", 
        Resilience = 40, 
        ProgressEfficiency = 0.95, 
        Description = "A resilient striker with a tail of oak strength.", 
        Hint = "It lashes where the waters grow still.", 
        FavouriteBait = "Squid", 
        FavouriteTime = "Day", 
        Price = 230, 
        XP = 110, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "An Oak Stripetail!", 
            "Tough as oak!", 
            "Striped strength!"
        }, 
        SparkleColor = Color3.fromRGB(139, 69, 19), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Pine Zephyrfish"] = {
        Icon = "rbxassetid://83101453929168", 
        WeightPool = {
            50, 
            120
        }, 
        Chance = 5, 
        Rarity = "Extinct", 
        Resilience = 30, 
        ProgressEfficiency = 0.65, 
        Description = "A swift zephyr that dances with pine\226\128\153s might.", 
        Hint = "It breezes through when the wind howls.", 
        FavouriteBait = "Gale Grub", 
        FavouriteTime = "Night", 
        Price = 1340, 
        XP = 670, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "Windy"
        }, 
        Quips = {
            "A PINE ZEPHYRFISH!", 
            "WIND\226\128\153S CHAMPION!", 
            "PINE POWER!"
        }, 
        SparkleColor = Color3.fromRGB(34, 139, 34), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Parktail Spinesnapper"] = {
        Icon = "rbxassetid://128935101956474", 
        WeightPool = {
            60, 
            150
        }, 
        Chance = 3, 
        Rarity = "Extinct", 
        Resilience = 20, 
        ProgressEfficiency = 0.45, 
        Description = "A fierce snapper with a tail born of parkland fury.", 
        Hint = "It snaps where the stillness breaks.", 
        FavouriteBait = "Gale Grub", 
        FavouriteTime = "Day", 
        Price = 2850, 
        XP = 1450, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A PARKTAIL SPINESNAPPER!", 
            "SNAPS LIKE FATE!", 
            "PARKLAND BEAST!"
        }, 
        SparkleColor = Color3.fromRGB(85, 107, 47), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Sunray Sunscale"] = {
        Icon = "rbxassetid://72618370604258", 
        WeightPool = {
            80, 
            200
        }, 
        Chance = 1, 
        Rarity = "Extinct", 
        Resilience = 15, 
        ProgressEfficiency = 0.35, 
        Description = "A radiant scaler that basks in sunray glory.", 
        Hint = "It shines where the sun touches the sea.", 
        FavouriteBait = nil, 
        FavouriteTime = "Day", 
        Price = 8450, 
        XP = 4500, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A SUNRAY SUNSCALE!", 
            "SOLAR LEGEND!", 
            "RADIANT PRIZE!"
        }, 
        SparkleColor = Color3.fromRGB(255, 165, 0), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    Thornfish = {
        Icon = "rbxassetid://139749999063062", 
        BlockPassiveCapture = true, 
        WeightPool = {
            100, 
            300
        }, 
        Chance = 1, 
        Rarity = "Extinct", 
        Resilience = 10, 
        ProgressEfficiency = 0.2, 
        Description = "A prickly terror that thorns through the deep.", 
        Hint = "It stings where the shadows grow sharp.", 
        FavouriteBait = "Luminous Larva", 
        FavouriteTime = "Night", 
        Price = 12500, 
        XP = 8000, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A THORNFISH?!", 
            "PRICKLY NIGHTMARE!", 
            "THORN OF DOOM!"
        }, 
        SparkleColor = Color3.fromRGB(47, 79, 47), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    Bogscale = {
        Icon = "rbxassetid://133302534353646", 
        WeightPool = {
            30, 
            70
        }, 
        Chance = 110, 
        Rarity = "Extinct", 
        Resilience = 80, 
        ProgressEfficiency = 1.1, 
        Description = "A brown fish cloaked in grassy tendrils, blending into the muddy waters like a living mire.", 
        Hint = "It thrives when the leaves fall and the air grows thick with haze.", 
        FavouriteBait = "Worm", 
        FavouriteTime = "Day", 
        Price = 35, 
        XP = 18, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A Bogscale!", 
            "Mossy catch!", 
            "Muddy little guy!"
        }, 
        SparkleColor = Color3.fromRGB(5, 166, 29), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    Murkdrifter = {
        Icon = "rbxassetid://108956383264570", 
        WeightPool = {
            500, 
            1300
        }, 
        Chance = 100, 
        Rarity = "Extinct", 
        Resilience = 65, 
        ProgressEfficiency = 1.05, 
        Description = "A green fish drifting through murky depths, a silent wanderer of the shadowed waters.", 
        Hint = "It roams when the rains awaken the night\226\128\153s embrace.", 
        FavouriteBait = "Shrimp", 
        FavouriteTime = "Night", 
        Price = 45, 
        XP = 23, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A Murkdrifter!", 
            "Green and gloomy!", 
            "Caught in the haze!"
        }, 
        SparkleColor = Color3.fromRGB(3, 133, 22), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    Vinefish = {
        Icon = "rbxassetid://89876897754455", 
        WeightPool = {
            120, 
            340
        }, 
        Chance = 90, 
        Rarity = "Extinct", 
        Resilience = 55, 
        ProgressEfficiency = 1.15, 
        Description = "A slender green fish with yellow fins, slithering through the currents with serpentine grace.", 
        Hint = "It weaves through the currents when the warm gusts stir.", 
        FavouriteBait = "Seaweed", 
        FavouriteTime = nil, 
        Price = 90, 
        XP = 45, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Windy"
        }, 
        Quips = {
            "A Vinefish!", 
            "Slippery!", 
            "Flashy!"
        }, 
        SparkleColor = Color3.fromRGB(123, 224, 0), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Canopy Tetra"] = {
        Icon = "rbxassetid://91242996252487", 
        WeightPool = {
            60, 
            160
        }, 
        Chance = 80, 
        Rarity = "Extinct", 
        Resilience = 60, 
        ProgressEfficiency = 0.98, 
        Description = "A light green fish with yellow fins and a faint blue shimmer, flitting like a leaf in the canopy\226\128\153s shade.", 
        Hint = "It dances under the crisp light of a frozen dawn.", 
        FavouriteBait = "Flakes", 
        FavouriteTime = "Day", 
        Price = 100, 
        XP = 50, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Canopy Tetra!", 
            "Leafy little swimmer!", 
            "Cute!"
        }, 
        SparkleColor = Color3.fromRGB(175, 224, 0), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Hollow Snapper"] = {
        Icon = "rbxassetid://118539928945168", 
        WeightPool = {
            800, 
            2000
        }, 
        Chance = 70, 
        Rarity = "Extinct", 
        Resilience = 45, 
        ProgressEfficiency = 0.9, 
        Description = "A dark green fish with glowing fins, and a menacing glare that pierces the gloom.", 
        Hint = "Its eerie light cuts through the shrouded dusk.", 
        FavouriteBait = "Squid", 
        FavouriteTime = "Night", 
        Price = 160, 
        XP = 80, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A Hollow Snapper!", 
            "Teal terror!", 
            "Eyes that bite!"
        }, 
        SparkleColor = Color3.fromRGB(0, 255, 149), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    Fogstripe = {
        Icon = "rbxassetid://76727016103329", 
        WeightPool = {
            300, 
            700
        }, 
        Chance = 60, 
        Rarity = "Extinct", 
        Resilience = 50, 
        ProgressEfficiency = 0.93, 
        Description = "A green fish with beige stripes and translucent fins, fading into the mist like a ghostly streak.", 
        Hint = "It drifts through the veiled bloom of new life.", 
        FavouriteBait = "Insect", 
        FavouriteTime = nil, 
        Price = 170, 
        XP = 85, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A Fogstripe!", 
            "Stripey ghost!", 
            "Fades away fast!"
        }, 
        SparkleColor = Color3.fromRGB(244, 255, 179), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Temple Perch"] = {
        Icon = "rbxassetid://79213491852476", 
        WeightPool = {
            1600, 
            4200
        }, 
        Chance = 39, 
        Rarity = "Extinct", 
        Resilience = 35, 
        ProgressEfficiency = 0.95, 
        Description = "A brown fish with light blue fins and accents, resting like a relic in ancient waters.", 
        Hint = "It lingers where the sun blesses the warm stillness.", 
        FavouriteBait = "Magnet", 
        FavouriteTime = "Day", 
        Price = 420, 
        XP = 210, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Temple Perch!", 
            "Ancient swimmer!", 
            "A piece of the past!"
        }, 
        SparkleColor = Color3.fromRGB(84, 244, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Relic Dart"] = {
        Icon = "rbxassetid://135875191174775", 
        WeightPool = {
            700, 
            1900
        }, 
        Chance = 39, 
        Rarity = "Extinct", 
        Resilience = 40, 
        ProgressEfficiency = 0.88, 
        Description = "A golden fish with light blue translucent fins, streaking through the deep like a forgotten treasure.", 
        Hint = "It flashes through the cold, wet twilight.", 
        FavouriteBait = "Minnow", 
        FavouriteTime = "Night", 
        Price = 450, 
        XP = 225, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A Relic Dart!", 
            "Gold!", 
            "Not a relic for enchanting..."
        }, 
        SparkleColor = Color3.fromRGB(120, 246, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Echo Koi"] = {
        Icon = "rbxassetid://99446334465175", 
        WeightPool = {
            350, 
            900
        }, 
        Chance = 26, 
        Rarity = "Extinct", 
        Resilience = 25, 
        ProgressEfficiency = 0.55, 
        Description = "A long fish with strange light blue whiskers and fins, its dark blue accents whispering secrets of the deep.", 
        Hint = "Its melody hums under the bright bloom of dawn.", 
        FavouriteBait = "Lushrooms", 
        FavouriteTime = "Day", 
        Price = 1200, 
        XP = 600, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "AN ECHO KOI!", 
            "WHISKERS OF MYSTERY!", 
            "SINGING CATCH!"
        }, 
        SparkleColor = Color3.fromRGB(0, 107, 173), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Glade Lurker"] = {
        Icon = "rbxassetid://75710782306179", 
        WeightPool = {
            650, 
            1600
        }, 
        Chance = 14, 
        Rarity = "Extinct", 
        Resilience = 30, 
        ProgressEfficiency = 0.45, 
        Description = "A dark green-yellow fish with menacing fangs, stalking the glades beneath the waves.", 
        Hint = "It prowls when the night cloaks the fading leaves.", 
        FavouriteBait = "Lushrooms", 
        FavouriteTime = "Night", 
        Price = 1300, 
        XP = 650, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A GLADE LURKER!", 
            "FANGS OF FEAR!", 
            "STALKER SNAGGED!"
        }, 
        SparkleColor = Color3.fromRGB(156, 176, 4), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Jungle Phantom"] = {
        Icon = "rbxassetid://106375786188188", 
        WeightPool = {
            600, 
            1600
        }, 
        Chance = 11, 
        Rarity = "Extinct", 
        Resilience = 20, 
        ProgressEfficiency = 0.3, 
        Description = "A green fish with light green fins and dark green accents, fading into the jungle depths like a specter.", 
        Hint = "It slips away when the warm rains drench the dark.", 
        FavouriteBait = "Lushrooms", 
        FavouriteTime = "Night", 
        Price = 2400, 
        XP = 1200, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A JUNGLE PHANTOM!", 
            "GHOST OF THE DEPTHS!", 
            "GREEN SHADOW!"
        }, 
        SparkleColor = Color3.fromRGB(110, 255, 94), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    Idolfish = {
        Icon = "rbxassetid://124815300302724", 
        WeightPool = {
            7100, 
            17000
        }, 
        Chance = 1, 
        Rarity = "Extinct", 
        Resilience = 10, 
        ProgressEfficiency = 0.2, 
        Description = "A white translucent fish adorned with yellow symbols and fins, glowing like a sacred relic.", 
        Hint = "Its radiance pierces the chill of a restless frost.", 
        FavouriteBait = "Golden Worm", 
        FavouriteTime = nil, 
        Price = 4300, 
        XP = 2150, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Windy"
        }, 
        Quips = {
            "AN IDOLFISH!", 
            "HOLY GLOW!", 
            "SYMBOLS OF POWER!"
        }, 
        SparkleColor = Color3.fromRGB(227, 227, 227), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Primordial Levi"] = {
        Icon = "rbxassetid://82281991219618", 
        BlockPassiveCapture = true, 
        WeightPool = {
            4500, 
            12000
        }, 
        Chance = 1, 
        Rarity = "Extinct", 
        Resilience = 3, 
        ProgressEfficiency = 0.15, 
        Description = "A near-black fish with bright red accents, its menacing form a relic of a primal age.", 
        Hint = "It stirs when the winds howl through the faded light.", 
        FavouriteBait = "Luminous Larva", 
        FavouriteTime = "Night", 
        Price = 12000, 
        XP = 6000, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Windy"
        }, 
        Quips = {
            "A PRIMORDIAL LEVI!?!", 
            "RED FURY UNLEASHED!!", 
            "ANCIENT BEAST!?"
        }, 
        SparkleColor = Color3.fromRGB(207, 0, 0), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Ashscale Minnow"] = {
        Icon = "rbxassetid://82608711781963", 
        WeightPool = {
            90, 
            210
        }, 
        Chance = 110, 
        Rarity = "Extinct", 
        Resilience = 80, 
        ProgressEfficiency = 1.1, 
        Description = "A small, ashen-hued fish, flickering through the haze with subtle shadows.", 
        Hint = "It darts where the soot settles under daylight.", 
        FavouriteBait = "Shrimp", 
        FavouriteTime = "Day", 
        Price = 35, 
        XP = 16, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "An Ashscale Minnow!", 
            "Tiny ash swimmer!", 
            "Grey little spark!"
        }, 
        SparkleColor = Color3.fromRGB(105, 105, 105), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Glowfin Skipper"] = {
        Icon = "rbxassetid://97038957605442", 
        WeightPool = {
            1500, 
            3900
        }, 
        Chance = 105, 
        Rarity = "Extinct", 
        Resilience = 68, 
        ProgressEfficiency = 1.03, 
        Description = "A radiant fish, its gleam cutting through the smoky veil.", 
        Hint = "It shines when the night hides the embers.", 
        FavouriteBait = "Seaweed", 
        FavouriteTime = "Night", 
        Price = 43, 
        XP = 21, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A Glowfin Skipper!", 
            "Yellow flicker!", 
            "Caught a glowbug!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 0), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Pyre Fang"] = {
        Icon = "rbxassetid://85330129929548", 
        WeightPool = {
            120, 
            240
        }, 
        Chance = 108, 
        Rarity = "Extinct", 
        Resilience = 78, 
        ProgressEfficiency = 1.12, 
        Description = "A rugged fish, its fins sharp and tinged with embers.", 
        Hint = "It lurks where the haze fuels the daylight\226\128\153s glow.", 
        FavouriteBait = "Worm", 
        FavouriteTime = "Day", 
        Price = 37, 
        XP = 18, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A Pyre Fang!", 
            "Jagged blaze!", 
            "Fiery bite!"
        }, 
        SparkleColor = Color3.fromRGB(255, 165, 0), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    Firecrest = {
        Icon = "rbxassetid://128937254044562", 
        WeightPool = {
            1440, 
            3600
        }, 
        Chance = 102, 
        Rarity = "Extinct", 
        Resilience = 62, 
        ProgressEfficiency = 1.07, 
        Description = "A bold fish, its fins sharp and crowned with a fiery gleam.", 
        Hint = "It crests where the warm rains fuel the dark.", 
        FavouriteBait = "Ember Berries", 
        FavouriteTime = "Night", 
        Price = 47, 
        XP = 23, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A Firecrest!", 
            "Orange crown!", 
            "Fiery gaze!"
        }, 
        SparkleColor = Color3.fromRGB(255, 165, 0), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Lava Bream"] = {
        Icon = "rbxassetid://128937254044562", 
        WeightPool = {
            360, 
            1020
        }, 
        Chance = 92, 
        Rarity = "Extinct", 
        Resilience = 57, 
        ProgressEfficiency = 1.17, 
        Description = "A dark fish, its fins aglow with the warmth of molten depths.", 
        Hint = "It basks where the warm winds rage.", 
        FavouriteBait = "Insect", 
        FavouriteTime = nil, 
        Price = 93, 
        XP = 44, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Windy"
        }, 
        Quips = {
            "A Lava Bream!", 
            "Fiery fins!", 
            "Hot little catch!"
        }, 
        SparkleColor = Color3.fromRGB(255, 165, 0), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    Moltenstripe = {
        Icon = "rbxassetid://105209291563546", 
        WeightPool = {
            180, 
            480
        }, 
        Chance = 85, 
        Rarity = "Extinct", 
        Resilience = 63, 
        ProgressEfficiency = 0.96, 
        Description = "A fiery-hued fish, marked with streaks of shadow, swift in heated currents.", 
        Hint = "It streaks under the clear blaze of day.", 
        FavouriteBait = "Squid", 
        FavouriteTime = "Day", 
        Price = 115, 
        XP = 55, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Moltenstripe!", 
            "Orange blaze!", 
            "Striped fire!"
        }, 
        SparkleColor = Color3.fromRGB(255, 140, 0), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Magma Pike"] = {
        Icon = "rbxassetid://124187551496782", 
        WeightPool = {
            390, 
            1050
        }, 
        Chance = 88, 
        Rarity = "Extinct", 
        Resilience = 58, 
        ProgressEfficiency = 1.13, 
        Description = "A sturdy fish, its form kissed by the glow of molten veins.", 
        Hint = "It rises when the winds fan the ancient fires.", 
        FavouriteBait = "Seaweed", 
        FavouriteTime = nil, 
        Price = 95, 
        XP = 45, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Windy"
        }, 
        Quips = {
            "A Magma Pike!", 
            "Lava lance!", 
            "Scorching haul!"
        }, 
        SparkleColor = Color3.fromRGB(255, 165, 0), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Hellmaw Eel"] = {
        Icon = "rbxassetid://99140611676362", 
        WeightPool = {
            210, 
            510
        }, 
        Chance = 82, 
        Rarity = "Extinct", 
        Resilience = 61, 
        ProgressEfficiency = 0.99, 
        Description = "A sinuous creature, its jaws wide and lined with crimson hints.", 
        Hint = "It slithers under the crisp fire of dawn.", 
        FavouriteBait = "Flakes", 
        FavouriteTime = "Day", 
        Price = 105, 
        XP = 50, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Hellmaw Eel!", 
            "Red jaws snap!", 
            "Fiery serpent!"
        }, 
        SparkleColor = Color3.fromRGB(255, 0, 0), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Sulfur Snapper"] = {
        Icon = "rbxassetid://121667674321951", 
        WeightPool = {
            2400, 
            6000
        }, 
        Chance = 72, 
        Rarity = "Extinct", 
        Resilience = 47, 
        ProgressEfficiency = 0.92, 
        Description = "A shadowy fish, its fins alight and eyes agleam in acrid waters.", 
        Hint = "Its glare cuts through the foggy night\226\128\153s heat.", 
        FavouriteBait = "Squid", 
        FavouriteTime = "Night", 
        Price = 165, 
        XP = 70, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A Sulfur Snapper!", 
            "Sulfur snap!", 
            "Yellow-eyed fiend!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 0), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    Smogfish = {
        Icon = "rbxassetid://80993173249983", 
        WeightPool = {
            960, 
            2160
        }, 
        Chance = 65, 
        Rarity = "Extinct", 
        Resilience = 52, 
        ProgressEfficiency = 0.94, 
        Description = "A muted fish, drifting through the thick, choking haze.", 
        Hint = "It lurks in the veiled haze of renewal.", 
        FavouriteBait = "Insect", 
        FavouriteTime = nil, 
        Price = 170, 
        XP = 75, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A Smogfish!", 
            "Grey drifter!", 
            "Caught in the smog!"
        }, 
        SparkleColor = Color3.fromRGB(128, 128, 128), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Sunflare Tetra"] = {
        Icon = "rbxassetid://128054132545586", 
        WeightPool = {
            870, 
            2040
        }, 
        Chance = 68, 
        Rarity = "Extinct", 
        Resilience = 49, 
        ProgressEfficiency = 0.9, 
        Description = "A vibrant fish, its fins radiating like the sun\226\128\153s fleeting touch.", 
        Hint = "It blazes where the warm rains ignite the dark.", 
        FavouriteBait = "Sapphire Krill", 
        FavouriteTime = "Night", 
        Price = 179, 
        XP = 85, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A Sunflare Tetra!", 
            "Solar fins!", 
            "Flaming beauty!"
        }, 
        SparkleColor = Color3.fromRGB(255, 165, 0), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    Searfin = {
        Icon = "rbxassetid://76050120437522", 
        WeightPool = {
            2520, 
            6300
        }, 
        Chance = 74, 
        Rarity = "Extinct", 
        Resilience = 43, 
        ProgressEfficiency = 0.91, 
        Description = "A sleek fish, its fins shimmering with the heat of scorched tides.", 
        Hint = "It glides where the sun ignites the stillness.", 
        FavouriteBait = "Coal", 
        FavouriteTime = "Day", 
        Price = 168, 
        XP = 78, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Searfin!", 
            "Burning fins!", 
            "Hot swimmer!"
        }, 
        SparkleColor = Color3.fromRGB(255, 165, 0), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Basalt Pike"] = {
        Icon = "rbxassetid://96112150720341", 
        WeightPool = {
            930, 
            2190
        }, 
        Chance = 62, 
        Rarity = "Extinct", 
        Resilience = 48, 
        ProgressEfficiency = 0.95, 
        Description = "A rugged fish, its form dark and unyielding as stone forged in fire.", 
        Hint = "It pierces the cold, wet dusk.", 
        FavouriteBait = "Minnow", 
        FavouriteTime = "Night", 
        Price = 175, 
        XP = 80, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A Basalt Pike!", 
            "Rocky catch!", 
            "Dark spear!"
        }, 
        SparkleColor = Color3.fromRGB(64, 64, 64), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Furnace Leaper"] = {
        Icon = "rbxassetid://76056791333052", 
        WeightPool = {
            2340, 
            5940
        }, 
        Chance = 70, 
        Rarity = "Extinct", 
        Resilience = 46, 
        ProgressEfficiency = 0.88, 
        Description = "A robust fish, its fins alight with the heat of hidden flames.", 
        Hint = "It bounds where the sun stokes the calm flames.", 
        FavouriteBait = "Flakes", 
        FavouriteTime = "Day", 
        Price = 168, 
        XP = 80, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Furnace Leaper!", 
            "Tough blaze!", 
            "Orange jumper!"
        }, 
        SparkleColor = Color3.fromRGB(169, 169, 169), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    Smolderfang = {
        Icon = "rbxassetid://87980683683213", 
        WeightPool = {
            990, 
            2250
        }, 
        Chance = 58, 
        Rarity = "Extinct", 
        Resilience = 51, 
        ProgressEfficiency = 0.93, 
        Description = "A dark fish, its fins and gaze simmering with quiet intensity.", 
        Hint = "It glows in the cold, wet shadows of dusk.", 
        FavouriteBait = "Seaweed", 
        FavouriteTime = "Night", 
        Price = 179, 
        XP = 85, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A Smolderfang!", 
            "Yellow glare!", 
            "Smoky snap!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 0), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    Blazebelly = {
        Icon = "rbxassetid://138452270788009", 
        WeightPool = {
            4800, 
            12600
        }, 
        Chance = 41, 
        Rarity = "Extinct", 
        Resilience = 37, 
        ProgressEfficiency = 0.97, 
        Description = "A dark fish, its underbelly and fins pulsing with inner warmth.", 
        Hint = "Its fire pulses through the bright renewal.", 
        FavouriteBait = "Coal", 
        FavouriteTime = "Day", 
        Price = 441, 
        XP = 210, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Blazebelly!", 
            "Fiery guts!", 
            "Hot belly haul!"
        }, 
        SparkleColor = Color3.fromRGB(255, 140, 0), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    Cragscale = {
        Icon = "rbxassetid://98841634367281", 
        WeightPool = {
            2130, 
            5760
        }, 
        Chance = 37, 
        Rarity = "Extinct", 
        Resilience = 42, 
        ProgressEfficiency = 0.86, 
        Description = "A deep-hued fish, edged with rough shadows and faint, ghostly fins.", 
        Hint = "It prowls the shrouded embers of night.", 
        FavouriteBait = "Minnow", 
        FavouriteTime = "Night", 
        Price = 465, 
        XP = 220, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A Cragscale!", 
            "Jagged beast!", 
            "Blue rock snag!"
        }, 
        SparkleColor = Color3.fromRGB(0, 0, 139), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Volcanic Prowler"] = {
        Icon = "rbxassetid://88780865663711", 
        WeightPool = {
            4650, 
            12300
        }, 
        Chance = 43, 
        Rarity = "Extinct", 
        Resilience = 33, 
        ProgressEfficiency = 0.94, 
        Description = "A stealthy fish, its teeth sharp and edges warm with fire.", 
        Hint = "It stalks through the bright embers of dawn.", 
        FavouriteBait = "Magnet", 
        FavouriteTime = "Day", 
        Price = 441, 
        XP = 210, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Volcanic Prowler!", 
            "Jagged hunter!", 
            "Orange stalker!"
        }, 
        SparkleColor = Color3.fromRGB(255, 165, 0), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Inferno Chaser"] = {
        Icon = "rbxassetid://88606898103971", 
        WeightPool = {
            2040, 
            5610
        }, 
        Chance = 35, 
        Rarity = "Extinct", 
        Resilience = 39, 
        ProgressEfficiency = 0.89, 
        Description = "A slender, fiery fish, its whiskers trailing like sparks in pursuit.", 
        Hint = "It races through the restless chill of ash.", 
        FavouriteBait = "Minnow", 
        FavouriteTime = "Night", 
        Price = 473, 
        XP = 225, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Windy"
        }, 
        Quips = {
            "An Inferno Chaser!", 
            "Whiskers of flame!", 
            "Hot pursuit!"
        }, 
        SparkleColor = Color3.fromRGB(255, 140, 0), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Cinder Dart"] = {
        Icon = "rbxassetid://115755978818708", 
        WeightPool = {
            1080, 
            2730
        }, 
        Chance = 28, 
        Rarity = "Extinct", 
        Resilience = 27, 
        ProgressEfficiency = 0.57, 
        Description = "A swift fish, its long fins trailing like embers in the wind.", 
        Hint = "It streaks through the misty renewal\226\128\153s glow.", 
        FavouriteBait = "Insect", 
        FavouriteTime = nil, 
        Price = 1270, 
        XP = 605, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A CINDER DART!", 
            "MYTHIC BLAZE!", 
            "ORANGE STREAKED!"
        }, 
        SparkleColor = Color3.fromRGB(255, 165, 0), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    Emberwing = {
        Icon = "rbxassetid://100296568467790", 
        WeightPool = {
            1980, 
            4860
        }, 
        Chance = 16, 
        Rarity = "Extinct", 
        Resilience = 32, 
        ProgressEfficiency = 0.47, 
        Description = "A shadowed fish, its fins flaring like wisps of flame.", 
        Hint = "Its wings flare in the foggy night\226\128\153s glow.", 
        FavouriteBait = "Ember Berries", 
        FavouriteTime = "Night", 
        Price = 1365, 
        XP = 650, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "AN EMBERWING!", 
            "FLAMED FINS!", 
            "WINGED BLAZE!"
        }, 
        SparkleColor = Color3.fromRGB(255, 140, 0), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    Scorchray = {
        Icon = "rbxassetid://84376073594091", 
        WeightPool = {
            1020, 
            2640
        }, 
        Chance = 24, 
        Rarity = "Extinct", 
        Resilience = 23, 
        ProgressEfficiency = 0.53, 
        Description = "A broad, dark creature, its edges flickering with fiery traces.", 
        Hint = "It sweeps through the rainy embers of night.", 
        FavouriteBait = "Shrimp", 
        FavouriteTime = "Night", 
        Price = 1260, 
        XP = 600, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A SCORCHRAY!", 
            "FLAMING WINGS!", 
            "STINGING HEAT!"
        }, 
        SparkleColor = Color3.fromRGB(255, 140, 0), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Brimstone Angler"] = {
        Icon = "rbxassetid://76075072562142", 
        WeightPool = {
            1860, 
            4830
        }, 
        Chance = 13, 
        Rarity = "Extinct", 
        Resilience = 22, 
        ProgressEfficiency = 0.32, 
        Description = "A mysterious fish, its fins casting an eerie glow in the mist.", 
        Hint = "Its light tempts in the foggy embers of dusk.", 
        FavouriteBait = "Ember Berries", 
        FavouriteTime = "Night", 
        Price = 2500, 
        XP = 1200, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A BRIMSTONE ANGLER!", 
            "GLOWING LURE!", 
            "PURPLE!"
        }, 
        SparkleColor = Color3.fromRGB(138, 43, 226), 
        HoldAnimation = l_fish_0:WaitForChild("small"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Obsidian Koi"] = {
        Icon = "rbxassetid://95453863689311", 
        WeightPool = {
            1740, 
            4680
        }, 
        Chance = 9, 
        Rarity = "Extinct", 
        Resilience = 18, 
        ProgressEfficiency = 0.28, 
        Description = "A sleek fish, its fins flowing like dark, polished glass.", 
        Hint = "It drifts where the warm gusts fan the flames.", 
        FavouriteBait = "Magnet", 
        FavouriteTime = nil, 
        Price = 2525, 
        XP = 1220, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Windy"
        }, 
        Quips = {
            "AN OBSIDIAN KOI!", 
            "SHINY ELEGANCE!", 
            "BLACK BEAUTY!"
        }, 
        SparkleColor = Color3.fromRGB(10, 10, 10), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    Tropicspike = {
        Icon = "rbxassetid://132778604345651", 
        WeightPool = {
            21300, 
            51000
        }, 
        Chance = 1, 
        Rarity = "Extinct", 
        Resilience = 12, 
        ProgressEfficiency = 0.2, 
        Description = "A striking fish, its fins a vivid dance of shifting hues.", 
        Hint = "It spikes through the restless frost\226\128\153s blaze.", 
        FavouriteBait = "Golden Worm", 
        FavouriteTime = nil, 
        Price = 4515, 
        XP = 2150, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Windy"
        }, 
        Quips = {
            "A TROPICSPIKE?!", 
            "COLORFUL FURY!", 
            "SPIKED SPECTRUM!"
        }, 
        SparkleColor = Color3.fromRGB(255, 0, 0), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Molten Ripple"] = {
        Icon = "rbxassetid://92446926296297", 
        BlockPassiveCapture = true, 
        WeightPool = {
            13500, 
            36000
        }, 
        Chance = 1, 
        Rarity = "Secret", 
        Resilience = 5, 
        ProgressEfficiency = 0.15, 
        Description = "A round, cheerful fish, its surface rippling with molten charm.", 
        Hint = "It bobs where the winds warm the ancient glow.", 
        FavouriteBait = "Luminous Larva", 
        FavouriteTime = "Day", 
        Price = 12600, 
        XP = 6000, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Windy"
        }, 
        Quips = {
            "A MOLTEN RIPPLE?!", 
            "SMILING FLAME!", 
            "CUTE INFERNO!"
        }, 
        SparkleColor = Color3.fromRGB(255, 140, 0), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Roslit Volcano", 
        Worlds = {
            "Sea 1"
        }
    }, 
    Tidallow = {
        Icon = "rbxassetid://108282314447639", 
        WeightPool = {
            60, 
            150
        }, 
        Chance = 115, 
        Rarity = "Extinct", 
        Resilience = 82, 
        ProgressEfficiency = 1.14, 
        Description = "A tiny, bright yellow fish with striking red eyes, darting through shallow waters.", 
        Hint = "It gleams under the sun\226\128\153s gentle rays.", 
        FavouriteBait = "Worm", 
        FavouriteTime = "Day", 
        Price = 41, 
        XP = 20, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Tidallow!", 
            "Sunny little swimmer!", 
            "Red-eyed catch!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 0), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    Reefdart = {
        Icon = "rbxassetid://128735643845295", 
        WeightPool = {
            90, 
            180
        }, 
        Chance = 110, 
        Rarity = "Extinct", 
        Resilience = 79, 
        ProgressEfficiency = 1.1, 
        Description = "A slender blue eel with pink fins and eyes, weaving through coral shadows.", 
        Hint = "It slinks along the reef when the tide rests.", 
        FavouriteBait = "Shrimp", 
        FavouriteTime = "Night", 
        Price = 52, 
        XP = 25, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Reefdart!", 
            "Pink-finned eel!", 
            "Slippery blue!"
        }, 
        SparkleColor = Color3.fromRGB(0, 0, 255), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    Crestscale = {
        Icon = "rbxassetid://84104910132694", 
        WeightPool = {
            120, 
            300
        }, 
        Chance = 95, 
        Rarity = "Extinct", 
        Resilience = 60, 
        ProgressEfficiency = 1.16, 
        Description = "A small green fish with beige fins, its scales rising like a gentle wave.", 
        Hint = "It basks where the breeze meets the tide.", 
        FavouriteBait = "Seaweed", 
        FavouriteTime = nil, 
        Price = 105, 
        XP = 50, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Windy"
        }, 
        Quips = {
            "A Crestscale!", 
            "Wavy green!", 
            "Beige beauty!"
        }, 
        SparkleColor = Color3.fromRGB(0, 128, 0), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Horizon Tetra"] = {
        Icon = "rbxassetid://126840673773248", 
        WeightPool = {
            150, 
            390
        }, 
        Chance = 78, 
        Rarity = "Extinct", 
        Resilience = 45, 
        ProgressEfficiency = 0.92, 
        Description = "A shimmering metallic blue fish with yellow fins, glinting at the water\226\128\153s edge.", 
        Hint = "It sparkles where the sun kisses the horizon.", 
        FavouriteBait = "Flakes", 
        FavouriteTime = "Day", 
        Price = 185, 
        XP = 88, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Horizon Tetra!", 
            "Metallic marvel!", 
            "Yellow shimmer!"
        }, 
        SparkleColor = Color3.fromRGB(0, 0, 139), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    Driftfin = {
        Icon = "rbxassetid://74275363936709", 
        WeightPool = {
            240, 
            660
        }, 
        Chance = 45, 
        Rarity = "Extinct", 
        Resilience = 38, 
        ProgressEfficiency = 0.98, 
        Description = "A dirt-colored fish with sleek black fins, drifting silently with the current.", 
        Hint = "It blends into the muddy depths at dusk.", 
        FavouriteBait = "Insect", 
        FavouriteTime = "Night", 
        Price = 485, 
        XP = 231, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A Driftfin!", 
            "Muddy mover!", 
            "Black-finned drifter!"
        }, 
        SparkleColor = Color3.fromRGB(139, 69, 19), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Lantern Snapper"] = {
        Icon = "rbxassetid://97920152799947", 
        WeightPool = {
            330, 
            900
        }, 
        Chance = 30, 
        Rarity = "Extinct", 
        Resilience = 28, 
        ProgressEfficiency = 0.4, 
        Description = "A tiny red fish glowing like a lantern, illuminating the reef\226\128\153s shadows.", 
        Hint = "Its light dances in the warm twilight glow.", 
        FavouriteBait = "Crystal Bananas", 
        FavouriteTime = "Night", 
        Price = 1386, 
        XP = 660, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A LANTERN SNAPPER!", 
            "RED BEACON!", 
            "GLOWING PRIZE!"
        }, 
        SparkleColor = Color3.fromRGB(255, 0, 0), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Abyss Flicker"] = {
        Icon = "rbxassetid://71480787883450", 
        WeightPool = {
            420, 
            1140
        }, 
        Chance = 15, 
        Rarity = "Extinct", 
        Resilience = 20, 
        ProgressEfficiency = 0.25, 
        Description = "A dark purple fish with white accents, flickering like a ghost in the deep.", 
        Hint = "It haunts the abyss under stormy skies.", 
        FavouriteBait = "Crystal Bananas", 
        FavouriteTime = "Night", 
        Price = 2772, 
        XP = 1320, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "AN ABYSS FLICKER!", 
            "PURPLE PHANTOM!", 
            "WHITE GLEAM!"
        }, 
        SparkleColor = Color3.fromRGB(75, 0, 130), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Whisper Eel"] = {
        Icon = "rbxassetid://71517123874797", 
        WeightPool = {
            6000, 
            15000
        }, 
        Chance = 1, 
        Rarity = "Extinct", 
        Resilience = 5, 
        ProgressEfficiency = 0.1, 
        Description = "A light blue eel with translucent accents, its whispers echo through the currents.", 
        Hint = "It hums where the winds churn the waves.", 
        FavouriteBait = "Golden Worm", 
        FavouriteTime = nil, 
        Price = 4967, 
        XP = 2365, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "Windy"
        }, 
        Quips = {
            "A WHISPER EEL?!", 
            "TRANSLUCENT WONDER!", 
            "EEL OF THE UNKNOWN!"
        }, 
        SparkleColor = Color3.fromRGB(173, 216, 230), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Phantom Koi"] = {
        Icon = "rbxassetid://86526174459017", 
        BlockPassiveCapture = true, 
        WeightPool = {
            3600, 
            9600
        }, 
        Chance = 1, 
        Rarity = "Extinct", 
        Resilience = 4, 
        ProgressEfficiency = 0.15, 
        Description = "A white koi with grey accents and ornate fins, a spectral beauty of the depths.", 
        Hint = "It glides where the fog veils the tide.", 
        FavouriteBait = "Luminous Larva", 
        FavouriteTime = "Day", 
        Price = 13860, 
        XP = 6600, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A PHANTOM KOI?!", 
            "GHOSTLY GRACE!", 
            "FIND A BED!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    Blisterfish = {
        Icon = "rbxassetid://128074767326231", 
        WeightPool = {
            8, 
            20
        }, 
        Chance = 120, 
        Rarity = "Common", 
        Resilience = 15, 
        ProgressEfficiency = 0.75, 
        Description = "A relentless survivor that thrives where others falter.", 
        Hint = "It lurks where the waters grow bitter.", 
        FavouriteBait = "Worm", 
        FavouriteTime = "Night", 
        Price = 100, 
        XP = 90, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A Blisterfish!", 
            "Tough as scars!", 
            "Unyielding catch!"
        }, 
        SparkleColor = Color3.fromRGB(0, 0, 0), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Cursed Isle", 
        Worlds = {
            "Sea 1"
        }
    }, 
    Gloombiter = {
        Icon = "rbxassetid://137775603621331", 
        WeightPool = {
            9, 
            22
        }, 
        Chance = 115, 
        Rarity = "Common", 
        Resilience = 15, 
        ProgressEfficiency = 0.7, 
        Description = "A fierce biter that claims the shadows as its domain.", 
        Hint = "It strikes where the light fades.", 
        FavouriteBait = "Shrimp", 
        FavouriteTime = "Night", 
        Price = 110, 
        XP = 105, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A Gloombiter!", 
            "Darkness owns it!", 
            "Bite of gloom!"
        }, 
        SparkleColor = Color3.fromRGB(0, 0, 0), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Cursed Isle", 
        Worlds = {
            "Sea 1"
        }
    }, 
    Rotjaw = {
        Icon = "rbxassetid://124108855972980", 
        WeightPool = {
            15, 
            36
        }, 
        Chance = 100, 
        Rarity = "Uncommon", 
        Resilience = 14, 
        ProgressEfficiency = 0.65, 
        Description = "A brutal predator that crushes all in its relentless grip.", 
        Hint = "It prowls where decay lingers.", 
        FavouriteBait = "Minnow", 
        FavouriteTime = "Day", 
        Price = 220, 
        XP = 210, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A Rotjaw!", 
            "Jaws of ruin!", 
            "Ugly but fierce!"
        }, 
        SparkleColor = Color3.fromRGB(0, 0, 0), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Cursed Isle", 
        Worlds = {
            "Sea 1"
        }
    }, 
    Murkslither = {
        Icon = "rbxassetid://109966045464913", 
        WeightPool = {
            17, 
            40
        }, 
        Chance = 95, 
        Rarity = "Uncommon", 
        Resilience = 13, 
        ProgressEfficiency = 0.6, 
        Description = "A slippery terror that moves unseen through the murk.", 
        Hint = "It glides where the waters turn thick.", 
        FavouriteBait = "Squid", 
        FavouriteTime = "Night", 
        Price = 240, 
        XP = 220, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A Murkslither!", 
            "Slithers like death!", 
            "Murk\226\128\153s champion!"
        }, 
        SparkleColor = Color3.fromRGB(0, 0, 0), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Cursed Isle", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Split Eye Snapper"] = {
        Icon = "rbxassetid://112900025094188", 
        WeightPool = {
            25, 
            60
        }, 
        Chance = 85, 
        Rarity = "Unusual", 
        Resilience = 12, 
        ProgressEfficiency = 0.55, 
        Description = "A savage snapper that strikes with unerring precision.", 
        Hint = "It hunts where the currents split.", 
        FavouriteBait = "Flakes", 
        FavouriteTime = "Day", 
        Price = 380, 
        XP = 300, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "Windy"
        }, 
        Quips = {
            "A Split Eye Snapper!", 
            "Snaps like thunder!", 
            "Eyes of fury!"
        }, 
        SparkleColor = Color3.fromRGB(0, 0, 0), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Cursed Isle", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Tumor Pike"] = {
        Icon = "rbxassetid://98693596371188", 
        WeightPool = {
            28, 
            66
        }, 
        Chance = 80, 
        Rarity = "Unusual", 
        Resilience = 11, 
        ProgressEfficiency = 0.5, 
        Description = "A monstrous pike that dominates through sheer malice.", 
        Hint = "It lurks where the depths fester.", 
        FavouriteBait = "Insect", 
        FavouriteTime = "Night", 
        Price = 420, 
        XP = 310, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A Tumor Pike!", 
            "Pike of pain!", 
            "Growth of doom!"
        }, 
        SparkleColor = Color3.fromRGB(0, 0, 0), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Cursed Isle", 
        Worlds = {
            "Sea 1"
        }
    }, 
    Hollowfin = {
        Icon = "rbxassetid://80405623042225", 
        WeightPool = {
            40, 
            90
        }, 
        Chance = 50, 
        Rarity = "Rare", 
        Resilience = 10, 
        ProgressEfficiency = 0.45, 
        Description = "A relentless force that echoes with empty strength.", 
        Hint = "It drifts where the silence grows heavy.", 
        FavouriteBait = "Squid", 
        FavouriteTime = "Night", 
        Price = 700, 
        XP = 600, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Hollowfin!", 
            "Empty but fierce!", 
            "Hollow terror!"
        }, 
        SparkleColor = Color3.fromRGB(0, 0, 0), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Cursed Isle", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Crawling Angler"] = {
        Icon = "rbxassetid://82191223150871", 
        WeightPool = {
            45, 
            130
        }, 
        Chance = 45, 
        Rarity = "Rare", 
        Resilience = 9, 
        ProgressEfficiency = 0.4, 
        Description = "A cunning hunter that drags its prey into oblivion.", 
        Hint = "It creeps where the shadows stretch long.", 
        FavouriteBait = "Sapphire Krill", 
        FavouriteTime = "Night", 
        Price = 950, 
        XP = 725, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A Crawling Angler!", 
            "Crawl of death!", 
            "Angler\226\128\153s wrath!"
        }, 
        SparkleColor = Color3.fromRGB(0, 0, 0), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Cursed Isle", 
        Worlds = {
            "Sea 1"
        }
    }, 
    Veinspawn = {
        Icon = "rbxassetid://76126332564265", 
        WeightPool = {
            60, 
            140
        }, 
        Chance = 30, 
        Rarity = "Legendary", 
        Resilience = 8, 
        ProgressEfficiency = 0.35, 
        Description = "A merciless spawn that pulses with unyielding power.", 
        Hint = "It emerges where the depths bleed.", 
        FavouriteBait = "Mist Worms", 
        FavouriteTime = "Night", 
        Price = 1700, 
        XP = 2400, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A VEINSPAWN!", 
            "PULSE OF FURY!", 
            "SPAWN OF NIGHTMARES!"
        }, 
        SparkleColor = Color3.fromRGB(0, 0, 0), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Cursed Isle", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Screaming Fluke"] = {
        Icon = "rbxassetid://107762008925903", 
        WeightPool = {
            80, 
            192
        }, 
        Chance = 25, 
        Rarity = "Legendary", 
        Resilience = 7, 
        ProgressEfficiency = 0.25, 
        Description = "A deafening horror that shatters the silence of the deep.", 
        Hint = "It wails where the waters tremble.", 
        FavouriteBait = "Mist Worms", 
        FavouriteTime = "Night", 
        Price = 2000, 
        XP = 2500, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Windy"
        }, 
        Quips = {
            "A SCREAMING FLUKE!", 
            "SCREAMS OF DOOM!", 
            "FLUKE OF FEAR!"
        }, 
        SparkleColor = Color3.fromRGB(0, 0, 0), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Cursed Isle", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Chasm Leech"] = {
        Icon = "rbxassetid://107762008925903", 
        WeightPool = {
            12, 
            28
        }, 
        Chance = 15, 
        Rarity = "Mythical", 
        Resilience = 6, 
        ProgressEfficiency = 0.2, 
        Description = "A tenacious parasite that drains the life from the abyss.", 
        Hint = "It clings where the chasms yawn wide.", 
        FavouriteBait = "Mist Worms", 
        FavouriteTime = nil, 
        Price = 3000, 
        XP = 3800, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A CHASM LEECH!", 
            "DRAINER OF DEPTHS!", 
            "LEECH OF LEGEND!"
        }, 
        SparkleColor = Color3.fromRGB(0, 0, 0), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Cursed Isle", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Dreaming Aberration"] = {
        Icon = "rbxassetid://97332199725161", 
        WeightPool = {
            180, 
            430
        }, 
        Chance = 1, 
        Rarity = "Exotic", 
        Resilience = 3, 
        ProgressEfficiency = 0.15, 
        Description = "A twisted nightmare that defies the waking world.", 
        Hint = "It haunts where dreams turn dark.", 
        FavouriteBait = "Mist Worms", 
        FavouriteTime = "Night", 
        Price = 8500, 
        XP = 5050, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A DREAMING ABERRATION!", 
            "NIGHTMARE UNLEASHED!", 
            "DREAMS OF DREAD!"
        }, 
        SparkleColor = Color3.fromRGB(0, 0, 0), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Cursed Isle", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Abyssborn Monstrosity"] = {
        Icon = "rbxassetid://121420749539557", 
        BlockPassiveCapture = true, 
        WeightPool = {
            24000, 
            57600
        }, 
        Chance = 1, 
        Rarity = "Secret", 
        Resilience = 1, 
        ProgressEfficiency = 0.1, 
        Description = "A colossal terror birthed from the abyss\226\128\153s cruel heart.", 
        Hint = "It rises where the void claims all.", 
        FavouriteBait = "Luminous Larva", 
        FavouriteTime = "Night", 
        Price = 25000, 
        XP = 15000, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "AN ABYSSBORN MONSTROSITY?!", 
            "BORN OF THE VOID!", 
            "MONSTER OF ETERNITY!"
        }, 
        SparkleColor = Color3.fromRGB(0, 0, 0), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Cursed Isle", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Cursed Thread"] = {
        Icon = "rbxassetid://126716943700827", 
        WeightPool = {
            105, 
            105
        }, 
        Chance = 30, 
        Rarity = "Extinct", 
        Resilience = 85, 
        ProgressEfficiency = 1.12, 
        Description = "???", 
        Hint = "???", 
        FavouriteBait = "Sapphire Krill", 
        FavouriteTime = "Day", 
        Price = 40, 
        XP = 20, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "weird...!", 
            "what is this?", 
            "is it a fish?"
        }, 
        SparkleColor = Color3.fromRGB(194, 178, 128), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    Hogchoker = {
        Icon = "rbxassetid://77825372078181", 
        WeightPool = {
            40, 
            100
        }, 
        Chance = 130, 
        Rarity = "Extinct", 
        Resilience = 85, 
        ProgressEfficiency = 1.12, 
        Description = "A sandy-colored fish with beige fins, flattening itself against the ocean floor.", 
        Hint = "It hugs the sand when the sun shines bright.", 
        FavouriteBait = "Sapphire Krill", 
        FavouriteTime = "Day", 
        Price = 40, 
        XP = 20, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Hogchoker!", 
            "Sandy pancake!", 
            "Beige bottom-dweller!"
        }, 
        SparkleColor = Color3.fromRGB(194, 178, 128), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Rock Gunnel"] = {
        Icon = "rbxassetid://115876328247518", 
        WeightPool = {
            50, 
            140
        }, 
        Chance = 125, 
        Rarity = "Extinct", 
        Resilience = 80, 
        ProgressEfficiency = 1.08, 
        Description = "A long red fish with light red fins, slithering through rocky crevices.", 
        Hint = "It hides in rocks when the tide rolls in.", 
        FavouriteBait = "Shrimp", 
        FavouriteTime = "Night", 
        Price = 50, 
        XP = 25, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A Rock Gunnel!", 
            "Red wriggler!", 
            "Crevice crawler!"
        }, 
        SparkleColor = Color3.fromRGB(255, 0, 0), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    Pupfish = {
        Icon = "rbxassetid://121080756125367", 
        WeightPool = {
            50, 
            120
        }, 
        Chance = 127, 
        Rarity = "Extinct", 
        Resilience = 82, 
        ProgressEfficiency = 1.1, 
        Description = "A small blue fish with light blue fins, darting in playful schools.", 
        Hint = "It frolics where the waves crash gently.", 
        FavouriteBait = "Mist Worms", 
        FavouriteTime = "Day", 
        Price = 45, 
        XP = 22, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Windy"
        }, 
        Quips = {
            "A Pupfish!", 
            "Blue pup!", 
            "Tiny swimmer!"
        }, 
        SparkleColor = Color3.fromRGB(0, 0, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Four Eyes Fish"] = {
        Icon = "rbxassetid://93265006831225", 
        WeightPool = {
            50, 
            260
        }, 
        Chance = 110, 
        Rarity = "Extinct", 
        Resilience = 60, 
        ProgressEfficiency = 1.18, 
        Description = "A lilac fish with light purple fins, sporting four curious eyes.", 
        Hint = "It stares where the currents swirl.", 
        FavouriteBait = "Lagoon Leech", 
        FavouriteTime = nil, 
        Price = 100, 
        XP = 50, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "Windy"
        }, 
        Quips = {
            "A Four-Eyes Fish!", 
            "Quadruple glare!", 
            "Lilac looker!"
        }, 
        SparkleColor = Color3.fromRGB(200, 162, 200), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Black Swallower"] = {
        Icon = "rbxassetid://88566667097367", 
        WeightPool = {
            130, 
            320
        }, 
        Chance = 105, 
        Rarity = "Extinct", 
        Resilience = 58, 
        ProgressEfficiency = 1.14, 
        Description = "A black fish with a large belly and blurple fins, swallowing more than it should.", 
        Hint = "It gulps in the dark of night.", 
        FavouriteBait = "Minnow", 
        FavouriteTime = "Night", 
        Price = 110, 
        XP = 55, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A Black Swallower!", 
            "Big belly, bigger appetite!", 
            "Blurple glutton!"
        }, 
        SparkleColor = Color3.fromRGB(0, 0, 0), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Warty Angler"] = {
        Icon = "rbxassetid://82476479573398", 
        WeightPool = {
            50, 
            280
        }, 
        Chance = 107, 
        Rarity = "Extinct", 
        Resilience = 62, 
        ProgressEfficiency = 1.16, 
        Description = "A black angler with a wide, toothless mouth, luring prey with warty charm.", 
        Hint = "It gapes where the fog rolls thick.", 
        FavouriteBait = "Crystal Bananas", 
        FavouriteTime = "Night", 
        Price = 105, 
        XP = 52, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A Warty Angler!", 
            "Toothless terror!", 
            "Warty wonder!"
        }, 
        SparkleColor = Color3.fromRGB(0, 0, 0), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    Lumpclinger = {
        Icon = "rbxassetid://77872112276118", 
        WeightPool = {
            200, 
            500
        }, 
        Chance = 100, 
        Rarity = "Extinct", 
        Resilience = 50, 
        ProgressEfficiency = 0.95, 
        Description = "A yellow fish with brown spikes, clinging to ocean debris.", 
        Hint = "It sticks where the waves crash hard.", 
        FavouriteBait = "Gale Grub", 
        FavouriteTime = "Day", 
        Price = 175, 
        XP = 88, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Windy"
        }, 
        Quips = {
            "A Lumpclinger!", 
            "Spiky clinger!", 
            "Yellow lump!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 0), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    Snipefish = {
        Icon = "rbxassetid://106056189787720", 
        WeightPool = {
            180, 
            460
        }, 
        Chance = 95, 
        Rarity = "Extinct", 
        Resilience = 48, 
        ProgressEfficiency = 0.9, 
        Description = "A black fish with purple fins and a ridiculous sniper scope on top, its long mouth aimed for disaster.", 
        Hint = "It scopes out prey in the foggy dawn.", 
        FavouriteBait = "Flakes", 
        FavouriteTime = "Day", 
        Price = 185, 
        XP = 92, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A Snipefish!", 
            "Deadly accurate!", 
            "No-scope! Or not..."
        }, 
        SparkleColor = Color3.fromRGB(128, 0, 128), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    Boarfish = {
        Icon = "rbxassetid://73446225269523", 
        WeightPool = {
            220, 
            540
        }, 
        Chance = 97, 
        Rarity = "Extinct", 
        Resilience = 52, 
        ProgressEfficiency = 0.93, 
        Description = "A dark red fish with yellow fins, charging through the currents.", 
        Hint = "It barrels where the rain pounds the sea.", 
        FavouriteBait = "Ember Berries", 
        FavouriteTime = "Night", 
        Price = 180, 
        XP = 90, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A Boarfish!", 
            "Red charger!", 
            "Yellow rusher!"
        }, 
        SparkleColor = Color3.fromRGB(139, 0, 0), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    Telescopefish = {
        Icon = "rbxassetid://116150855141556", 
        WeightPool = {
            400, 
            1000
        }, 
        Chance = 60, 
        Rarity = "Extinct", 
        Resilience = 38, 
        ProgressEfficiency = 0.97, 
        Description = "A long eel with beady yellow eyes and light green fins, peering into the abyss.", 
        Hint = "It watches where the night grows cold.", 
        FavouriteBait = "Squid", 
        FavouriteTime = "Night", 
        Price = 460, 
        XP = 230, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A Telescopefish!", 
            "Eel spy!", 
            "Yellow-eyed stalker!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 0), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    Fangtooth = {
        Icon = "rbxassetid://136382079356398", 
        WeightPool = {
            360, 
            900
        }, 
        Chance = 55, 
        Rarity = "Extinct", 
        Resilience = 42, 
        ProgressEfficiency = 0.94, 
        Description = "A dark fish with large green eyes and sharp teeth, a menace of the deep.", 
        Hint = "It bites where the rain stirs the dark.", 
        FavouriteBait = "Lushrooms", 
        FavouriteTime = "Night", 
        Price = 480, 
        XP = 240, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A Fangtooth!", 
            "Toothy terror!", 
            "Green-eyed biter!"
        }, 
        SparkleColor = Color3.fromRGB(0, 128, 0), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Velvet Belly Lanternshark"] = {
        Icon = "rbxassetid://107948417304479", 
        WeightPool = {
            600, 
            1500
        }, 
        Chance = 28, 
        Rarity = "Extinct", 
        Resilience = 26, 
        ProgressEfficiency = 0.6, 
        Description = "A somewhat blue shark with light blue fins, glowing softly in the depths.", 
        Hint = "It shines where the night swallows the sea.", 
        FavouriteBait = "Crystal Bananas", 
        FavouriteTime = "Night", 
        Price = 1320, 
        XP = 660, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A VELVET BELLY LANTERNSHARK!", 
            "GLOWING MENACE!", 
            "BLUE BEACON OF DOOM!"
        }, 
        SparkleColor = Color3.fromRGB(0, 191, 255), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    Snakehead = {
        Icon = "rbxassetid://136363239688693", 
        WeightPool = {
            650, 
            1600
        }, 
        Chance = 25, 
        Rarity = "Extinct", 
        Resilience = 30, 
        ProgressEfficiency = 0.55, 
        Description = "A long, gold-colored fish, slithering with predatory grace.", 
        Hint = "It strikes where the waves roar loud.", 
        FavouriteBait = "Minnow", 
        FavouriteTime = "Night", 
        Price = 1400, 
        XP = 700, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Windy"
        }, 
        Quips = {
            "A SNAKEHEAD!", 
            "GOLDEN SERPENT!", 
            "SLITHERING TREASURE!"
        }, 
        SparkleColor = Color3.fromRGB(255, 215, 0), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Sarcastic Fringehead"] = {
        Icon = "rbxassetid://109897068344522", 
        WeightPool = {
            550, 
            1400
        }, 
        Chance = 30, 
        Rarity = "Extinct", 
        Resilience = 24, 
        ProgressEfficiency = 0.58, 
        Description = "A desaturated red fish with yellow-orange fins, one eye missing and a sarcastic mop of hair.", 
        Hint = "It mocks you where the rain hits hard.", 
        FavouriteBait = "Gale Grub", 
        FavouriteTime = "Day", 
        Price = 1350, 
        XP = 680, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A SARCASTIC FRINGEHEAD!", 
            "ONE-EYED JERK!", 
            "YEAH, NICE TRY!"
        }, 
        SparkleColor = Color3.fromRGB(255, 165, 0), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    Knifefish = {
        Icon = "rbxassetid://109566954982411", 
        WeightPool = {
            700, 
            1700
        }, 
        Chance = 26, 
        Rarity = "Extinct", 
        Resilience = 28, 
        ProgressEfficiency = 0.62, 
        Description = "A metallic black fish with blue accents and fins, slicing through the water.", 
        Hint = "It cuts where the fog blinds all.", 
        FavouriteBait = "Lagoon Leech", 
        FavouriteTime = "Night", 
        Price = 1380, 
        XP = 690, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A KNIFEFISH!", 
            "METALLIC BLADE!", 
            "BLUE SLASHER!"
        }, 
        SparkleColor = Color3.fromRGB(0, 0, 139), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Tripod Fish"] = {
        Icon = "rbxassetid://136127658076818", 
        WeightPool = {
            900, 
            2200
        }, 
        Chance = 15, 
        Rarity = "Extinct", 
        Resilience = 22, 
        ProgressEfficiency = 0.35, 
        Description = "A metallic black fish with absurdly long blue fins, tripping over itself like a clumsy tripod.", 
        Hint = "It stumbles where the depths grow cold.", 
        FavouriteBait = "Sapphire Krill", 
        FavouriteTime = "Day", 
        Price = 2600, 
        XP = 1300, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "A TRIPOD FISH!", 
            "THREE-LEGGED FLOP!", 
            "WHOOPS, IT FELL AGAIN!"
        }, 
        SparkleColor = Color3.fromRGB(0, 0, 255), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Pelican Eel"] = {
        Icon = "rbxassetid://76876467738469", 
        WeightPool = {
            25000, 
            60000
        }, 
        Chance = 12, 
        Rarity = "Extinct", 
        Resilience = 10, 
        ProgressEfficiency = 0.32, 
        Description = "A deadly blue eel with a giant mouth and sharp teeth, swallowing the ocean whole.", 
        Hint = "It gulps where the rain pours deep.", 
        FavouriteBait = "Mist Worms", 
        FavouriteTime = "Day", 
        Price = 2650, 
        XP = 1350, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A PELICAN EEL!", 
            "MOUTH OF DOOM!", 
            "TEETH OF TERROR!"
        }, 
        SparkleColor = Color3.fromRGB(0, 0, 255), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Bigfin Squid"] = {
        Icon = "rbxassetid://120382401661595", 
        WeightPool = {
            950, 
            2300
        }, 
        Chance = 10, 
        Rarity = "Extinct", 
        Resilience = 8, 
        ProgressEfficiency = 0.28, 
        Description = "A unique black squid with absurdly long, thin tentacles and light teal accents.", 
        Hint = "It drifts where the fog hides the abyss.", 
        FavouriteBait = "Crystal Bananas", 
        FavouriteTime = "Night", 
        Price = 2700, 
        XP = 1400, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A BIGFIN SQUID!", 
            "TENTACLE TANGLE!", 
            "TEAL NIGHTMARE!"
        }, 
        SparkleColor = Color3.fromRGB(173, 216, 230), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["X-ray Tetra"] = {
        Icon = "rbxassetid://124582234258164", 
        WeightPool = {
            3000, 
            7500
        }, 
        Chance = 2, 
        Rarity = "Extinct", 
        Resilience = 12, 
        ProgressEfficiency = 0.22, 
        Description = "A transparent fish with a colorful hue inside, light blue fins, and vibrant eyes.", 
        Hint = "It glows where the winds whip the waves.", 
        FavouriteBait = "Sapphire Krill", 
        FavouriteTime = "Day", 
        Price = 4750, 
        XP = 2375, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Windy"
        }, 
        Quips = {
            "AN X-RAY TETRA!", 
            "SEE-THROUGH STUNNER!", 
            "COLORFUL GHOST!"
        }, 
        SparkleColor = Color3.fromRGB(173, 216, 230), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Psychedelic Frogfish"] = {
        Icon = "rbxassetid://128425433008144", 
        BlockPassiveCapture = true, 
        WeightPool = {
            80000, 
            200000
        }, 
        Chance = 1, 
        Rarity = "Extinct", 
        Resilience = 2, 
        ProgressEfficiency = 0.08, 
        Description = "A red fish with cyan accents, gold-cyan fins, hopping around like a disco disaster.", 
        Hint = "It grooves where the fog gets funky.", 
        FavouriteBait = "Luminous Larva", 
        FavouriteTime = "Day", 
        Price = 13200, 
        XP = 6600, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A PSYCHEDELIC FROGFISH?!", 
            "DISCO DIVA OF THE DEEP!", 
            "GROOVY RIBBIT!"
        }, 
        SparkleColor = Color3.fromRGB(255, 0, 0), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    Murkfin = {
        Icon = "rbxassetid://101330234849139", 
        WeightPool = {
            180, 
            450
        }, 
        Chance = 120, 
        Rarity = "Extinct", 
        Resilience = 55, 
        ProgressEfficiency = 0.8, 
        Description = "A swamp-colored fish with blue fins, lurking in murky shallows.", 
        Hint = "It thrives where the sun barely pierces the mire.", 
        FavouriteBait = "Worm", 
        FavouriteTime = "Day", 
        Price = 45, 
        XP = 25, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A Murkfin!", 
            "Swampy swimmer!", 
            "Blue-finned muck!"
        }, 
        SparkleColor = Color3.fromRGB(139, 115, 85), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    Brackscale = {
        Icon = "rbxassetid://112447837123195", 
        WeightPool = {
            240, 
            600
        }, 
        Chance = 100, 
        Rarity = "Extinct", 
        Resilience = 52, 
        ProgressEfficiency = 0.85, 
        Description = "A dirt-brown fish with yellow-green fins, blending into brackish waters.", 
        Hint = "It wallows where the tide meets the mud.", 
        FavouriteBait = "Seaweed", 
        FavouriteTime = nil, 
        Price = 105, 
        XP = 50, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A Brackscale!", 
            "Muddy scales!", 
            "Yellow-green catch!"
        }, 
        SparkleColor = Color3.fromRGB(139, 69, 19), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Lagoon Dart"] = {
        Icon = "rbxassetid://123697771143998", 
        WeightPool = {
            300, 
            720
        }, 
        Chance = 95, 
        Rarity = "Extinct", 
        Resilience = 40, 
        ProgressEfficiency = 0.82, 
        Description = "A light navy blue fish with yellow fins, streaking through lagoon currents.", 
        Hint = "It dashes under the warm rain\226\128\153s embrace.", 
        FavouriteBait = "Shrimp", 
        FavouriteTime = "Night", 
        Price = 110, 
        XP = 55, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A Lagoon Dart!", 
            "Navy streak!", 
            "Yellow flash!"
        }, 
        SparkleColor = Color3.fromRGB(0, 0, 128), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Glimmer Guppy"] = {
        Icon = "rbxassetid://137884046783267", 
        WeightPool = {
            360, 
            960
        }, 
        Chance = 80, 
        Rarity = "Extinct", 
        Resilience = 34, 
        ProgressEfficiency = 0.7, 
        Description = "A dark pastel purple fish with pink fins and yellow spots, shimmering faintly.", 
        Hint = "It glints where the mist cloaks the lagoon.", 
        FavouriteBait = "Flakes", 
        FavouriteTime = "Day", 
        Price = 195, 
        XP = 90, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A Glimmer Guppy!", 
            "Pastel sparkle!", 
            "Spotty glow!"
        }, 
        SparkleColor = Color3.fromRGB(147, 112, 219), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    Swampjaw = {
        Icon = "rbxassetid://107062972353177", 
        WeightPool = {
            480, 
            1200
        }, 
        Chance = 75, 
        Rarity = "Extinct", 
        Resilience = 28, 
        ProgressEfficiency = 0.68, 
        Description = "A long, dark green fish with yellow fins, its jaws snapping in the swamp.", 
        Hint = "It lurks where the rain feeds the gloom.", 
        FavouriteBait = "Insect", 
        FavouriteTime = "Night", 
        Price = 200, 
        XP = 95, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A Swampjaw!", 
            "Green snapper!", 
            "Yellow-finned terror!"
        }, 
        SparkleColor = Color3.fromRGB(0, 100, 0), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Algae Lurker"] = {
        Icon = "rbxassetid://112955322009977", 
        WeightPool = {
            720, 
            1800
        }, 
        Chance = 48, 
        Rarity = "Extinct", 
        Resilience = 24, 
        ProgressEfficiency = 0.75, 
        Description = "A long green-blue fish with light green fins, lurking among tangled algae.", 
        Hint = "It hides where the lagoon blooms in stillness.", 
        FavouriteBait = "Squid", 
        FavouriteTime = "Day", 
        Price = 510, 
        XP = 245, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "An Algae Lurker!", 
            "Green-blue stalker!", 
            "Algae ambush!"
        }, 
        SparkleColor = Color3.fromRGB(0, 128, 128), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Reed Striker"] = {
        Icon = "rbxassetid://130323250031239", 
        WeightPool = {
            600, 
            1560
        }, 
        Chance = 42, 
        Rarity = "Extinct", 
        Resilience = 23, 
        ProgressEfficiency = 0.72, 
        Description = "A beige-cyan fish with yellow fins, striking from the reeds with precision.", 
        Hint = "It lunges where the wind rustles the water.", 
        FavouriteBait = "Minnow", 
        FavouriteTime = "Night", 
        Price = 515, 
        XP = 240, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Windy"
        }, 
        Quips = {
            "A Reed Striker!", 
            "Beige bolt!", 
            "Yellow ambush!"
        }, 
        SparkleColor = Color3.fromRGB(245, 245, 220), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Azure Prowler"] = {
        Icon = "rbxassetid://105080078239199", 
        WeightPool = {
            960, 
            2400
        }, 
        Chance = 32, 
        Rarity = "Extinct", 
        Resilience = 6, 
        ProgressEfficiency = 0.35, 
        Description = "A blue fish with golden fins, prowling the lagoon with regal grace.", 
        Hint = "It hunts under the clear dusk\226\128\153s glow.", 
        FavouriteBait = "Mist Worms", 
        FavouriteTime = "Night", 
        Price = 1750, 
        XP = 905, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "AN AZURE PROWLER!", 
            "GOLDEN KING!", 
            "BLUE MAJESTY!"
        }, 
        SparkleColor = Color3.fromRGB(0, 0, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Phantom Brine"] = {
        Icon = "rbxassetid://103784722418647", 
        WeightPool = {
            840, 
            2160
        }, 
        Chance = 28, 
        Rarity = "Extinct", 
        Resilience = 7, 
        ProgressEfficiency = 0.38, 
        Description = "A grey-green fish with translucent fins, haunting the briny depths.", 
        Hint = "It drifts where the fog shrouds the waves.", 
        FavouriteBait = "Mist Worms", 
        FavouriteTime = "Day", 
        Price = 1855, 
        XP = 995, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A PHANTOM BRINE!", 
            "GHOSTLY GREEN!", 
            "BRINE SPECTER!"
        }, 
        SparkleColor = Color3.fromRGB(128, 128, 0), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    Bloomtail = {
        Icon = "rbxassetid://102687577048594", 
        WeightPool = {
            1200, 
            3000
        }, 
        Chance = 18, 
        Rarity = "Extinct", 
        Resilience = 3, 
        ProgressEfficiency = 0.2, 
        Description = "A dark blue fish with light blue fins, its tail blooming like a lagoon flower.", 
        Hint = "It blossoms where the rain meets the deep.", 
        FavouriteBait = "Mist Worms", 
        FavouriteTime = "Night", 
        Price = 3950, 
        XP = 2390, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "Rain"
        }, 
        Quips = {
            "A BLOOMTAIL!", 
            "BLUE BLOOM!", 
            "TAIL OF WONDER!"
        }, 
        SparkleColor = Color3.fromRGB(0, 0, 139), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Depth Drifter"] = {
        Icon = "rbxassetid://115184880043041", 
        WeightPool = {
            7200, 
            18000
        }, 
        Chance = 1, 
        Rarity = "Extinct", 
        Resilience = 1, 
        ProgressEfficiency = 0.08, 
        Description = "A cyan blue fish with large light blue fins, drifting through the lagoon\226\128\153s abyss.", 
        Hint = "It floats where the winds stir the depths.", 
        FavouriteBait = "Golden Worm", 
        FavouriteTime = nil, 
        Price = 7500, 
        XP = 5000, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Windy"
        }, 
        Quips = {
            "A DEPTH DRIFTER?!", 
            "CYAN DRIFTING!", 
            "DRIFT OF THE DEEP!"
        }, 
        SparkleColor = Color3.fromRGB(0, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Verdant Mirage"] = {
        Icon = "rbxassetid://84550850034003", 
        BlockPassiveCapture = true, 
        WeightPool = {
            4800, 
            12000
        }, 
        Chance = 1, 
        Rarity = "Extinct", 
        Resilience = 1, 
        ProgressEfficiency = 0.12, 
        Description = "A dark cyan fish with bright light blue accents, a mirage in the lagoon\226\128\153s heart.", 
        Hint = "It shimmers where the fog hides the truth.", 
        FavouriteBait = "Luminous Larva", 
        FavouriteTime = "Day", 
        Price = 25000, 
        XP = 15000, 
        Seasons = {
            "Autumn"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A VERDANT MIRAGE?!", 
            "CYAN ILLUSION!", 
            "MIRAGE OF MIGHT!"
        }, 
        SparkleColor = Color3.fromRGB(0, 139, 139), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Toilet Fish"] = {
        Icon = "rbxassetid://78716099008235", 
        BlockPassiveCapture = true, 
        WeightPool = {
            105, 
            500
        }, 
        Chance = 0, 
        Rarity = "Secret", 
        Resilience = 6, 
        ProgressEfficiency = 0.35, 
        Description = "i need to take a dump", 
        Hint = "???", 
        FavouriteBait = "Mist Worms", 
        FavouriteTime = "Day", 
        Price = 20000, 
        XP = 12000, 
        Seasons = {
            "Summer"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "sigma", 
            "toilet!!!!!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "None", 
        Worlds = {
            "Sea 1"
        }
    }, 
    Dogefin = {
        Icon = "rbxassetid://82390122887969", 
        BlockPassiveCapture = true, 
        WeightPool = {
            105, 
            500
        }, 
        Chance = 0, 
        Rarity = "Secret", 
        Resilience = 6, 
        ProgressEfficiency = 0.35, 
        Description = "hapapa.. hapa patata", 
        Hint = "\240\159\144\182?", 
        FavouriteBait = "Mist Worms", 
        FavouriteTime = "Night", 
        Price = 21000, 
        XP = 13000, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Clear"
        }, 
        Quips = {
            "woof woof", 
            "bark bark"
        }, 
        SparkleColor = Color3.fromRGB(255, 208, 174), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "None", 
        Worlds = {
            "Sea 1"
        }
    }, 
    Tartaruga = {
        Icon = "rbxassetid://133777270496771", 
        WeightPool = {
            9500, 
            40000
        }, 
        Chance = 1, 
        Rarity = "Exotic", 
        Resilience = 1, 
        ProgressEfficiency = 0.2, 
        Description = "A colossal sea turtle cloaked in shadow, its shell a fortress of ancient secrets.", 
        Hint = "It looms where the cold mists shroud the deep.", 
        FavouriteBait = "Mist Worms", 
        FavouriteTime = nil, 
        Price = 10000, 
        XP = 20000, 
        Seasons = {
            "Winter"
        }, 
        Weather = {
            "Foggy"
        }, 
        Quips = {
            "A TARTARUGA!", 
            "SILLY TORTOISE!", 
            "DONATELLO!?"
        }, 
        SparkleColor = Color3.fromRGB(101, 96, 19), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Sunstone", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Tropical Bait Crate"] = {
        Icon = "rbxassetid://107608220521320", 
        WeightPool = {
            70, 
            70
        }, 
        Chance = 15, 
        Rarity = "Rare", 
        Resilience = 110, 
        Description = "A weathered wooden crate adorned with tropical leaves, designed to keep the bait fresh and lively. Likely drifted ashore from a fishing vessel exploring warm, exotic waters. The bait inside is vibrant and for the taking! Open it for a haul of tropical baits!", 
        Hint = "Washed up from a tropical fishing expedition.", 
        FavouriteBait = "Magnet", 
        FavouriteTime = nil, 
        BuyMult = 1.875, 
        Price = 80, 
        XP = 50, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Tropic Bait Crate!", 
            "Treasure from the tropics!", 
            "Whoa! A tropical haul!", 
            "A crate from paradise!", 
            "Did this float in from the islands?", 
            "The bait\226\128\153s still kicking!", 
            "Tropical vibes in a crate!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("crate"), 
        From = "None", 
        IsCrate = true, 
        CrateType = "Bait", 
        BaitContents = {
            "Luminous Larva", 
            "Sapphire Krill", 
            "Sapphire Krill", 
            "Mist Worms", 
            "Mist Worms", 
            "Mist Worms", 
            "Crystal Bananas", 
            "Crystal Bananas", 
            "Crystal Bananas", 
            "Crystal Bananas", 
            "Lagoon Leech", 
            "Lagoon Leech", 
            "Lagoon Leech", 
            "Lagoon Leech", 
            "Ember Berries", 
            "Ember Berries", 
            "Ember Berries", 
            "Ember Berries", 
            "Ember Berries", 
            "Lushrooms", 
            "Lushrooms", 
            "Lushrooms", 
            "Lushrooms", 
            "Lushrooms", 
            "Lushrooms", 
            "Gale Grub", 
            "Gale Grub", 
            "Gale Grub", 
            "Gale Grub", 
            "Gale Grub", 
            "Gale Grub"
        }, 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Jurassic Mosasaurus"] = {
        WeightPool = {
            40000, 
            150000
        }, 
        Chance = 15, 
        ProgressEfficiency = 0.1, 
        Rarity = "Limited", 
        Resilience = 10, 
        Description = "A massive marine reptile that dominated Jurassic seas.", 
        Hint = "Catchable during Jurassic World event in the boss fight.", 
        FavouriteBait = "None", 
        FavouriteTime = "None", 
        Price = 15000, 
        XP = 30000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Jurassic Mosasaurus!", 
            "Fierce!", 
            "Ancient!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 0), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Jurassic Island", 
        Worlds = {
            "Sea 1"
        }
    }, 
    Gillicus = {
        WeightPool = {
            500, 
            2000
        }, 
        Chance = 90, 
        ProgressEfficiency = 0.9, 
        Rarity = "Limited", 
        Resilience = 50, 
        Description = "A small, swift fish from Jurassic oceans.", 
        Hint = "Found at the Jurassic Island!", 
        FavouriteBait = nil, 
        FavouriteTime = nil, 
        Price = 1500, 
        XP = 3000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Gillicus!", 
            "Fierce!", 
            "Ancient!"
        }, 
        SparkleColor = Color3.fromRGB(255, 0, 0), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Jurassic Island", 
        Worlds = {
            "Sea 1"
        }
    }, 
    Oreochima = {
        WeightPool = {
            300, 
            1500
        }, 
        Chance = 80, 
        ProgressEfficiency = 0.8, 
        Rarity = "Limited", 
        Resilience = 45, 
        Description = "A sleek, predatory fish of Jurassic waters.", 
        Hint = "Found at the Jurassic Island!", 
        FavouriteBait = nil, 
        FavouriteTime = nil, 
        Price = 2000, 
        XP = 4000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Oreochima!", 
            "Fierce!", 
            "Ancient!"
        }, 
        SparkleColor = Color3.fromRGB(170, 0, 0), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Jurassic Island", 
        Worlds = {
            "Sea 1"
        }
    }, 
    Diplomystus = {
        WeightPool = {
            100, 
            500
        }, 
        Chance = 70, 
        ProgressEfficiency = 0.7, 
        Rarity = "Limited", 
        Resilience = 40, 
        Description = "A tiny, schooling fish from ancient seas.", 
        Hint = "Found at the Jurassic Island!", 
        FavouriteBait = nil, 
        FavouriteTime = nil, 
        Price = 2500, 
        XP = 5000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Diplomystus!", 
            "Fierce!", 
            "Ancient!"
        }, 
        SparkleColor = Color3.fromRGB(170, 0, 0), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Jurassic Island", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Giant Lamprey"] = {
        WeightPool = {
            200, 
            1000
        }, 
        Chance = 60, 
        ProgressEfficiency = 0.6, 
        Rarity = "Limited", 
        Resilience = 35, 
        Description = "A monstrous, jawless parasite of Jurassic seas.", 
        Hint = "Found at the Jurassic Island!", 
        FavouriteBait = nil, 
        FavouriteTime = nil, 
        Price = 3500, 
        XP = 7000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Giant Lamprey!", 
            "Fierce!", 
            "Ancient!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 0), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Jurassic Island", 
        Worlds = {
            "Sea 1"
        }
    }, 
    Edestus = {
        WeightPool = {
            1000, 
            5000
        }, 
        Chance = 50, 
        ProgressEfficiency = 0.5, 
        Rarity = "Limited", 
        Resilience = 30, 
        Description = "A bizarre, scissor-jawed predator of ancient oceans.", 
        Hint = "Found at the Jurassic Island!", 
        FavouriteBait = nil, 
        FavouriteTime = nil, 
        Price = 4000, 
        XP = 8000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Edestus!", 
            "Fierce!", 
            "Ancient!"
        }, 
        SparkleColor = Color3.fromRGB(255, 0, 0), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Jurassic Island", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Jurassic Helicoprion"] = {
        WeightPool = {
            2000, 
            8000
        }, 
        Chance = 40, 
        ProgressEfficiency = 0.4, 
        Rarity = "Limited", 
        Resilience = 25, 
        Description = "A spiral-jawed predator from Jurassic depths.", 
        Hint = "Found at the Jurassic Island!", 
        FavouriteBait = nil, 
        FavouriteTime = nil, 
        Price = 5000, 
        XP = 10000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Jurassic Helicoprion!", 
            "Fierce!", 
            "Ancient!"
        }, 
        SparkleColor = Color3.fromRGB(255, 0, 0), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Jurassic Island", 
        Worlds = {
            "Sea 1"
        }
    }, 
    Dasyatis = {
        WeightPool = {
            500, 
            3000
        }, 
        Chance = 30, 
        ProgressEfficiency = 0.3, 
        Rarity = "Limited", 
        Resilience = 20, 
        Description = "A wide, flat ray gliding through Jurassic seas.", 
        Hint = "Found at the Jurassic Island!", 
        FavouriteBait = nil, 
        FavouriteTime = nil, 
        Price = 8000, 
        XP = 16000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Dasyatis!", 
            "Fierce!", 
            "Ancient!"
        }, 
        SparkleColor = Color3.fromRGB(255, 0, 0), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Jurassic Island", 
        Worlds = {
            "Sea 1"
        }
    }, 
    Rhizodus = {
        WeightPool = {
            3000, 
            10000
        }, 
        Chance = 20, 
        ProgressEfficiency = 0.2, 
        Rarity = "Limited", 
        Resilience = 15, 
        Description = "A massive, toothy predator of ancient waters.", 
        Hint = "Found at the Jurassic Island!", 
        FavouriteBait = nil, 
        FavouriteTime = nil, 
        Price = 10000, 
        XP = 20000, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Rhizodus!", 
            "Fierce!", 
            "Ancient!"
        }, 
        SparkleColor = Color3.fromRGB(255, 0, 0), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Jurassic Island", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["JWEDamage-1"] = {
        WeightPool = {
            10, 
            20
        }, 
        Chance = 130, 
        Rarity = "Common", 
        Resilience = 100, 
        Description = "", 
        Hint = "", 
        FavouriteBait = nil, 
        FavouriteTime = nil, 
        Price = 0, 
        XP = 0, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {}, 
        SparkleColor = Color3.fromRGB(255, 255, 0), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = nil, 
        Worlds = {
            "Sea 1"
        }, 
        BlockCatchChatMessage = true, 
        Unregistered = true
    }, 
    ["JWEDamage-2"] = {
        WeightPool = {
            10, 
            20
        }, 
        Chance = 130, 
        Rarity = "Uncommon", 
        Resilience = 100, 
        Description = "", 
        Hint = "", 
        FavouriteBait = nil, 
        FavouriteTime = nil, 
        Price = 0, 
        XP = 0, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {}, 
        SparkleColor = Color3.fromRGB(255, 255, 0), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = nil, 
        Worlds = {
            "Sea 1"
        }, 
        BlockCatchChatMessage = true, 
        Unregistered = true
    }, 
    ["JWEDamage-3"] = {
        WeightPool = {
            10, 
            20
        }, 
        Chance = 130, 
        Rarity = "Unusual", 
        Resilience = 100, 
        Description = "", 
        Hint = "", 
        FavouriteBait = nil, 
        FavouriteTime = nil, 
        Price = 0, 
        XP = 0, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {}, 
        SparkleColor = Color3.fromRGB(255, 255, 0), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = nil, 
        Worlds = {
            "Sea 1"
        }, 
        BlockCatchChatMessage = true, 
        Unregistered = true
    }, 
    ["JWEDamage-4"] = {
        WeightPool = {
            10, 
            20
        }, 
        Chance = 130, 
        Rarity = "Rare", 
        Resilience = 100, 
        Description = "", 
        Hint = "", 
        FavouriteBait = nil, 
        FavouriteTime = nil, 
        Price = 0, 
        XP = 0, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {}, 
        SparkleColor = Color3.fromRGB(255, 255, 0), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = nil, 
        Worlds = {
            "Sea 1"
        }, 
        BlockCatchChatMessage = true, 
        Unregistered = true
    }, 
    ["JWEDamage-5"] = {
        WeightPool = {
            10, 
            20
        }, 
        Chance = 130, 
        Rarity = "Legendary", 
        Resilience = 100, 
        Description = "", 
        Hint = "", 
        FavouriteBait = nil, 
        FavouriteTime = nil, 
        Price = 0, 
        XP = 0, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {}, 
        SparkleColor = Color3.fromRGB(255, 255, 0), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = nil, 
        Worlds = {
            "Sea 1"
        }, 
        BlockCatchChatMessage = true, 
        Unregistered = true
    }, 
    ["JWEDamage-6"] = {
        WeightPool = {
            10, 
            20
        }, 
        Chance = 130, 
        Rarity = "Mythical", 
        Resilience = 100, 
        Description = "", 
        Hint = "", 
        FavouriteBait = nil, 
        FavouriteTime = nil, 
        Price = 0, 
        XP = 0, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {}, 
        SparkleColor = Color3.fromRGB(255, 255, 0), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = nil, 
        Worlds = {
            "Sea 1"
        }, 
        BlockCatchChatMessage = true, 
        Unregistered = true
    }, 
    ["Azure Studfish"] = {
        WeightPool = {
            9, 
            25
        }, 
        Chance = 130, 
        Rarity = "Limited", 
        Resilience = 100, 
        Description = "A vibrant blue fish adorned with LEGO studs, shimmering like a sapphire in the sea.", 
        Hint = "Catchable during LEGO event.", 
        FavouriteBait = "Stud Bait", 
        FavouriteTime = nil, 
        Price = 60, 
        XP = 20, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "An Azure Studfish!", 
            "Plastic!", 
            "Studded!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 0), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "LEGO", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Clown Brickfish"] = {
        WeightPool = {
            3, 
            8
        }, 
        Chance = 125, 
        Rarity = "Limited", 
        Resilience = 95, 
        Description = "A playful orange fish, with bright black & white blocky patterns.", 
        Hint = "Catchable during LEGO event.", 
        FavouriteBait = "Stud Bait", 
        FavouriteTime = nil, 
        Price = 80, 
        XP = 30, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Clown Brickfish!", 
            "Colorful!", 
            "Nemo?"
        }, 
        SparkleColor = Color3.fromRGB(255, 149, 0), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "LEGO", 
        Worlds = {
            "Sea 1"
        }
    }, 
    Goldbrick = {
        WeightPool = {
            15, 
            40
        }, 
        Chance = 115, 
        Rarity = "Limited", 
        Resilience = 90, 
        Description = "A hefty fish made of gleaming LEGO bricks, shining like a golden treasure.", 
        Hint = "Catchable during LEGO event.", 
        FavouriteBait = "Stud Bait", 
        FavouriteTime = nil, 
        Price = 100, 
        XP = 50, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Goldbrick!", 
            "Gleaming!", 
            "Gold?"
        }, 
        SparkleColor = Color3.fromRGB(255, 234, 0), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "LEGO", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Yellow Studfish"] = {
        WeightPool = {
            13, 
            39
        }, 
        Chance = 105, 
        Rarity = "Limited", 
        Resilience = 85, 
        Description = "A sunny yellow fish dotted with LEGO studs, brightening the ocean depths.", 
        Hint = "Catchable during LEGO event.", 
        FavouriteBait = "Stud Bait", 
        FavouriteTime = nil, 
        Price = 150, 
        XP = 70, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Yellow Studfish!", 
            "Sunny!", 
            "Studded!"
        }, 
        SparkleColor = Color3.fromRGB(255, 238, 0), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "LEGO", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Stud Turtle"] = {
        WeightPool = {
            30, 
            100
        }, 
        Chance = 95, 
        Rarity = "Limited", 
        Resilience = 80, 
        Description = "A sturdy turtle with a shell made of interlocking LEGO bricks, slow but strong.", 
        Hint = "Catchable during LEGO event.", 
        FavouriteBait = "Stud Bait", 
        FavouriteTime = nil, 
        Price = 400, 
        XP = 220, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Stud Turtle!", 
            "Armored!", 
            "Blocky!"
        }, 
        SparkleColor = Color3.fromRGB(29, 217, 0), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "LEGO", 
        Worlds = {
            "Sea 1"
        }
    }, 
    Brickhorse = {
        WeightPool = {
            20, 
            55
        }, 
        Chance = 85, 
        Rarity = "Limited", 
        Resilience = 75, 
        Description = "A majestic seahorse crafted from purple LEGO bricks, elegant and cute.", 
        Hint = "Catchable during LEGO event.", 
        FavouriteBait = "Stud Bait", 
        FavouriteTime = nil, 
        Price = 350, 
        XP = 150, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Brickhorse!", 
            "Regal!", 
            "Studded!"
        }, 
        SparkleColor = Color3.fromRGB(66, 0, 179), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "LEGO", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Cardinal Studfish"] = {
        WeightPool = {
            19, 
            54
        }, 
        Chance = 75, 
        Rarity = "Limited", 
        Resilience = 70, 
        Description = "A striking black & white fish with LEGO studs, resembling a cardinal's vibrant crest.", 
        Hint = "Catchable during LEGO event.", 
        FavouriteBait = "Stud Bait", 
        FavouriteTime = nil, 
        Price = 400, 
        XP = 180, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Cardinal Studfish!", 
            "Striped!", 
            "Blocky!"
        }, 
        SparkleColor = Color3.fromRGB(255, 255, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "LEGO", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Crab Stud"] = {
        WeightPool = {
            23, 
            80
        }, 
        Chance = 65, 
        Rarity = "Limited", 
        Resilience = 60, 
        Description = "A feisty red crab with LEGO brick claws, ready to snap at anything.", 
        Hint = "Catchable during LEGO event.", 
        FavouriteBait = "Stud Bait", 
        FavouriteTime = nil, 
        Price = 450, 
        XP = 200, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Crab Stud!", 
            "Snappy!", 
            "Studded!"
        }, 
        SparkleColor = Color3.fromRGB(255, 0, 0), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "LEGO", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Glow Brick"] = {
        WeightPool = {
            90, 
            300
        }, 
        Chance = 55, 
        Rarity = "Limited", 
        Resilience = 20, 
        Description = "A massive fish that glows with dark LEGO bricks, illuminating the deep sea.", 
        Hint = "Catchable during LEGO event.", 
        FavouriteBait = "Stud Bait", 
        FavouriteTime = nil, 
        Price = 800, 
        XP = 500, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Glow Brick!", 
            "Glowing!", 
            "Blocky!"
        }, 
        SparkleColor = Color3.fromRGB(7, 32, 86), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "LEGO", 
        Worlds = {
            "Sea 1"
        }
    }, 
    Jellystud = {
        WeightPool = {
            15, 
            40
        }, 
        Chance = 45, 
        Rarity = "Limited", 
        Resilience = 50, 
        Description = "A translucent jellyfish with glowing LEGO studs, floating like a soft brick cloud.", 
        Hint = "Catchable during LEGO event.", 
        FavouriteBait = "Stud Bait", 
        FavouriteTime = nil, 
        Price = 400, 
        XP = 200, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Jellystud!", 
            "Ouch!", 
            "Studded!"
        }, 
        SparkleColor = Color3.fromRGB(28, 145, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "LEGO", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Stud Koi"] = {
        WeightPool = {
            550, 
            1900
        }, 
        Chance = 35, 
        Rarity = "Limited", 
        Resilience = 40, 
        Description = "A graceful koi with shimmering orange LEGO studs, a masterpiece of the sea.", 
        Hint = "Catchable during LEGO event.", 
        FavouriteBait = "Stud Bait", 
        FavouriteTime = nil, 
        Price = 550, 
        XP = 280, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Stud Koi!", 
            "Elegant!", 
            "Blocky!"
        }, 
        SparkleColor = Color3.fromRGB(255, 106, 0), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "LEGO", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Stud Shark"] = {
        WeightPool = {
            40, 
            140
        }, 
        Chance = 25, 
        Rarity = "Limited", 
        Resilience = 35, 
        Description = "A fierce shark with sleek gray LEGO bricks, striking fear within the seas.", 
        Hint = "Catchable during LEGO event.", 
        FavouriteBait = "Stud Bait", 
        FavouriteTime = nil, 
        Price = 650, 
        XP = 300, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Stud Shark!", 
            "Sharp!", 
            "Studded!"
        }, 
        SparkleColor = Color3.fromRGB(99, 94, 94), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "LEGO", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Studling Crab"] = {
        WeightPool = {
            15, 
            50
        }, 
        Chance = 15, 
        Rarity = "Limited", 
        Resilience = 40, 
        Description = "A tiny crab with vibrant orange LEGO studs, scurrying along the ocean floor.", 
        Hint = "Catchable during LEGO event.", 
        FavouriteBait = "Stud Bait", 
        FavouriteTime = nil, 
        Price = 600, 
        XP = 280, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Studling Crab!", 
            "Scuttling!", 
            "Blocky!"
        }, 
        SparkleColor = Color3.fromRGB(255, 119, 0), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "LEGO", 
        Worlds = {
            "Sea 1"
        }
    }, 
    Studphin = {
        WeightPool = {
            25, 
            90
        }, 
        Chance = 10, 
        Rarity = "Limited", 
        Resilience = 30, 
        Description = "A playful dolphin with sky-blue LEGO bricks, leaping through the waves.", 
        Hint = "Catchable during LEGO event.", 
        FavouriteBait = "Stud Bait", 
        FavouriteTime = nil, 
        Price = 700, 
        XP = 300, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Studphin!", 
            "Leaping!", 
            "Studded!"
        }, 
        SparkleColor = Color3.fromRGB(28, 202, 255), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "LEGO", 
        Worlds = {
            "Sea 1"
        }
    }, 
    Tentabrick = {
        WeightPool = {
            300, 
            1000
        }, 
        Chance = 5, 
        Rarity = "Limited", 
        Resilience = 15, 
        ProgressEfficiency = 0.35, 
        Description = "A cute octopus with green LEGO brick tentacles, a creature of the deep.", 
        Hint = "Catchable during LEGO event.", 
        FavouriteBait = "Stud Bait", 
        FavouriteTime = nil, 
        Price = 900, 
        XP = 500, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Tentabrick!", 
            "Mighty!", 
            "Blocky!"
        }, 
        SparkleColor = Color3.fromRGB(9, 173, 0), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "LEGO", 
        Worlds = {
            "Sea 1"
        }
    }, 
    Studolodon = {
        WeightPool = {
            350, 
            1500
        }, 
        Chance = 1, 
        Rarity = "Limited", 
        Resilience = 10, 
        ProgressEfficiency = 0.15, 
        Description = "A prehistoric beast with massive LEGO brick plates, a plastic legend.", 
        Hint = "Catchable during LEGO event.", 
        FavouriteBait = "Stud Bait", 
        FavouriteTime = nil, 
        Price = 1500, 
        XP = 700, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A STUDOLODON!!!", 
            "PLASTIC MEGALODON!?!", 
            "BRICKED FURY!", 
            "LEGOLODON?", 
            "ACRYLONITRILE BUTADIENE STYRENE!"
        }, 
        SparkleColor = Color3.fromRGB(39, 35, 141), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "LEGO", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Gem Salmon"] = {
        WeightPool = {
            30, 
            110
        }, 
        Chance = 100, 
        Rarity = "Common", 
        Resilience = 102, 
        Description = "A radiant fish shimmering with the glow of buried ocean gems.", 
        Hint = "Hidden where treasure resides.", 
        FavouriteBait = "Flakes", 
        FavouriteTime = nil, 
        Price = 80, 
        XP = 70, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Gem Salmon!", 
            "Glistening!", 
            "Treasure!", 
            "Pure gold!"
        }, 
        SparkleColor = Color3.fromRGB(4, 175, 236), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Treasure Island", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Bluegem Angelfish"] = {
        WeightPool = {
            30, 
            100
        }, 
        Chance = 105, 
        Rarity = "Common", 
        Resilience = 105, 
        Description = "A glimmering prize from the ocean's hidden vaults.", 
        Hint = "Hidden where treasure resides.", 
        FavouriteBait = "Shrimp", 
        FavouriteTime = nil, 
        Price = 100, 
        XP = 70, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Bluegem Angelfish!", 
            "Glistening!", 
            "Treasure!", 
            "Pure gold!"
        }, 
        SparkleColor = Color3.fromRGB(4, 207, 255), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Treasure Island", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Coin Triggerfish"] = {
        WeightPool = {
            28, 
            90
        }, 
        Chance = 95, 
        Rarity = "Common", 
        Resilience = 105, 
        Description = "A sparkling relic of sunken riches.", 
        Hint = "Hidden where treasure resides.", 
        FavouriteBait = "Bagel", 
        FavouriteTime = nil, 
        Price = 130, 
        XP = 80, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Coin Triggerfish!", 
            "Glistening!", 
            "Treasure!", 
            "Pure gold!"
        }, 
        SparkleColor = Color3.fromRGB(248, 248, 248), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Treasure Island", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Crowned Royal Gramma"] = {
        WeightPool = {
            90, 
            300
        }, 
        Chance = 90, 
        Rarity = "Common", 
        Resilience = 100, 
        Description = "A regal gleam from a lost kingdom.", 
        Hint = "Hidden where treasure resides.", 
        FavouriteBait = "Worm", 
        FavouriteTime = nil, 
        Price = 150, 
        XP = 110, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Crowned Royal Gramma!", 
            "Glistening!", 
            "Treasure!", 
            "Pure gold!"
        }, 
        SparkleColor = Color3.fromRGB(112, 95, 142), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Treasure Island", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Emerald Angelfish"] = {
        WeightPool = {
            43, 
            129
        }, 
        Chance = 85, 
        Rarity = "Common", 
        Resilience = 95, 
        Description = "A verdant sparkle from a pirate's hoard.", 
        Hint = "Hidden where treasure resides.", 
        FavouriteBait = "Insect", 
        FavouriteTime = nil, 
        Price = 180, 
        XP = 130, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Emerald Angelfish!", 
            "Glistening!", 
            "Treasure!", 
            "Pure gold!"
        }, 
        SparkleColor = Color3.fromRGB(0, 143, 156), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Treasure Island", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Gem Anchovy"] = {
        WeightPool = {
            8, 
            20
        }, 
        Chance = 87, 
        Rarity = "Common", 
        Resilience = 100, 
        Description = "A tiny jewel of the sea, sparkling like a forgotten coin.", 
        Hint = "Hidden where treasure resides.", 
        FavouriteBait = "Worm", 
        FavouriteTime = nil, 
        Price = 170, 
        XP = 140, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Gem Anchovy!", 
            "Glistening!", 
            "Treasure!", 
            "Pure gold!"
        }, 
        SparkleColor = Color3.fromRGB(13, 105, 172), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Treasure Island", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Gemscale Mandarinfish"] = {
        WeightPool = {
            40, 
            110
        }, 
        Chance = 70, 
        Rarity = "Uncommon", 
        Resilience = 85, 
        Description = "A tiny shimmer from the sea's jeweled caches.", 
        Hint = "Hidden where treasure resides.", 
        FavouriteBait = "Mist Worms", 
        FavouriteTime = nil, 
        Price = 680, 
        XP = 340, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Gemscale Mandarinfish!", 
            "Glistening!", 
            "Treasure!", 
            "Pure gold!"
        }, 
        SparkleColor = Color3.fromRGB(255, 176, 0), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Treasure Island", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Goldband Butterflyfish"] = {
        WeightPool = {
            70, 
            220
        }, 
        Chance = 65, 
        Rarity = "Uncommon", 
        Resilience = 85, 
        Description = "A golden glint from the ocean's buried wealth.", 
        Hint = "Hidden where treasure resides.", 
        FavouriteBait = "Gale Grub", 
        FavouriteTime = nil, 
        Price = 730, 
        XP = 380, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Goldband Butterflyfish!", 
            "Glistening!", 
            "Treasure!", 
            "Pure gold!"
        }, 
        SparkleColor = Color3.fromRGB(239, 184, 56), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Treasure Island", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Gem Eel"] = {
        WeightPool = {
            18, 
            50
        }, 
        Chance = 64, 
        Rarity = "Uncommon", 
        Resilience = 60, 
        Description = "A slithering sparkle, woven from the sea's hidden treasures.", 
        Hint = "Hidden where treasure resides.", 
        FavouriteBait = "Seaweed", 
        FavouriteTime = nil, 
        Price = 780, 
        XP = 400, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Gem Eel!", 
            "Glistening!", 
            "Treasure!", 
            "Pure gold!"
        }, 
        SparkleColor = Color3.fromRGB(0, 255, 0), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Treasure Island", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Golden Dorado"] = {
        WeightPool = {
            30, 
            100
        }, 
        Chance = 39, 
        Rarity = "Unusual", 
        Resilience = 70, 
        Description = "A radiant trophy from the sea's golden depths.", 
        Hint = "Hidden where treasure resides.", 
        FavouriteBait = "Lushrooms", 
        FavouriteTime = nil, 
        Price = 830, 
        XP = 540, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Golden Dorado!", 
            "Glistening!", 
            "Treasure!", 
            "Pure gold!"
        }, 
        SparkleColor = Color3.fromRGB(239, 184, 56), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Treasure Island", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Hidden Filefish"] = {
        WeightPool = {
            60, 
            190
        }, 
        Chance = 38, 
        Rarity = "Unusual", 
        Resilience = 65, 
        Description = "A concealed fish among the ocean's secrets.", 
        Hint = "Hidden where treasure resides.", 
        FavouriteBait = "Lagoon Leech", 
        FavouriteTime = nil, 
        Price = 880, 
        XP = 590, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Hidden Filefish!", 
            "Glistening!", 
            "Treasure!", 
            "Pure gold!"
        }, 
        SparkleColor = Color3.fromRGB(160, 215, 255), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Treasure Island", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Coin Squid"] = {
        WeightPool = {
            100, 
            300
        }, 
        Chance = 37, 
        Rarity = "Unusual", 
        Resilience = 150, 
        ProgressEfficiency = 0.9, 
        Description = "A sunken coin, representative of an inky marvel.", 
        Hint = "Hidden where treasure resides.", 
        FavouriteBait = "Magnet", 
        FavouriteTime = nil, 
        Price = 1130, 
        XP = 480, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Coin Squid!", 
            "Glistening!", 
            "Treasure!", 
            "Pure gold!"
        }, 
        SparkleColor = Color3.fromRGB(160, 95, 53), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Treasure Island", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Coin Piranha"] = {
        WeightPool = {
            100, 
            300
        }, 
        Chance = 31, 
        Rarity = "Rare", 
        Resilience = 150, 
        ProgressEfficiency = 0.9, 
        Description = "A sunken coin, representative of a ferocious piranha.", 
        Hint = "Hidden where treasure resides.", 
        FavouriteBait = "Magnet", 
        FavouriteTime = nil, 
        Price = 1330, 
        XP = 800, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Coin Piranha!", 
            "Glistening!", 
            "Treasure!", 
            "Pure gold!"
        }, 
        SparkleColor = Color3.fromRGB(130, 125, 129), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Treasure Island", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Net Wolffish"] = {
        WeightPool = {
            400, 
            1500
        }, 
        Chance = 30, 
        Rarity = "Rare", 
        Resilience = 50, 
        Description = "A fierce guardian of the sea's ancient riches.", 
        Hint = "Hidden where treasure resides.", 
        FavouriteBait = "Squid", 
        FavouriteTime = nil, 
        Price = 1280, 
        XP = 780, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Net Wolffish!", 
            "Glistening!", 
            "Treasure!", 
            "Pure gold!"
        }, 
        SparkleColor = Color3.fromRGB(102, 116, 132), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Treasure Island", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Queen Angelfish"] = {
        WeightPool = {
            24, 
            80
        }, 
        Chance = 25, 
        Rarity = "Rare", 
        Resilience = 45, 
        Description = "A sovereign sparkle from the ocean's royal trove.", 
        Hint = "Hidden where treasure resides.", 
        FavouriteBait = "Minnow", 
        FavouriteTime = nil, 
        Price = 1550, 
        XP = 860, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Queen Angelfish!", 
            "Glistening!", 
            "Treasure!", 
            "Pure gold!"
        }, 
        SparkleColor = Color3.fromRGB(85, 132, 187), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Treasure Island", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Gem Dolphin"] = {
        WeightPool = {
            80, 
            280
        }, 
        Chance = 16, 
        Rarity = "Legendary", 
        Resilience = 18, 
        ProgressEfficiency = 0.6, 
        Description = "A majestic creature, adorned with the ocean's dazzling jewels.", 
        Hint = "Hidden where treasure resides.", 
        FavouriteBait = "Crystal Bananas", 
        FavouriteTime = nil, 
        Price = 2750, 
        XP = 2130, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Gem Dolphin!", 
            "Glistening!", 
            "Treasure!", 
            "Pure gold!"
        }, 
        SparkleColor = Color3.fromRGB(105, 101, 117), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Treasure Island", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Ruby Lionfish"] = {
        WeightPool = {
            55, 
            170
        }, 
        Chance = 15, 
        Rarity = "Legendary", 
        Resilience = 25, 
        ProgressEfficiency = 0.55, 
        Description = "A gleam from the sea's most coveted chests.", 
        Hint = "Hidden where treasure resides.", 
        FavouriteBait = "Crystal Bananas", 
        FavouriteTime = nil, 
        Price = 2700, 
        XP = 1880, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Ruby Lionfish!", 
            "Glistening!", 
            "Treasure!", 
            "Pure gold!"
        }, 
        SparkleColor = Color3.fromRGB(221, 94, 94), 
        HoldAnimation = l_fish_0:WaitForChild("basic"), 
        From = "Treasure Island", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Gemstone Whale Shark"] = {
        WeightPool = {
            1200, 
            4000
        }, 
        Chance = 5, 
        Rarity = "Mythical", 
        Resilience = 15, 
        ProgressEfficiency = 0.35, 
        Description = "Massive and jewel covered, from the deepest vault.", 
        Hint = "Hidden where treasure resides.", 
        FavouriteBait = "Sapphire Krill", 
        FavouriteTime = nil, 
        Price = 6250, 
        XP = 2880, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Gemstone Whale Shark!", 
            "Glistening!", 
            "Treasure!", 
            "Pure gold!"
        }, 
        SparkleColor = Color3.fromRGB(248, 248, 248), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Treasure Island", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Gem Marlin"] = {
        WeightPool = {
            50000, 
            180000
        }, 
        Chance = 4, 
        Rarity = "Mythical", 
        Resilience = 12, 
        ProgressEfficiency = 0.3, 
        Description = "A colossal prize, flashing with the brilliance of deep-sea riches.", 
        Hint = "Hidden where treasure resides.", 
        FavouriteBait = "Sapphire Krill", 
        FavouriteTime = nil, 
        Price = 6750, 
        XP = 3380, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Gem Marlin!", 
            "Glistening!", 
            "Treasure!", 
            "Pure gold!"
        }, 
        SparkleColor = Color3.fromRGB(128, 187, 219), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Treasure Island", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Goldfin Octopus"] = {
        WeightPool = {
            300, 
            1000
        }, 
        Chance = 1, 
        Rarity = "Exotic", 
        Resilience = 10, 
        ProgressEfficiency = 0.15, 
        Description = "A golden enigma from the sea's most elusive troves.", 
        Hint = "???", 
        FavouriteBait = "Golden Shrimp Bait", 
        FavouriteTime = nil, 
        Price = 3750, 
        XP = 4630, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Goldfin Octopus!", 
            "Glistening!", 
            "Treasure!", 
            "Pure gold!"
        }, 
        SparkleColor = Color3.fromRGB(239, 184, 56), 
        HoldAnimation = l_fish_0:WaitForChild("heavy"), 
        From = "Treasure Island", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Gem Blobfish"] = {
        WeightPool = {
            10, 
            100
        }, 
        Chance = 1, 
        Rarity = "Secret", 
        Resilience = 100, 
        ProgressEfficiency = 1.5, 
        Description = "The blobfish is a sad, squishy lump with the personality of a deflated balloon... Absolutely lovable.", 
        Hint = "???", 
        FavouriteBait = "Golden Shrimp Bait", 
        FavouriteTime = nil, 
        Price = 20000, 
        XP = 1250, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A GEM BLOBFISH!!!!!!!", 
            "Slimey!", 
            "blobbed", 
            "Cute!", 
            "silly little blob.", 
            "Turn that frown upside-down!", 
            "Could use a cleaning..."
        }, 
        SparkleColor = Color3.fromRGB(255, 152, 220), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Treasure Island", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Gulf Toadfish"] = {
        WeightPool = {
            90, 
            300
        }, 
        Chance = 100, 
        Rarity = "Extinct", 
        Resilience = 100, 
        ProgressEfficiency = 1.15, 
        Description = "A mottled beige fish with a croaking call, hiding among reefs.", 
        Hint = "???", 
        FavouriteBait = "None", 
        FavouriteTime = nil, 
        Price = 100, 
        XP = 50, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Gulf Toadfish!", 
            "Fore!"
        }, 
        SparkleColor = Color3.fromRGB(211, 190, 150), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Oyster toadfish"] = {
        WeightPool = {
            37, 
            115
        }, 
        Chance = 80, 
        Rarity = "Extinct", 
        Resilience = 80, 
        ProgressEfficiency = 1.1, 
        Description = "A sneaky ambush predator lurking in oyster beds and muddy bottoms.", 
        Hint = "???", 
        FavouriteBait = "None", 
        FavouriteTime = nil, 
        Price = 200, 
        XP = 100, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "An Oyster Toadfish!", 
            "This isn't an oyster..."
        }, 
        SparkleColor = Color3.fromRGB(127, 132, 99), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Smooth toadfish"] = {
        WeightPool = {
            33, 
            110
        }, 
        Chance = 60, 
        Rarity = "Extinct", 
        Resilience = 60, 
        ProgressEfficiency = 1.05, 
        Description = "A sleek, silvery toadfish typically gliding through coastal waters.", 
        Hint = "???", 
        FavouriteBait = "None", 
        FavouriteTime = nil, 
        Price = 400, 
        XP = 200, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Smooth Toadfish!", 
            "rizz?"
        }, 
        SparkleColor = Color3.fromRGB(123, 160, 175), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Splendid toadfish"] = {
        WeightPool = {
            35, 
            120
        }, 
        Chance = 40, 
        Rarity = "Extinct", 
        Resilience = 40, 
        Description = "A dazzling fish, camouflaged among vibrant coral reefs.", 
        Hint = "???", 
        FavouriteBait = "None", 
        FavouriteTime = nil, 
        Price = 900, 
        XP = 500, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Splendid Toadfish!", 
            "Exquisite!"
        }, 
        SparkleColor = Color3.fromRGB(188, 155, 93), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Bearded Toadfish"] = {
        WeightPool = {
            40, 
            180
        }, 
        Chance = 20, 
        Rarity = "Extinct", 
        Resilience = 20, 
        ProgressEfficiency = 0.85, 
        Description = "A whiskered, elusive toadfish blending into rocky crevices.", 
        Hint = "???", 
        FavouriteBait = "Whale Bait", 
        FavouriteTime = nil, 
        Price = 3900, 
        XP = 1500, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Bearded Toadfish!", 
            "Could use a shave..."
        }, 
        SparkleColor = Color3.fromRGB(248, 248, 248), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    ["Giant Moray"] = {
        WeightPool = {
            110, 
            400
        }, 
        Chance = 5, 
        Rarity = "Extinct", 
        Resilience = 10, 
        ProgressEfficiency = 0.7, 
        Description = "A large, sinuous eel with sharp teeth, ruling tropical coral reefs.", 
        Hint = "???", 
        FavouriteBait = "Whale Bait", 
        FavouriteTime = nil, 
        Price = 5000, 
        XP = 2500, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "None"
        }, 
        Quips = {
            "A Giant Moray!", 
            "Not as big as I thought..."
        }, 
        SparkleColor = Color3.fromRGB(189, 117, 92), 
        HoldAnimation = l_fish_0:WaitForChild("tiny"), 
        From = "Second Sea", 
        Worlds = {
            "Sea 1"
        }
    }, 
    Rarities = {
        [1] = "Trash", 
        [2] = "Common", 
        [3] = "Uncommon", 
        [4] = "Unusual", 
        [5] = "Rare", 
        [6] = "Legendary", 
        [7] = "Mythical", 
        [8] = "Divine", 
        [9] = "Exotic", 
        [10] = "Secret", 
        [11] = "Relic", 
        [12] = "Fragment", 
        [13] = "Gemstone", 
        [14] = "Limited", 
        [15] = "Apex", 
        [16] = "Extinct", 
        [17] = "Cataclysmic", 
        [18] = "Special"
    }, 
    RarityColours = {
        Trash = Color3.fromRGB(145, 145, 145), 
        Common = Color3.fromRGB(142, 187, 191), 
        Uncommon = Color3.fromRGB(161, 255, 169), 
        Unusual = Color3.fromRGB(192, 135, 198), 
        Rare = Color3.fromRGB(119, 108, 181), 
        Legendary = Color3.fromRGB(240, 181, 109), 
        Mythical = Color3.fromRGB(255, 62, 120), 
        Exotic = Color3.fromRGB(255, 255, 255), 
        Secret = Color3.fromRGB(255, 255, 255), 
        Limited = Color3.fromRGB(74, 100, 217), 
        Divine = Color3.fromRGB(202, 198, 255), 
        Relic = Color3.fromRGB(120, 255, 183), 
        Fragment = Color3.fromRGB(255, 63, 5), 
        Gemstone = Color3.fromRGB(172, 57, 255), 
        Apex = Color3.fromRGB(255, 0, 0), 
        Extinct = Color3.fromRGB(255, 178, 178), 
        Unique = Color3.fromRGB(255, 255, 255), 
        Mirror = Color3.fromRGB(183, 214, 255), 
        Whistle = Color3.fromRGB(230, 230, 230), 
        Cataclysmic = Color3.fromRGB(255, 255, 255), 
        Special = Color3.fromRGB(255, 255, 255), 
        Nuclear = Color3.fromRGB(255, 255, 255)
    },
};

return v5;
