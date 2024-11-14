local l_fish_0 = game:GetService("ReplicatedStorage"):WaitForChild("resources"):WaitForChild("animations"):WaitForChild("fish");
local v4 = {
    ["Corsair Grouper"] = {
        WeightPool = {
            50, 
            200
        }, 
        Chance = 100, 
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
        Chance = 70, 
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
        Chance = 40, 
        Rarity = "Uncommon", 
        Resilience = 60, 
        Description = "The Galleon Goliath is a mid sized, slow-moving fish, often found in deeper seas. Uncommon but worth the haul.", 
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
        Chance = 30, 
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
        Chance = 15, 
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
        Chance = 12, 
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
        Chance = 7, 
        Rarity = "Rare", 
        Resilience = 25, 
        ProgressEfficiency = 0.7, 
        Description = "Bold yet wary, the Reefrunner Snapper darts around reefs. A popular, rare catch for reef fishers.", 
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
        Chance = 3, 
        Rarity = "Rare", 
        Resilience = 15, 
        ProgressEfficiency = 0.5, 
        Description = "Cursed Eels linger in darker waters, giving off an eerie glow. They\226\128\153re a spooky find for night anglers.", 
        Hint = "Found in darker waters in the oceanside.", 
        FavouriteBait = "Coal", 
        FavouriteTime = "Night", 
        Price = 900, 
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
        Price = 3700, 
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
        From = "Forsaken Shores"
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
        Price = 3700, 
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
        Description = "Who would leave this in an ocean? Seems to be in great condition too. A common boot, must of fallen off of a boat?.. Or someONE must of fallen off of a boat.. Whatever. either way, it's yours now!", 
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
    ["Carbon Crate"] = {
        WeightPool = {
            160, 
            160
        }, 
        Chance = 2, 
        Rarity = "Rare", 
        Resilience = 50, 
        Description = "A large military grade crate, lost from some sort of commercial fishing boat. The date of it's disappearance is unkown. Therefore, finders keepers?- Opening it might give you an array of fish, bait, and money!", 
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
            "instant Catcher", 
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
            "instant Catcher", 
            "Seaweed", 
            "Seaweed", 
            "Squid", 
            "Super Flakes", 
            "Maggot", 
            "Night Shrimp", 
            "Maggot", 
            "Maggot", 
            "Weird Algae"
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
    Bone = {
        WeightPool = {
            10, 
            25
        }, 
        Chance = 100 * v1["Brine Pool"].Trash, 
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
        Chance = 100 * v1["Brine Pool"].Common, 
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
        Chance = 90 * v1["Brine Pool"].Uncommon, 
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
        Chance = 60 * v1["Brine Pool"].Unusual, 
        Rarity = "Unusual", 
        Resilience = 25, 
        Description = "The Globe Jellyfish is a distant relative of the illusive Emperor Jellyfish. They are highly venemous instead of electrifying, which makes it a threat to any unfortunate creatures who come in contact with it.", 
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
        Chance = 40 * v1["Brine Pool"].Rare, 
        Rarity = "Rare", 
        Resilience = 20, 
        ProgressEfficiency = 0.8, 
        Description = "The Dweller Catfish is found near the bottom of the Desolate Brine Pool. They have bright fins and dark scales throughout their whole body, which they use to camoflauge from possible predators within the Brine Pool.", 
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
        Description = "The Eyefestation is an evolved breed of Bull Sharks. They possess a large amount of bright green eyes all over their face for spotting prey in the Brine Pool to feed on. The Eyefestation inhibits aggressive behavior towards other creatures, but this is likely a territorial response. If something happens to gaze into one of the Eyefestation's many eyes, they will be put in a dazed state where they become a vulnerable target.", 
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
        Description = "The Brine Phantom is a hostile predator of the Desolate Deep Brine Pool. They possess several sharp mandibles on the front of their face, which they use to subdue prey. The Brine Phantom inhibits aggressive behavior towards other creatures that happen to come anywhere close to it.", 
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
        Rarity = "Mythical", 
        Resilience = 10, 
        ProgressEfficiency = 0.2, 
        Description = "The Spectral Serpent is an aggressive and ginormous sea serpent species located in the Brine Pool of the Desolate Deep. They possess a translucent exo-membrane covering the inside of their body, as well as 4 biolumenescent eyes. They tend to lurk deeper within the Brine Pool, where they feed on microorganisms. Despite their specific diet, they have many sharp teeth and mandibles along with their hammerhead-shaped skull, which they can use to easily fend off invasive threats. When hooked, they put up an intense fight for even the most experienced anglers.", 
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
        Chance = 100 * v1["Desolate Deep"].Trash, 
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
        Chance = 17 * v1["Desolate Deep"].Uncommon, 
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
            "instant Catcher", 
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
        Description = "The Rockstar Hermit Crab is an oddly shaped crab, with an external piece of shell that covers their whole body. Underneath the shell, you can find their legs and claws. Despite being a crab, horseshoe crabs are harmless and their claws are weak. Caught with crab cages in the Desolate Deep.", 
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
        Chance = 90 * v1["Desolate Deep"].Common, 
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
        Chance = 90 * v1["Desolate Deep"].Uncommon, 
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
        Chance = 25 * v1["Desolate Deep"].Unusual, 
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
        Chance = 45 * v1["Desolate Deep"].Unusual, 
        Rarity = "Unusual", 
        Resilience = 35, 
        Description = "The Cockatoo Squid is an intriguing species of squid. Their bodies are almost entirely translucent and biolumenescent, which they can use to hide from possible predators. They typically leave their hiding spots at night in search of microorganisms to feed on.", 
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
        Chance = 75 * v1["Desolate Deep"].Rare, 
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
        Chance = 0.1, 
        Rarity = "Mythical", 
        Resilience = 200, 
        Description = "An inactive naval sea mine that has somehow made its way down here. Caught in crab cages in the Desolate Deep.", 
        Hint = "Caught with crab cages in the Desolate Deep.", 
        FavouriteBait = "None", 
        FavouriteTime = nil, 
        Price = 4000, 
        XP = 2000, 
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
        Description = "Bluefish are found inside Keepers Altar. They can inhabit some of the powerful keepers power that is present in Keepers Altars water. They are only awake during the day, as the power of the Altar is too much for tem to handle during the night.", 
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
        Description = "The Red Snapper is a common salt water fish that can be commonly found all around Moosewoods oceans. They are a very noticable fish with their obvious red and light red tones.", 
        Hint = "Found in saltwater near Moosewood Docks. Prefers the the Summer and Autumn.", 
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
        Description = "Anchovies are extremely small and slender fish, with a silvery sheen. They are known for their schooling behavior and are a common catch near Moosewood.", 
        Hint = "Caught in all saltwaters of Moosewood", 
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
        Description = "The Largemouth Bass is a common freshwater fish found in Moosewood known for its large mouth and aggressive feeding behavior. It's found in various habitats, such as lakes, ponds, and rivers, where the water is warm and there's plenty of vegetation. Largemouth Bass are also known for their camouflage, with a greenish color on their backs that helps them blend in with their surroundings.", 
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
        Description = "The Sockeye Salmon are a very common type of salmon found near Moosewood, known for their vibrent red and green colours and interesting habits when laying eggs. They are very common during colder seasons such as Autumn, as that is the time most Sockeye Salmon lay their eggs.", 
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
        Description = "The Yellowfin Tuna is a species of tuna known for their speed and agility. The Yellowfin Tuna cna be found best near Moosewoods waters, but you can fidn them in most open saltwater due to them being highly migratory. They are less endangered than Bluefin Tuna but still face threats.", 
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
        Description = "Goldfish are found in Moosewoods pond and are best awake during the nice summer days. Even though they look weak, goldfish are highly tolerant of turbid waters, tempature fluctuations, and low levels of dissolved oxygen.", 
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
        Description = "The Common Snook is a cute salt water swimmer found commonly near Moosewood Docks. They are easy noticable due to their thin black stripe across their body, and easily catchable due to schools during spawning season in spring.", 
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
        Description = "Flounders are a demersal flatfish- meanig they feed at the bottom of the ocean, and has a flat body to blend in with the seafloor. Both of a flounders eyes are on one side, pointing upwars to the sky. They are easy to find in dark areas with a lot of surface or at night near Moosewood Docks.", 
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
        Description = "Pikes are a freshwater predator known for its elongated body, sharp teeth, and aggressive hunting behavior. It's a voracious carnivore that preys on smaller fish, frogs, and even small mammals near the water's edge. Pikes have a unique ability to ambush their prey by remaining almost motionless in the water, then striking with incredible speed to catch their meal.", 
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
        Description = "The Whisker Bill is a mythical creature that was a popular staple of Moosewood Island before they were thought to be excinct. Whisker Bills are extremely strong, however are awkward swimmers due to their peculiar archetype.", 
        Hint = "???", 
        FavouriteBait = "Truffle Worm", 
        FavouriteTime = nil, 
        Price = 3100, 
        XP = 150, 
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
    ["Fungal Cluster"] = {
        WeightPool = {
            9, 
            9
        }, 
        Chance = 22, 
        Rarity = "Trash", 
        Resilience = 120, 
        Description = "Offspring of the Giant Fungal Trees of Mushgrove Swamp. These mushrooms produce heavy spores which polute the surrounding area and sky; giving everything an uncomfortable and green feel.", 
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
        Description = "The Perch is a common freshwater fish that is best found in Mushgrove Swamp; Unlike the classic Perch, the White Perch has no noticable stripes.", 
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
        Description = "The Swamp Bass is species of Bass that can only be found in Swamp water. They are extremely similar to Smallmouth Bass besides their special adaptation; They have camelion-like camouflage. This allows them to nearly entirely avoid being a prey of larger fish and Alligators.", 
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
        Description = "The Grey Carp is a sturdy freshwater fish known for its strength and adaptability. They can be found in Mushgrove Swamp feeding on plants and small insects. The Grey Carp is extrremely strong, and is a tough battle to catch.", 
        Hint = "Found in Mushgrove Swamp near the fallen watch tower.", 
        FavouriteBait = "Seaweed", 
        FavouriteTime = nil, 
        Price = 120, 
        XP = 75, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Autumn"
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
        Description = "The Marsh Gar is a large vicious marshwater fish that can be found in Mushgrove Swamp. March Gar are extremely strong hunters, using their whiskers to sense prey in foggy waters.", 
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
        Description = "The Alligator is a massive, fearsome reptile known for its powerful bite and armored body. Found in Mushgrove Swamp, Alligators are the apex predator with a stealthy and ambush-based hunting style.", 
        Hint = "Found in Mushgrove Swamp during the night.", 
        FavouriteBait = "Fish Head", 
        FavouriteTime = "Night", 
        Price = 700, 
        XP = 400, 
        Seasons = {
            "Spring"
        }, 
        Weather = {
            "Foggy, Rain"
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
        Description = "The Sea Bass is a popular catch for many anglers, known for its elongated body and aggressive fighting behavior when hooked. They can be found all over the world in all sorts of salt waters.", 
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
        Description = "Porgies are a common catch for coasta anglers. They are a relatively easy to catch ocean fish with no real special qualities besides their taste and fun to say name.", 
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
        Description = "The Mullet is a streamlined, silver-scaled fish known for its schooling behavior and preference for shallow coastal and freshwater environments. Mullets are agile swimmers with a forked tail and a tough, sturdy body, making them a popular catch for beginners and seasoned anglers alike.", 
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
        Description = "Sarines are small schooling fish, known for their high oil content, silver scales, and long tiny bodies.", 
        Hint = "Found commonly in the open ocean.", 
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
        Description = "Mussels are small mollusc that can be easily found on rocks, near beaches, and near docks. They actually have one food and have very limited movement, so most mussels stay in one place their entire lives.. thats boring!", 
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
        Description = "Barracudas are large predatory fish, known for their fearsome appearance and ferocious behaviour. The barracuda is an adept saltwater hunter and are commonly mistaken as a hazard towarads humans, when in reality they are reletively comfortable and friendly swimmers. They can be found in deep oceans, and near Moosewood.", 
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
        Description = "The Amberjack is a strong, fast-swimming fish known for their vigorous fights and robust body. Mostly active in spring, and best caught in open ocean waters with live baitfish such as small minnows. The Ambjerkack is not rare or hard to come by, but it does put up an impressive battle when trying to catch.", 
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
        Hint = "Can be caught while cage fishing in open oceans.", 
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
        Description = "Prawns are prized crustaceans known for their delicate flavor and versatility. they are most active in summer, and can be found in an abundance in deep oceans. Prawns; similar to shrimp-- are predominantly nocturnal, making night fishing the most effective time.", 
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
        Description = "Oysters are bivalve mollusks with rough, irregularly shaped shells. They are typically found in clusters, attached to submerged rocks and roots. They can be found all over Terapin Islands; The Oysters help filter the water of Terrapin, leaving making it nearly a freshwater island.", 
        Hint = "Can be easily caught while cage fishing. Best caught near large rocks and all over Terrapin Island.", 
        FavouriteBait = "None", 
        FavouriteTime = nil, 
        Price = 30, 
        XP = 35, 
        Seasons = {
            "Summer", 
            "autumn"
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
        Chance = 30, 
        Rarity = "Unusual", 
        Resilience = 200, 
        Description = "Lobsters are valuable crustaceans known for their rich, succulent meat. Lobsters are most active in the summer to autumn, and are commonly caught in crab cages during calm clear days.", 
        Hint = "Caught in oceans using a crab cage.", 
        FavouriteBait = "None", 
        FavouriteTime = nil, 
        Price = 130, 
        XP = 60, 
        Seasons = {
            "Summer"
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
        From = "Ocean"
    }, 
    Coelacanth = {
        WeightPool = {
            70, 
            100
        }, 
        Chance = 14, 
        Rarity = "Rare", 
        Resilience = 40, 
        Description = "The Coelacanth is an ancient fish with a distinctive shape and strong swimming behaviors. Known as a 'living fossil,' this fish was thought to be extinct until its rediscovery in 1938. Coelacanths are deep-sea dwellers, often found in underwater caves and steep slopes.", 
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
        Description = "Graceful and flat, stingrays glide effortlessly through the water, using their wide pectoral fins to move. Their long, whip-like tails end in a sharp stinger, which they can use for defense. Stingrays are bottom dwellers, often found in rocky and sandy seafloors and caves.", 
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
            "I caught a swordfish!!"
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
        Description = "Sailfish are known for their incredible speed, long bill, and their striking sail-like dorsal fin. It's sleek body is built for fast swiming, allowing it to dart through water in bursts of speed. They are found in tropical and warmer ocean waters.", 
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
        Description = "The Moonfish is a sizable, flat, bony fish that inhabits deep and occasionally warm waters. While their behavior resembles that of the Ocean Sunfish, Moonfish are far more aggressive, using their rock-hard skulls to charge at fish, boats, and swimmers.", 
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
        Description = "The Rabbitfish is an illusive saltwater fish that is only found under The Arch. They are odd creatures that both resemble a rabbit, and swim in a pattern similar to a bunny jumping.", 
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
        Description = "The Great Hammerhead Shark is a large, powerful predator known for its distinct hammer-shaped head. Its unique head shape improves its ability to track prey, making it a formidable hunter in the ocean, and a prominent catch amung anglers.", 
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
            "Autunn", 
            "Summer"
        }, 
        Weather = {
            "Clear", 
            "Cloudy"
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
            80000, 
            100000
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
    Pumpkinseed = {
        WeightPool = {
            1, 
            5
        }, 
        Chance = 65, 
        Rarity = "Uncommon", 
        Resilience = 80, 
        Description = "Pumpkinseed are known for their distinctive red or orange edge on the ear flap and their round body shape. They prefer warmer waters and are often found in Roslit Bays freshwater. Pumpkinseed are also much less aggresive compared to other sunfish species.", 
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
        Description = "Squids can be found best at night in the surrounding ocean of Roslit Bay. Squids are rapid swimmers and largelt locate their prey by sight. Squids are extremely intellegent and can even hunt in cooperative groups.", 
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
    Arapaima = {
        WeightPool = {
            1000, 
            2000
        }, 
        Chance = 15, 
        Rarity = "Rare", 
        Resilience = 30, 
        Description = "Arapaima are massive freshwater fish with large, broad bodies and a distinctive, armor-like scaled appearance. They have a unique respiratory system that allows them to breathe air, as well as gills.", 
        Hint = "Found in Roslit Bays freshwater durong the day.", 
        FavouriteBait = "Minnow", 
        FavouriteTime = nil, 
        Price = 250, 
        XP = 150, 
        Seasons = {
            "None"
        }, 
        Weather = {
            "Rain", 
            "Fog"
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
        Description = "The Alligator Gar is a large,vicious freshwater fish that can be found in Roslit Bays pond. Gars track back to 100 million years ago, giving them the nickname as a 'living fossil'.", 
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
            "instant Catcher", 
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
        Description = "The Obsidian Salmon is an extremely rare breed of Sockeye Salmon. The Obsidian Salmon breeds extremely deep in the heart of Roslit Volcano. They are extremely strong and are double as dense as a common Sockeye Salmon.", 
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
        Hint = "Found in Saltwaters near Snowcap.", 
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
        Description = "The Herring is a slender silvery fish known for its schooling behavior. Herring can often be found in costal waters during the day.", 
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
        Description = "Pikes are a long, predatory freshwater fish known for its aggressive nature and sharp teeth. Glacier Pikes are supremely found in cold freshwaters in Snowcap Island. They can be determained by their unique ice-coloured scales and longer fins.", 
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
        Description = "A large, aggressive predator with mottled brown and green skin, known for its sharp teeth and oddly fierce fighting behavior when hooked. They can be found in ocean water near Snowcap during the day. They are especially active near the water-side enterance of Snowcap Cave.", 
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
        Description = "A massive, ancient fish with a long, armored body and distinctive bony plates. Sturgeons are known for their size and strength, making them challenging to catch.", 
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
        Description = "The Ringle is an interesting and illusive fish that swims at extremely low and cold depths. They have a Rhino-like horn that they use to attack their prey. Most commonly found in the open ocean of Snowcap Island.", 
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
        Description = "The Sweetfish is known for its delicate sweet flavor, and its golden hue. They are very commonly found in short river-like gap of Sunstone Island.", 
        Hint = "Found in the center gap of Sunstone Island.", 
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
        Description = "The Chinfish is a peculiar species with a distinct chin-like protrusion on its lower jaw. They are sluiggish swimmers and are an interesting catch to have on the otherside of your line.", 
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
        Description = "The Napoleonfish, also known as the Humphead Wrasse, is a large and brightly colored fish with a distinctive bump on its forehead. Despite its size, it is surprisingly agile, making it a thrilling challenge for anglers.", 
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
        Description = "Sunfish are the heaviest bony fish species alive today. Common sunfish can weigh up to one metric tonne but on rare instances they can way two metric tonnes! The largest appeal of the ocean Sunfish is the unsual shape of it's body and it's astonishing weight. Sunfish have the name for their love of basking in the sun by floating to the surface of the water.", 
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
        Description = "The Wiifish is a legendary tropic fish that can only be found in the saltwaters Sunstone Island during the day. They are an extremely old fish, dating back over 230,000,000 years ago. While the Wiifish is a slow swimmer, they can put up an immense fight for even advanced anglers.", 
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
        Description = "The Gudgeon is an extrmely small, slender fish. They are adaptable and can thrive in a variety of freshwater environments but are native and commonly found near Terrapin Island.", 
        Hint = "Found in the water of Terrapin Island.", 
        FavouriteBait = "Insect", 
        FavouriteTime = "Day", 
        Price = 40, 
        XP = 10, 
        Seasons = {
            "Spring, Summer"
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
        Description = "The Chinook Salmon, also known as King Salmon, are large silver fish with a slightly forked tail and a black mouth. They are highely prized; and are a common target for sport and commercial fishing. The King Salmon are commonly in ocean waters, but during the Autumn they migrate to Terrapin Island to lay eggs.", 
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
            "autumn"
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
        Description = "The Sea Turtle is a graceful marine creature with a streamlined shell and paddle-like flippers, found gliding peacefully in warm coastal waters. Known for their calm demeanor and protected status, Sea Turtles are a rare and beautiful sight that often symbolizes good fortune.", 
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
        Description = "The Twilight Eel, whilst resembaling a giant tadpole, is an Eel. Twilight Eels are extremely slimy, and use the bulb on their head to attract prey.", 
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
        Description = "The Isonade is a sinister creature that is assumed exctinct. They are seeming to be a dream that is possible to be caught and captured. They only circle near Strange Whirlpools, can they even sometimes can be the cause for one.", 
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
        Rarity = "Event", 
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
        HoldAnimation = l_fish_0:WaitForChild("basic")
    }, 
    Lurkerfish = {
        WeightPool = {
            5, 
            20
        }, 
        Chance = 0.01, 
        Rarity = "Event", 
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
        HoldAnimation = l_fish_0:WaitForChild("small")
    }, 
    ["Candy Fish"] = {
        WeightPool = {
            5, 
            10
        }, 
        Chance = 10, 
        Rarity = "Event", 
        Resilience = 50, 
        Description = "The Candy Fisch is a vibrant, bright colored fish, formed from glucose and carbon. Known for their playful nature, and sweet gummy texture. Only can be caught during FischFright.", 
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
        HoldAnimation = l_fish_0:WaitForChild("small")
    }, 
    Zombiefish = {
        WeightPool = {
            15, 
            30
        }, 
        Chance = 10, 
        Rarity = "Event", 
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
        HoldAnimation = l_fish_0:WaitForChild("small")
    }, 
    Skelefish = {
        WeightPool = {
            5, 
            10
        }, 
        Chance = 10, 
        Rarity = "Event", 
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
        HoldAnimation = l_fish_0:WaitForChild("tiny")
    }, 
    Nessie = {
        WeightPool = {
            20000, 
            40000
        }, 
        Chance = 0.01, 
        Rarity = "Event", 
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
        HoldAnimation = l_fish_0:WaitForChild("heavy")
    },
};
return v4;
