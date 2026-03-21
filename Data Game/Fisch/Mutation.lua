local v8 = {
    ["Lucky Gold"] = {
        ["PriceMultiply"] = 6.14,
        ["Chance"] = 0,
        ["Priority"] = 1,
        ["Display"] = "Lucky Gold",
        ["Color"] = ColorSequence.new(Color3.fromRGB(159, 255, 57), Color3.fromRGB(255, 222, 124))
    },
    ["Floral"] = {
        ["PriceMultiply"] = 8.4,
        ["Chance"] = 2,
        ["SpecificZones"] = { "Living Garden" },
        ["BlockAppraisal"] = true,
        ["Display"] = "Floral",
        ["Color"] = Color3.fromRGB(242, 190, 255)
    },
    ["Decayed"] = {
        ["PriceMultiply"] = 0.45,
        ["Chance"] = 5,
        ["SpecificZones"] = { "Toxic Grove" },
        ["Display"] = "Decayed",
        ["Color"] = Color3.fromRGB(63, 59, 75)
    },
    ["Honey"] = {
        ["PriceMultiply"] = 2.6,
        ["Chance"] = 3,
        ["SpecificZones"] = { "Nectar Den" },
        ["Display"] = "Honey",
        ["Color"] = Color3.fromRGB(255, 180, 51)
    },
    ["Vitalic"] = {
        ["PriceMultiply"] = 8,
        ["Chance"] = 0,
        ["Display"] = "Vitalic",
        ["Color"] = Color3.fromRGB(116, 255, 160)
    },
    ["Tainted"] = {
        ["PriceMultiply"] = 6.5,
        ["Chance"] = 0,
        ["Display"] = "Tainted",
        ["Color"] = Color3.fromRGB(168, 92, 255)
    },
    ["Dreaming"] = {
        ["PriceMultiply"] = 3.5,
        ["Chance"] = 0,
        ["Display"] = "Dreaming",
        ["Color"] = Color3.fromRGB(222, 193, 255)
    },
    ["Bliss"] = {
        ["PriceMultiply"] = 7,
        ["Chance"] = 0,
        ["Display"] = "Bliss",
        ["Color"] = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(216, 160, 249)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(151, 249, 249)), ColorSequenceKeypoint.new(1, Color3.fromRGB(141, 255, 135)) })
    },
    ["Verdant"] = {
        ["PriceMultiply"] = 9.2,
        ["Chance"] = 0,
        ["Display"] = "Verdant",
        ["Color"] = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(73, 221, 10)), ColorSequenceKeypoint.new(1, Color3.fromRGB(175, 223, 0)) })
    },
    ["Blossomed"] = {
        ["PriceMultiply"] = 4.6,
        ["Chance"] = 0,
        ["Display"] = "Blossomed",
        ["Color"] = Color3.fromRGB(160, 255, 35)
    },
    ["Noxious"] = {
        ["PriceMultiply"] = 0.3,
        ["Chance"] = 0,
        ["Priority"] = 10,
        ["Display"] = "Noxious",
        ["Color"] = Color3.fromRGB(148, 37, 217)
    },
    ["Plagued"] = {
        ["PriceMultiply"] = 10,
        ["Chance"] = 0,
        ["Display"] = "Plagued",
        ["Color"] = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(32, 27, 52)), ColorSequenceKeypoint.new(1, Color3.fromRGB(14, 13, 20)) })
    },
    ["Amped"] = {
        ["PriceMultiply"] = 4,
        ["Chance"] = 0,
        ["Display"] = "Amped",
        ["Color"] = Color3.fromRGB(238, 238, 238)
    },
    ["Obsidian"] = {
        ["PriceMultiply"] = 8.3,
        ["Chance"] = 0,
        ["Display"] = "Obsidian",
        ["Color"] = Color3.fromRGB(50, 28, 59)
    },
    ["Igneous"] = {
        ["PriceMultiply"] = 8.65,
        ["Chance"] = 0,
        ["Display"] = "Igneous",
        ["Color"] = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 102, 0)), ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 199, 56)) })
    },
    ["Solar"] = {
        ["PriceMultiply"] = 5.3,
        ["Chance"] = 0,
        ["Display"] = "Solar",
        ["Color"] = Color3.fromRGB(255, 225, 117)
    },
    ["Sweet"] = {
        ["PriceMultiply"] = 7,
        ["Chance"] = 0,
        ["Display"] = "Sweet",
        ["Color"] = Color3.fromRGB(255, 176, 225)
    },
    ["Lovely"] = {
        ["PriceMultiply"] = 8,
        ["Chance"] = 0,
        ["Display"] = "Lovely",
        ["Color"] = Color3.fromRGB(241, 190, 255)
    },
    ["Candy"] = {
        ["PriceMultiply"] = 2,
        ["Chance"] = 0,
        ["Display"] = "Candy",
        ["Color"] = Color3.fromRGB(255, 184, 185)
    },
    ["Rose"] = {
        ["PriceMultiply"] = 4.5,
        ["Chance"] = 0,
        ["Display"] = "Rose",
        ["Color"] = Color3.fromRGB(179, 42, 42)
    },
    ["Embraced"] = {
        ["PriceMultiply"] = 9.1,
        ["Chance"] = 0,
        ["Display"] = "Embraced",
        ["Color"] = Color3.fromRGB(255, 227, 198)
    },
    ["Lovestruck"] = {
        ["PriceMultiply"] = 4,
        ["Chance"] = 0,
        ["Display"] = "Lovestruck",
        ["Color"] = Color3.fromRGB(234, 0, 255)
    },
    ["Heartburst"] = {
        ["PriceMultiply"] = 8,
        ["Chance"] = 0,
        ["Display"] = "Heartburst",
        ["Color"] = Color3.fromRGB(255, 0, 174)
    },
    ["Ascended"] = {
        ["PriceMultiply"] = 9.9,
        ["Chance"] = 0,
        ["Priority"] = 1,
        ["Display"] = "Ascended",
        ["Color"] = Color3.fromRGB(203, 230, 255)
    },
    ["Brined"] = {
        ["PriceMultiply"] = 3.5,
        ["Chance"] = 0,
        ["Display"] = "Brined",
        ["Color"] = Color3.fromRGB(0, 255, 157)
    },
    ["Rusty"] = {
        ["PriceMultiply"] = 0.7,
        ["Chance"] = 0,
        ["Priority"] = 1,
        ["Display"] = "Rusty",
        ["Color"] = Color3.fromRGB(139, 90, 43)
    },
    ["Coral"] = {
        ["PriceMultiply"] = 1.8,
        ["Chance"] = 5,
        ["Display"] = "Coral",
        ["SpecificZones"] = { "Coral Bastion" },
        ["Color"] = Color3.fromRGB(222, 155, 255)
    },
    ["Mourned"] = {
        ["PriceMultiply"] = 7.5,
        ["Chance"] = 1,
        ["SpecificZones"] = { "Tidefall" },
        ["Display"] = "Mourned",
        ["Color"] = Color3.fromRGB(10, 20, 39)
    },
    ["Ocean\'s Ruin"] = {
        ["PriceMultiply"] = 10.2,
        ["Chance"] = 0,
        ["Display"] = "Ocean\'s Ruin",
        ["Color"] = Color3.fromRGB(39, 13, 13)
    },
    ["Forgotten"] = {
        ["PriceMultiply"] = 2,
        ["Chance"] = 0,
        ["Display"] = "Forgotten",
        ["Color"] = Color3.fromRGB(4, 3, 3)
    },
    ["Husk"] = {
        ["PriceMultiply"] = 0.14,
        ["Chance"] = 0,
        ["Priority"] = 1,
        ["Display"] = "Husk",
        ["Color"] = Color3.fromRGB(149, 133, 115)
    },
    ["Requies"] = {
        ["PriceMultiply"] = 9.8,
        ["Chance"] = 0,
        ["Priority"] = 2,
        ["Display"] = "Requies",
        ["Color"] = Color3.fromRGB(40, 207, 137)
    },
    ["Fallen"] = {
        ["PriceMultiply"] = 6,
        ["Chance"] = 2,
        ["Display"] = "Fallen",
        ["Color"] = Color3.fromRGB(98, 96, 86)
    },
    ["Withered"] = {
        ["PriceMultiply"] = 9.5,
        ["Chance"] = 0,
        ["Display"] = "Withered",
        ["Color"] = Color3.fromRGB(43, 33, 30)
    },
    ["Royal"] = {
        ["PriceMultiply"] = 9.4,
        ["Chance"] = 0,
        ["Display"] = "Royal",
        ["Color"] = Color3.fromRGB(243, 188, 93)
    },
    ["New Years"] = {
        ["PriceMultiply"] = 2.6,
        ["Chance"] = 0,
        ["Display"] = "New Years",
        ["Color"] = Color3.fromRGB(255, 251, 149),
        ["SpecificZones"] = { "New Years" }
    },
    ["Astraeus"] = {
        ["PriceMultiply"] = 9.6,
        ["Chance"] = 0,
        ["Display"] = "Astraeus",
        ["Color"] = Color3.fromRGB(255, 170, 0)
    },
    ["Noctic"] = {
        ["PriceMultiply"] = 8.5,
        ["Chance"] = 0,
        ["Priority"] = 4,
        ["Display"] = "Noctic",
        ["Color"] = Color3.fromRGB(255, 255, 255)
    },
    ["Corvid"] = {
        ["PriceMultiply"] = 5,
        ["Chance"] = 0,
        ["Priority"] = 4,
        ["Display"] = "Corvid",
        ["Color"] = Color3.fromRGB(176, 97, 255)
    },
    ["Frostnova"] = {
        ["PriceMultiply"] = 8,
        ["Chance"] = 0,
        ["Display"] = "Frostnova",
        ["Color"] = Color3.fromRGB(106, 151, 255)
    },
    ["Merry"] = {
        ["PriceMultiply"] = 5,
        ["Chance"] = 0,
        ["Display"] = "Merry",
        ["Color"] = Color3.fromRGB(22, 131, 26)
    },
    ["Jingle Bell"] = {
        ["PriceMultiply"] = 8,
        ["Chance"] = 0,
        ["Display"] = "Jingle Bell",
        ["Color"] = Color3.fromRGB(255, 217, 102)
    },
    ["Boreal"] = {
        ["PriceMultiply"] = 4,
        ["Chance"] = 2,
        ["Display"] = "Boreal",
        ["Color"] = Color3.fromRGB(54, 46, 39),
        ["SpecificZones"] = {
            "Boreal Pines",
            "Boreal Pines - Ice Fishing",
            "Boreal Pines - Cave",
            "Boreal Pines - Peak"
        }
    },
    ["Peppermint"] = {
        ["PriceMultiply"] = 5,
        ["Chance"] = 0,
        ["Display"] = "Peppermint",
        ["Color"] = Color3.fromRGB(255, 73, 73)
    },
    ["Gingerbread"] = {
        ["PriceMultiply"] = 5,
        ["Chance"] = 0,
        ["Display"] = "Gingerbread",
        ["Color"] = Color3.fromRGB(140, 70, 43)
    },
    ["Frostbitten"] = {
        ["PriceMultiply"] = 9,
        ["Chance"] = 0,
        ["Display"] = "Frostbitten",
        ["Color"] = Color3.fromRGB(153, 184, 255)
    },
    ["Permafrost"] = {
        ["PriceMultiply"] = 9.5,
        ["Chance"] = 0,
        ["Display"] = "Permafrost",
        ["Color"] = Color3.fromRGB(64, 96, 131)
    },
    ["Santa"] = {
        ["PriceMultiply"] = 8.5,
        ["Chance"] = 0,
        ["Display"] = "Santa",
        ["Color"] = Color3.fromRGB(172, 4, 4)
    },
    ["Honked"] = {
        ["PriceMultiply"] = 2,
        ["Chance"] = 0,
        ["Priority"] = 1,
        ["Display"] = "Honked",
        ["Color"] = Color3.fromRGB(255, 255, 0)
    },
    ["Gravy"] = {
        ["PriceMultiply"] = 6,
        ["Chance"] = 0,
        ["Display"] = "Gravy",
        ["Color"] = Color3.fromRGB(85, 49, 31)
    },
    ["Pancake"] = {
        ["PriceMultiply"] = 0,
        ["Chance"] = 0,
        ["Priority"] = 1,
        ["Display"] = "Pancake",
        ["Color"] = Color3.fromRGB(241, 255, 222)
    },
    ["Putrid"] = {
        ["PriceMultiply"] = -0.5,
        ["Chance"] = 0,
        ["Priority"] = 10000000000000,
        ["Display"] = "Putrid",
        ["Color"] = Color3.fromRGB(67, 88, 49)
    },
    ["Magical"] = {
        ["PriceMultiply"] = 7.2,
        ["Chance"] = 0,
        ["Display"] = "Magical",
        ["Color"] = Color3.fromRGB(195, 14, 255)
    },
    ["Gleebous"] = {
        ["SpecificZones"] = { "Roslit Bay Alien" },
        ["PriceMultiply"] = 8,
        ["Chance"] = 50,
        ["BlockAppraisal"] = true,
        ["Display"] = "Gleebous",
        ["Color"] = Color3.fromRGB(169, 255, 98)
    },
    ["Distraught"] = {
        ["PriceMultiply"] = 8.5,
        ["Chance"] = 0,
        ["Display"] = "Distraught",
        ["Color"] = Color3.fromRGB(15, 15, 15)
    },
    ["Lucid"] = {
        ["PriceMultiply"] = 3.5,
        ["Chance"] = 0,
        ["Display"] = "Lucid",
        ["Color"] = Color3.fromRGB(161, 124, 255)
    },
    ["Phantom"] = {
        ["PriceMultiply"] = 4.5,
        ["Chance"] = 0,
        ["Display"] = "Phantom",
        ["Color"] = Color3.fromRGB(26, 31, 38)
    },
    ["Fabulous"] = {
        ["PriceMultiply"] = 9.6,
        ["Chance"] = 0,
        ["Display"] = "Fabulous",
        ["Color"] = Color3.fromRGB(223, 149, 255)
    },
    ["Unlucky"] = {
        ["PriceMultiply"] = 0.5,
        ["Chance"] = 0,
        ["Display"] = "Unlucky",
        ["Priority"] = 1,
        ["Color"] = Color3.fromRGB(34, 34, 34)
    },
    ["Jackpot"] = {
        ["PriceMultiply"] = 7.77,
        ["Chance"] = 0,
        ["Display"] = "Jackpot",
        ["Color"] = Color3.fromRGB(75, 255, 111)
    },
    ["Frightful"] = {
        ["PriceMultiply"] = 6,
        ["Chance"] = 0,
        ["Display"] = "Frightful",
        ["Color"] = Color3.fromRGB(123, 104, 165)
    },
    ["Spooky"] = {
        ["PriceMultiply"] = 6,
        ["Chance"] = 0,
        ["Display"] = "Spooky",
        ["Color"] = Color3.fromRGB(220, 151, 81)
    },
    ["Eerie"] = {
        ["PriceMultiply"] = 6,
        ["Chance"] = 0,
        ["Display"] = "Eerie",
        ["Color"] = Color3.fromRGB(84, 211, 114)
    },
    ["Necrotic"] = {
        ["PriceMultiply"] = 7.4,
        ["Chance"] = 0,
        ["Display"] = "Necrotic",
        ["Color"] = Color3.fromRGB(80, 56, 56)
    },
    ["Batty"] = {
        ["PriceMultiply"] = 2.5,
        ["Chance"] = 0,
        ["Priority"] = 1,
        ["Display"] = "Batty",
        ["Color"] = Color3.fromRGB(33, 23, 23)
    },
    ["Wicked"] = {
        ["PriceMultiply"] = 7.7,
        ["Chance"] = 0,
        ["Display"] = "Wicked",
        ["Color"] = Color3.fromRGB(255, 200, 0)
    },
    ["Jack\'s Curse"] = {
        ["PriceMultiply"] = 8.5,
        ["Chance"] = 0,
        ["Display"] = "Jack\'s Curse",
        ["Color"] = Color3.fromRGB(194, 74, 33)
    },
    ["Nightmare"] = {
        ["PriceMultiply"] = 8.8,
        ["Chance"] = 0,
        ["Display"] = "Nightmare",
        ["Color"] = Color3.fromRGB(29, 73, 193)
    },
    ["Breezed"] = {
        ["PriceMultiply"] = 8.6,
        ["Chance"] = 0,
        ["Display"] = "Breezed",
        ["Color"] = Color3.fromRGB(247, 255, 164)
    },
    ["Upside-Down"] = {
        ["PriceMultiply"] = 1,
        ["Chance"] = 0,
        ["Display"] = "Upside-Down",
        ["Priority"] = 3,
        ["Color"] = Color3.fromRGB(207, 195, 178)
    },
    ["Part"] = {
        ["PriceMultiply"] = 0.01,
        ["Chance"] = 0,
        ["Display"] = "Part",
        ["Priority"] = 1,
        ["Color"] = Color3.fromRGB(207, 207, 207)
    }
}
local v9 = {
    ["PriceMultiply"] = 8,
    ["Chance"] = 0,
    ["Display"] = "Birthday",
    ["Color"] = Color3.fromRGB(218, 188, 145),
    ["DateRange"] = {
        ["Start"] = DateTime.fromUniversalTime(2025, 10, 5, 18, 0, 0),
        ["End"] = DateTime.fromUniversalTime(2025, 10, 6, 18, 0, 0)
    }
}
v8.Birthday = v9
v8.Poisoned = {
    ["SpecificZones"] = { "Lost Jungle", "MossjawHunt" },
    ["PriceMultiply"] = 0.9,
    ["Priority"] = 1,
    ["Chance"] = 5,
    ["Display"] = "Poisoned",
    ["Color"] = Color3.fromRGB(103, 73, 145)
}
v8.Vined = {
    ["SpecificZones"] = { "Lost Jungle", "MossjawHunt" },
    ["PriceMultiply"] = 3.5,
    ["Chance"] = 4,
    ["Display"] = "Vined",
    ["Color"] = Color3.fromRGB(120, 206, 122)
}
v8.Shrouded = {
    ["SpecificZones"] = { "Lost Jungle", "MossjawHunt" },
    ["PriceMultiply"] = 7,
    ["Chance"] = 1,
    ["Display"] = "Shrouded",
    ["Color"] = Color3.fromRGB(54, 67, 53)
}
v8.Mossy = {
    ["PriceMultiply"] = 8.7,
    ["Chance"] = 0,
    ["Display"] = "Mossy",
    ["Color"] = Color3.fromRGB(93, 135, 107)
}
v8.Toxic = {
    ["PriceMultiply"] = 6,
    ["Chance"] = 0,
    ["Priority"] = 1,
    ["Display"] = "Toxic",
    ["Color"] = Color3.fromRGB(98, 36, 197)
}
v8.Glowy = {
    ["PriceMultiply"] = 8,
    ["Chance"] = 0,
    ["Display"] = "Glowy",
    ["Color"] = Color3.fromRGB(254, 255, 197)
}
v8.Dirty = {
    ["PriceMultiply"] = 0.3,
    ["Chance"] = 0,
    ["Display"] = "Dirty",
    ["Priority"] = 1,
    ["Color"] = Color3.fromRGB(89, 71, 58)
}
v8.Mastered = {
    ["PriceMultiply"] = 9,
    ["Chance"] = 0,
    ["Display"] = "Mastered",
    ["Color"] = Color3.fromRGB(84, 101, 255)
}
v8.Luminescent = {
    ["PriceMultiply"] = 6.5,
    ["Chance"] = 0,
    ["Display"] = "Luminescent",
    ["Color"] = Color3.fromRGB(82, 226, 255)
}
v8.Crimson = {
    ["SpecificZones"] = { "Crimson Cavern", "Colossal Ancient Dragon" },
    ["PriceMultiply"] = 4,
    ["Chance"] = 3,
    ["Display"] = "Crimson",
    ["Color"] = Color3.fromRGB(145, 34, 34)
}
v8.Exploded = {
    ["PriceMultiply"] = 0.1,
    ["Chance"] = 0,
    ["Display"] = "Exploded",
    ["Priority"] = 1,
    ["Color"] = Color3.fromRGB(55, 62, 93)
}
v8.Galaxy = {
    ["PriceMultiply"] = 8,
    ["Chance"] = 0,
    ["Display"] = "Galaxy",
    ["Color"] = Color3.fromRGB(68, 72, 145)
}
v8.Atomic = {
    ["PriceMultiply"] = 8,
    ["Chance"] = 0,
    ["Display"] = "Atomic",
    ["Color"] = Color3.fromRGB(255, 255, 0)
}
v8.Alien = {
    ["PriceMultiply"] = 8,
    ["Chance"] = 0,
    ["Display"] = "Alien",
    ["Color"] = Color3.fromRGB(0, 255, 30)
}
v8.Fragmented = {
    ["PriceMultiply"] = 8,
    ["Chance"] = 0,
    ["Display"] = "Fragmented",
    ["Color"] = Color3.fromRGB(73, 255, 210)
}
v8.Mayhem = {
    ["PriceMultiply"] = 8,
    ["Chance"] = 0,
    ["Display"] = "Mayhem",
    ["Color"] = Color3.fromRGB(197, 169, 169)
}
v8.Madness = {
    ["PriceMultiply"] = 8,
    ["Chance"] = 0,
    ["Display"] = "Madness",
    ["Color"] = Color3.fromRGB(134, 132, 132)
}
v8.SixSeven = {
    ["PriceMultiply"] = 0.67,
    ["Chance"] = 0,
    ["Display"] = "67",
    ["Priority"] = 2,
    ["Color"] = Color3.fromRGB(116, 106, 54)
}
v8.Tryhard = {
    ["PriceMultiply"] = 10,
    ["Chance"] = 0,
    ["Display"] = "Tryhard",
    ["Color"] = Color3.fromRGB(216, 0, 0)
}
v8.Darkness = {
    ["PriceMultiply"] = 9.4,
    ["Chance"] = 0,
    ["Display"] = "Darkness",
    ["Color"] = Color3.fromRGB(48, 48, 37)
}
v8.Mango = {
    ["PriceMultiply"] = 7,
    ["Chance"] = 0,
    ["Display"] = "Mango",
    ["Color"] = Color3.fromRGB(255, 184, 69)
}
v8.Oblivion = {
    ["PriceMultiply"] = 8.5,
    ["Chance"] = 0,
    ["Display"] = "Oblivion",
    ["Color"] = Color3.fromRGB(255, 82, 47)
}
v8.Summer = {
    ["PriceMultiply"] = 6.2,
    ["Chance"] = 0,
    ["Display"] = "Summer",
    ["Color"] = Color3.fromRGB(255, 235, 123)
}
v8.Popsicle = {
    ["PriceMultiply"] = 8.16,
    ["Chance"] = 0,
    ["Display"] = "Popsicle",
    ["Color"] = Color3.fromRGB(0, 200, 255)
}
v8.Beachy = {
    ["PriceMultiply"] = 2,
    ["Chance"] = 0,
    ["Priority"] = 1,
    ["Display"] = "Beachy",
    ["Color"] = Color3.fromRGB(255, 217, 157)
}
v8.Nova = {
    ["PriceMultiply"] = 6,
    ["Chance"] = 0,
    ["Display"] = "Nova",
    ["Color"] = Color3.fromRGB(147, 120, 255)
}
v8["Nico\'s Nyantics"] = {
    ["PriceMultiply"] = 5,
    ["Chance"] = 0,
    ["Display"] = "Nico\'s Nyantics",
    ["Color"] = Color3.fromRGB(235, 184, 255)
}
v8.Skrunkly = {
    ["PriceMultiply"] = 2.5,
    ["Chance"] = 0,
    ["Display"] = "Skrunkly",
    ["Color"] = Color3.fromRGB(176, 170, 147)
}
v8.Nullified = {
    ["PriceMultiply"] = 5,
    ["Chance"] = 0,
    ["Display"] = "Nullified",
    ["Color"] = Color3.fromRGB(94, 255, 66),
    ["Priority"] = 100000
}
v8.Galactic = {
    ["PriceMultiply"] = 5,
    ["Chance"] = 0,
    ["Display"] = "Galactic",
    ["Color"] = Color3.fromRGB(207, 182, 106),
    ["Priority"] = 100000
}
v8.Spirit = {
    ["PriceMultiply"] = 5.2,
    ["Chance"] = 1.5,
    ["Display"] = "Spirit",
    ["Color"] = Color3.fromRGB(98, 81, 149)
}
v8.Lightened = {
    ["PriceMultiply"] = 1.01,
    ["Chance"] = 0,
    ["Display"] = "Lightened",
    ["Color"] = Color3.fromRGB(255, 248, 175)
}
v8.RainbowCluster = {
    ["PriceMultiply"] = 5,
    ["Chance"] = 0,
    ["Display"] = "Rainbow Cluster",
    ["Color"] = Color3.fromRGB(255, 147, 194)
}
v8.Mace = {
    ["PriceMultiply"] = 2,
    ["Chance"] = 0,
    ["Display"] = "Mace",
    ["Color"] = Color3.fromRGB(158, 93, 255)
}
v8.Tormented = {
    ["PriceMultiply"] = 6.66,
    ["Chance"] = 0,
    ["Display"] = "Tormented",
    ["Color"] = Color3.fromRGB(34, 27, 27)
}
v8.Surreal = {
    ["PriceMultiply"] = v5.ServerSharedRandom("SurrealMultiply"):NextInteger(0, 8),
    ["Chance"] = 0,
    ["Display"] = "Surreal",
    ["Color"] = Color3.fromRGB(214, 214, 214)
}
v8.Chilled = {
    ["PriceMultiply"] = 6,
    ["Chance"] = 0,
    ["Display"] = "Chilled",
    ["Color"] = Color3.fromRGB(172, 232, 232)
}
v8.Glacial = {
    ["PriceMultiply"] = 8,
    ["Chance"] = 0,
    ["Display"] = "Glacial",
    ["Color"] = Color3.fromRGB(216, 255, 254)
}
v8.Rooted = {
    ["PriceMultiply"] = 0.66,
    ["Chance"] = 0,
    ["Display"] = "Rooted",
    ["Priority"] = 2,
    ["Color"] = Color3.fromRGB(47, 58, 32)
}
v8.Botanic = {
    ["PriceMultiply"] = 2.5,
    ["Chance"] = 0,
    ["Display"] = "Botanic",
    ["Color"] = Color3.fromRGB(145, 255, 128)
}
v8.Venomous = {
    ["PriceMultiply"] = 6.5,
    ["Chance"] = 0,
    ["Display"] = "Venomous",
    ["Color"] = Color3.fromRGB(129, 90, 177)
}
v8.Chlorowoken = {
    ["PriceMultiply"] = 8,
    ["Chance"] = 0,
    ["Display"] = "Chlorowoken",
    ["Color"] = Color3.fromRGB(82, 255, 70)
}
v8.Soulless = {
    ["PriceMultiply"] = 0.66,
    ["Chance"] = 0,
    ["Display"] = "Soulless",
    ["Priority"] = 2,
    ["Color"] = Color3.fromRGB(146, 83, 197)
}
v8.Wisp = {
    ["PriceMultiply"] = 5.5,
    ["Chance"] = 0,
    ["Display"] = "Wisp",
    ["Color"] = Color3.fromRGB(2, 230, 255)
}
v8.Haunted = {
    ["PriceMultiply"] = 6,
    ["Chance"] = 0,
    ["Display"] = "Haunted",
    ["Color"] = Color3.fromRGB(144, 88, 60)
}
v8.Spectral = {
    ["PriceMultiply"] = 8,
    ["Chance"] = 0,
    ["Display"] = "Spectral",
    ["Color"] = Color3.fromRGB(92, 59, 121)
}
v8.Golden = {
    ["PriceMultiply"] = 2,
    ["Chance"] = 0,
    ["Display"] = "Golden",
    ["Color"] = Color3.fromRGB(255, 234, 0)
}
v8.Fortune = {
    ["PriceMultiply"] = 6,
    ["Chance"] = 0,
    ["Display"] = "Fortune",
    ["Color"] = Color3.fromRGB(255, 204, 0)
}
v8.Lustrous = {
    ["PriceMultiply"] = 7,
    ["Chance"] = 0,
    ["Display"] = "Lustrous",
    ["Color"] = Color3.fromRGB(255, 232, 147)
}
v8.Radiant = {
    ["PriceMultiply"] = 8,
    ["Chance"] = 0,
    ["Display"] = "Radiant",
    ["Color"] = Color3.fromRGB(176, 174, 147)
}
v8["Siren\'s Spite"] = {
    ["PriceMultiply"] = 5,
    ["Chance"] = 0,
    ["Display"] = "Siren\'s Spite",
    ["Color"] = Color3.fromRGB(176, 0, 0)
}
v8.Evil = {
    ["PriceMultiply"] = 6.5,
    ["Chance"] = 0,
    ["Display"] = "Evil",
    ["Color"] = Color3.fromRGB(48, 0, 0)
}
v8.Serene = {
    ["PriceMultiply"] = 8.5,
    ["Chance"] = 0,
    ["Display"] = "Serene",
    ["Color"] = Color3.fromRGB(0, 255, 225)
}
v8.Quiet = {
    ["PriceMultiply"] = 3,
    ["Chance"] = 0,
    ["Display"] = "Quiet",
    ["Color"] = Color3.fromRGB(28, 56, 71)
}
v8.Nocturnal_Night = {
    ["PriceMultiply"] = 8,
    ["Chance"] = 0,
    ["Display"] = "Nocturnal",
    ["Color"] = Color3.fromRGB(20, 20, 20)
}
v8.Nocturnal_Day = {
    ["PriceMultiply"] = 7,
    ["Chance"] = 0,
    ["Display"] = "Diurnal",
    ["Color"] = Color3.fromRGB(122, 122, 122)
}
v8.Flora = {
    ["PriceMultiply"] = 7,
    ["Chance"] = 0,
    ["Display"] = "Flora",
    ["Color"] = Color3.fromRGB(218, 71, 255)
}
v8.Infernal = {
    ["PriceMultiply"] = 7,
    ["Chance"] = 0,
    ["Display"] = "Infernal",
    ["Color"] = Color3.fromRGB(255, 44, 2)
}
v8.Patriotic = {
    ["PriceMultiply"] = 7.4,
    ["Chance"] = 0,
    ["Display"] = "Patriotic",
    ["Color"] = Color3.fromRGB(0, 0, 255)
}
v8.Snowy = {
    ["PriceMultiply"] = 6,
    ["Chance"] = 0,
    ["Display"] = "Snowy",
    ["Color"] = Color3.fromRGB(213, 232, 255)
}
v8.Smurf = {
    ["PriceMultiply"] = 2,
    ["Chance"] = 0,
    ["Priority"] = 1,
    ["Display"] = "Smurf",
    ["Color"] = Color3.fromRGB(0, 167, 239)
}
v8.Puritas = {
    ["PriceMultiply"] = 8.7,
    ["Chance"] = 0,
    ["Display"] = "Puritas",
    ["Color"] = Color3.fromRGB(172, 221, 239)
}
v8.Sacratus = {
    ["PriceMultiply"] = 7,
    ["Chance"] = 0,
    ["Display"] = "Sacratus",
    ["Color"] = Color3.fromRGB(107, 142, 255)
}
v8.Levitas = {
    ["PriceMultiply"] = 5,
    ["Chance"] = 0,
    ["Display"] = "Levitas",
    ["Color"] = Color3.fromRGB(181, 192, 255)
}
v8.Gemstone = {
    ["PriceMultiply"] = 5,
    ["Chance"] = 0,
    ["Display"] = "Gemstone",
    ["Color"] = Color3.fromRGB(167, 0, 239)
}
v8.Oscar = {
    ["PriceMultiply"] = 6.4,
    ["Chance"] = 0,
    ["Display"] = "Oscar",
    ["Color"] = Color3.fromRGB(171, 0, 26)
}
v8.Carrot = {
    ["PriceMultiply"] = 5,
    ["Chance"] = 0,
    ["Display"] = "Carrot",
    ["Color"] = Color3.fromRGB(255, 162, 0)
}
v8.Umbra = {
    ["PriceMultiply"] = 9,
    ["Chance"] = 0,
    ["Display"] = "Umbra",
    ["Color"] = Color3.fromRGB(232, 159, 0)
}
v8.LEGO = {
    ["PriceMultiply"] = 3,
    ["Chance"] = 0,
    ["Priority"] = 1,
    ["Display"] = "Awesome",
    ["Color"] = Color3.fromRGB(255, 0, 0)
}
v8.Brother = {
    ["PriceMultiply"] = 3,
    ["Chance"] = 0,
    ["Display"] = "Brother",
    ["Color"] = Color3.fromRGB(0, 251, 255)
}
v8.Sanguine = {
    ["PriceMultiply"] = 5,
    ["Chance"] = 0,
    ["Display"] = "Sanguine",
    ["Color"] = Color3.fromRGB(74, 8, 8)
}
v8.Chaotic = {
    ["PriceMultiply"] = 6.2,
    ["Chance"] = 0,
    ["Display"] = "Chaotic",
    ["Color"] = Color3.fromRGB(20, 19, 22)
}
v8.Lost = {
    ["PriceMultiply"] = 4.5,
    ["Chance"] = 0,
    ["Display"] = "Lost",
    ["Color"] = Color3.fromRGB(160, 255, 131)
}
v8["Moon-Kissed"] = {
    ["PriceMultiply"] = 4,
    ["Chance"] = 0,
    ["Display"] = "Moon-Kissed",
    ["Color"] = Color3.fromRGB(125, 225, 255)
}
v8.Ember = {
    ["PriceMultiply"] = 3,
    ["Chance"] = 0,
    ["Display"] = "Ember",
    ["Color"] = Color3.fromRGB(255, 170, 0)
}
v8.Cracked = {
    ["PriceMultiply"] = 3,
    ["Chance"] = 0,
    ["Display"] = "Cracked",
    ["Color"] = Color3.fromRGB(36, 0, 54)
}
v8.Emberflame = {
    ["PriceMultiply"] = 5,
    ["Chance"] = 0,
    ["Display"] = "Emberflame",
    ["Color"] = Color3.fromRGB(255, 170, 0)
}
v8["Cursed Touch"] = {
    ["PriceMultiply"] = 5,
    ["Chance"] = 0,
    ["Display"] = "Cursed Touch",
    ["Color"] = Color3.fromRGB(0, 255, 0)
}
v8.Bloom = {
    ["PriceMultiply"] = 4,
    ["Chance"] = 0,
    ["Display"] = "Bloom",
    ["Color"] = Color3.fromRGB(85, 85, 127)
}
v8["Mother Nature"] = {
    ["PriceMultiply"] = 3,
    ["Chance"] = 0,
    ["Display"] = "Mother Nature",
    ["Color"] = Color3.fromRGB(170, 170, 255)
}
v8["Green Leaf"] = {
    ["PriceMultiply"] = 3,
    ["Chance"] = 0,
    ["Display"] = "Green Leaf",
    ["Color"] = Color3.fromRGB(85, 170, 0)
}
v8["Brown Wood"] = {
    ["PriceMultiply"] = 3,
    ["Chance"] = 0,
    ["Display"] = "Brown Wood",
    ["Color"] = Color3.fromRGB(143, 96, 57)
}
v8.Oak = {
    ["PriceMultiply"] = 2.3,
    ["Chance"] = 0,
    ["Priority"] = 1,
    ["Display"] = "Oak",
    ["Color"] = Color3.fromRGB(118, 83, 54)
}
v8.Cement = {
    ["PriceMultiply"] = 1.5,
    ["Chance"] = 0,
    ["Display"] = "Cement",
    ["Color"] = Color3.fromRGB(156, 156, 156)
}
v8.Female = {
    ["PriceMultiply"] = 1,
    ["Chance"] = 0,
    ["Display"] = "Female",
    ["Priority"] = 2,
    ["Color"] = Color3.fromRGB(255, 0, 255)
}
v8.Zora = {
    ["PriceMultiply"] = 1.25,
    ["Chance"] = 0,
    ["Priority"] = 1,
    ["Display"] = "Mission Specialist",
    ["Color"] = Color3.fromRGB(255, 85, 0)
}
v8.Duncan = {
    ["PriceMultiply"] = 1.25,
    ["Chance"] = 0,
    ["Priority"] = 1,
    ["Display"] = "Fixer",
    ["Color"] = Color3.fromRGB(0, 85, 255)
}
v8.Henry = {
    ["PriceMultiply"] = 1.25,
    ["Chance"] = 0,
    ["Priority"] = 1,
    ["Display"] = "Paleontologist",
    ["Color"] = Color3.fromRGB(170, 0, 0)
}
v8.Cursed = {
    ["PriceMultiply"] = 4,
    ["Chance"] = 0,
    ["Display"] = "Cursed",
    ["Color"] = Color3.fromRGB(102, 255, 138)
}
v8["Ashen Fortune"] = {
    ["PriceMultiply"] = 5,
    ["Chance"] = 0,
    ["Display"] = "Ashen Fortune",
    ["Color"] = Color3.fromRGB(255, 170, 0)
}
v8.Prismize = {
    ["PriceMultiply"] = 5.5,
    ["Chance"] = 0,
    ["Display"] = "Prismize",
    ["Color"] = Color3.fromRGB(41, 0, 62)
}
v8["King\226\128\153s Blessing"] = {
    ["PriceMultiply"] = 5.5,
    ["Chance"] = 0,
    ["Display"] = "King\'s Blessing",
    ["Color"] = Color3.fromRGB(255, 255, 127)
}
v8["Tentacle Surge"] = {
    ["PriceMultiply"] = 7.8,
    ["Chance"] = 0,
    ["Display"] = "Tentacle Surge",
    ["Color"] = Color3.fromRGB(170, 170, 255)
}
v8["Electric Shock"] = {
    ["PriceMultiply"] = 3.5,
    ["Chance"] = 0,
    ["Display"] = "Electric Shock",
    ["Color"] = Color3.fromRGB(138, 22, 221)
}
v8.Charred = {
    ["PriceMultiply"] = 0.5,
    ["Chance"] = 0,
    ["Display"] = "Charred",
    ["Priority"] = 1,
    ["Color"] = Color3.fromRGB(76, 76, 76)
}
v8.Crystalized = {
    ["PriceMultiply"] = 3.5,
    ["Chance"] = 0,
    ["Display"] = "Crystalized",
    ["Color"] = Color3.fromRGB(255, 114, 20)
}
v8.Heavenly = {
    ["PriceMultiply"] = 6,
    ["Chance"] = 0,
    ["Display"] = "Heavenly",
    ["Color"] = Color3.fromRGB(255, 248, 197)
}
v8.Sleet = {
    ["PriceMultiply"] = 2.4,
    ["Chance"] = 0,
    ["Display"] = "Sleet",
    ["Color"] = Color3.fromRGB(67, 76, 106)
}
v8.Blighted = {
    ["PriceMultiply"] = 3,
    ["Chance"] = 0,
    ["Display"] = "Blighted",
    ["Color"] = Color3.fromRGB(106, 80, 207)
}
v8.Albino = {
    ["PriceMultiply"] = 1.2,
    ["Chance"] = 30,
    ["Display"] = "Albino",
    ["Color"] = Color3.fromRGB(252, 254, 255)
}
v8.Darkened = {
    ["PriceMultiply"] = 1.5,
    ["Chance"] = 30,
    ["Display"] = "Darkened",
    ["Color"] = Color3.fromRGB(58, 61, 62)
}
v8.Electric = {
    ["PriceMultiply"] = 2.1,
    ["Chance"] = 15,
    ["Display"] = "Electric",
    ["Color"] = Color3.fromRGB(255, 245, 99)
}
v8.Glossy = {
    ["PriceMultiply"] = 1.6,
    ["Chance"] = 25,
    ["Display"] = "Glossy",
    ["Color"] = Color3.fromRGB(146, 226, 255)
}
v8.Midas = {
    ["PriceMultiply"] = 2.5,
    ["Chance"] = 3,
    ["Display"] = "Midas",
    ["Color"] = Color3.fromRGB(255, 154, 71)
}
v8.Silver = {
    ["PriceMultiply"] = 1.8,
    ["Chance"] = 15,
    ["Display"] = "Silver",
    ["Color"] = Color3.fromRGB(206, 238, 255)
}
v8.Translucent = {
    ["PriceMultiply"] = 1.3,
    ["Chance"] = 20,
    ["Display"] = "Translucent",
    ["Color"] = Color3.fromRGB(135, 255, 191)
}
v8.Negative = {
    ["PriceMultiply"] = 1.3,
    ["Chance"] = 30,
    ["Display"] = "Negative",
    ["Color"] = Color3.fromRGB(117, 103, 226)
}
v8.Mythical = {
    ["PriceMultiply"] = 5.5,
    ["Chance"] = 1,
    ["Display"] = "Mythical",
    ["Color"] = Color3.fromRGB(255, 82, 148)
}
v8.Frozen = {
    ["PriceMultiply"] = 1.5,
    ["Chance"] = 10,
    ["Display"] = "Frozen",
    ["Color"] = Color3.fromRGB(131, 255, 230)
}
v8.Atlantean = {
    ["PriceMultiply"] = 4,
    ["Chance"] = 0,
    ["Display"] = "Atlantean",
    ["Color"] = Color3.fromRGB(34, 153, 149)
}
v8.Mosaic = {
    ["PriceMultiply"] = 1.5,
    ["Chance"] = 10,
    ["Display"] = "Mosaic",
    ["Color"] = Color3.fromRGB(251, 193, 255)
}
v8.Aurora = {
    ["PriceMultiply"] = 6.5,
    ["Chance"] = 0,
    ["Display"] = "Aurora",
    ["Color"] = Color3.fromRGB(78, 255, 217)
}
v8.Nuclear = {
    ["PriceMultiply"] = 6,
    ["Chance"] = 0,
    ["Display"] = "Nuclear",
    ["Color"] = Color3.fromRGB(0, 255, 0)
}
v8.Hexed = {
    ["PriceMultiply"] = 3,
    ["Chance"] = 15,
    ["Display"] = "Hexed",
    ["Color"] = Color3.fromRGB(166, 0, 0)
}
v8.Sunken = {
    ["PriceMultiply"] = 6.3,
    ["Chance"] = 0,
    ["Display"] = "Sunken",
    ["Priority"] = 1,
    ["Color"] = Color3.fromRGB(23, 93, 255)
}
v8.Greedy = {
    ["PriceMultiply"] = 5,
    ["Chance"] = 1.5,
    ["Display"] = "Greedy",
    ["Color"] = Color3.fromRGB(255, 194, 38)
}
v8.Tidal = {
    ["PriceMultiply"] = 7,
    ["Chance"] = 0,
    ["Display"] = "Tidal",
    ["Color"] = Color3.fromRGB(47, 182, 255)
}
v8.Lunar = {
    ["PriceMultiply"] = 2.5,
    ["Chance"] = 20,
    ["Display"] = "Lunar",
    ["Color"] = Color3.fromRGB(189, 169, 255)
}
v8.Abyssal = {
    ["SpecificZones"] = { "The Depths", "The Depths - Serpent" },
    ["PriceMultiply"] = 5.5,
    ["Chance"] = 5,
    ["Display"] = "Abyssal",
    ["Color"] = Color3.fromRGB(12, 15, 212)
}
v8.Fungal = {
    ["PriceMultiply"] = 4,
    ["Chance"] = 0,
    ["Display"] = "Fungal",
    ["Color"] = Color3.fromRGB(138, 255, 106)
}
v8.Solarblaze = {
    ["PriceMultiply"] = 3,
    ["Chance"] = 0,
    ["Display"] = "Solarblaze",
    ["Color"] = Color3.fromRGB(255, 106, 0)
}
v8.Celestial = {
    ["PriceMultiply"] = 4,
    ["Chance"] = 0,
    ["Display"] = "Celestial",
    ["Color"] = Color3.fromRGB(255, 226, 108)
}
v8.Fossilized = {
    ["PriceMultiply"] = 3.3,
    ["Chance"] = 4,
    ["Display"] = "Fossilized",
    ["Color"] = Color3.fromRGB(208, 181, 255)
}
v8.Amber = {
    ["SpecificZones"] = {
        "Ancient Isle Ocean",
        "Ancient Isle Pond",
        "Ancient Isle Waterfall",
        "Ancient Archives",
        "Megalodon Default",
        "Megalodon Ancient"
    },
    ["PriceMultiply"] = 1.2,
    ["Chance"] = 8,
    ["Display"] = "Amber",
    ["Color"] = Color3.fromRGB(255, 116, 51)
}
v8.Scorched = {
    ["PriceMultiply"] = 3,
    ["Chance"] = 9,
    ["Display"] = "Scorched",
    ["Color"] = Color3.fromRGB(71, 30, 17)
}
v8.Spicy = {
    ["PriceMultiply"] = 8,
    ["Chance"] = 0,
    ["Display"] = "Spicy",
    ["Color"] = Color3.fromRGB(71, 9, 9)
}
v8.Purified = {
    ["PriceMultiply"] = 2.5,
    ["Chance"] = 0,
    ["Display"] = "Purified",
    ["Color"] = Color3.fromRGB(110, 255, 120)
}
v8.Revitalized = {
    ["PriceMultiply"] = 4,
    ["Chance"] = 0,
    ["Display"] = "Revitalized",
    ["Color"] = Color3.fromRGB(164, 255, 170)
}
v8.Seasonal = {
    ["PriceMultiply"] = 1.3,
    ["Chance"] = 0,
    ["Display"] = "Seasonal",
    ["Color"] = Color3.fromRGB(225, 37, 37)
}
v8.Aurous = {
    ["PriceMultiply"] = 1.5,
    ["Chance"] = 0,
    ["Display"] = "Aurous",
    ["Color"] = Color3.fromRGB(115, 10, 10)
}
v8.Aurelian = {
    ["PriceMultiply"] = 2,
    ["Chance"] = 0,
    ["Display"] = "Aurelian",
    ["Color"] = Color3.fromRGB(144, 39, 7)
}
v8.Studded = {
    ["PriceMultiply"] = 1.8,
    ["Chance"] = 0,
    ["Display"] = "Studded",
    ["Color"] = Color3.fromRGB(163, 162, 165)
}
v8.Aureate = {
    ["PriceMultiply"] = 2.5,
    ["Chance"] = 0,
    ["Display"] = "Aureate",
    ["Color"] = Color3.fromRGB(140, 62, 7)
}
v8.Aurulent = {
    ["PriceMultiply"] = 3,
    ["Chance"] = 0,
    ["Display"] = "Aurulent",
    ["Color"] = Color3.fromRGB(162, 92, 6)
}
v8.Aureolin = {
    ["PriceMultiply"] = 3.5,
    ["Chance"] = 0,
    ["Display"] = "Aureolin",
    ["Color"] = Color3.fromRGB(220, 154, 1)
}
v8.Sandstormy = {
    ["PriceMultiply"] = 5,
    ["Chance"] = 0,
    ["Display"] = "Sandstormy",
    ["Color"] = Color3.fromRGB(255, 219, 187)
}
v8.Sandy = {
    ["PriceMultiply"] = 1.2,
    ["Chance"] = 0,
    ["Display"] = "Sandy",
    ["Color"] = Color3.fromRGB(255, 195, 161)
}
v8.Blessed = {
    ["PriceMultiply"] = 8.5,
    ["Chance"] = 0,
    ["Display"] = "Blessed",
    ["Color"] = Color3.fromRGB(249, 255, 211)
}
v8.Unsellable = {
    ["PriceMultiply"] = 0,
    ["Chance"] = 0,
    ["Display"] = "Unsellable",
    ["Color"] = Color3.fromRGB(255, 76, 76),
    ["Priority"] = 100,
    ["Untradeable"] = true
}
v8.Subspace = {
    ["PriceMultiply"] = 6,
    ["Chance"] = 0,
    ["Display"] = "Subspace",
    ["Color"] = Color3.fromRGB(255, 0, 200)
}
v8.Anomalous = {
    ["PriceMultiply"] = 5.55,
    ["Chance"] = 0,
    ["Priority"] = 0.5,
    ["Display"] = "Anomalous",
    ["Color"] = Color3.fromRGB(255, 43, 43)
}
v8.Glyphed = {
    ["PriceMultiply"] = 5.2,
    ["Chance"] = 0,
    ["Display"] = "Glyphed",
    ["Priority"] = 1,
    ["Color"] = Color3.fromRGB(109, 135, 143),
    ["Untradeable"] = true,
    ["BlockCatchMessage"] = true
}
v8.Harmonized = {
    ["PriceMultiply"] = 4.2,
    ["Chance"] = 0,
    ["Display"] = "Harmonized",
    ["Color"] = ColorSequence.new(Color3.fromRGB(178, 202, 255), Color3.fromRGB(218, 175, 255))
}
v8.Mesmerized = {
    ["PriceMultiply"] = 3.2,
    ["Chance"] = 0,
    ["Priority"] = 1,
    ["Display"] = "Mesmerized",
    ["Color"] = Color3.fromRGB(255, 230, 3),
    ["Untradeable"] = true,
    ["BlockCatchMessage"] = true
}
v8.Supersonic = {
    ["PriceMultiply"] = 8.01,
    ["Chance"] = 0,
    ["Display"] = "Supersonic",
    ["Color"] = ColorSequence.new(Color3.fromRGB(255, 171, 171), Color3.fromRGB(255, 83, 83)),
    ["Untradeable"] = true,
    ["BlockCatchMessage"] = true
}
v8.Sinister = {
    ["PriceMultiply"] = 2.9,
    ["Chance"] = 0,
    ["Priority"] = 1,
    ["Display"] = "Sinister",
    ["Color"] = Color3.fromRGB(200, 88, 44)
}
v8.Ghastly = {
    ["PriceMultiply"] = 3,
    ["Chance"] = 0,
    ["Priority"] = 1,
    ["Display"] = "Ghastly",
    ["Color"] = Color3.fromRGB(97, 255, 94)
}
v8.Jolly = {
    ["PriceMultiply"] = 2.2,
    ["Chance"] = 0,
    ["Priority"] = 1,
    ["Display"] = "Jolly",
    ["Color"] = Color3.fromRGB(16, 94, 19)
}
v8.Festive = {
    ["PriceMultiply"] = 2.4,
    ["Chance"] = 0,
    ["Priority"] = 1,
    ["Display"] = "Festive",
    ["Color"] = Color3.fromRGB(255, 124, 124)
}
v8.Minty = {
    ["PriceMultiply"] = 3.2,
    ["Chance"] = 0,
    ["Display"] = "Minty",
    ["Color"] = Color3.fromRGB(128, 255, 185)
}
v8.Firework = {
    ["PriceMultiply"] = 4,
    ["Chance"] = 0,
    ["Priority"] = 1,
    ["Display"] = "Firework",
    ["Color"] = Color3.fromRGB(135, 126, 255)
}
v8.Wrath = {
    ["PriceMultiply"] = 4.5,
    ["Chance"] = 0,
    ["Display"] = "Wrath",
    ["Color"] = Color3.fromRGB(0, 170, 127)
}
v8.Lightning = {
    ["PriceMultiply"] = 2,
    ["Chance"] = 0,
    ["Display"] = "Lightning",
    ["Color"] = Color3.fromRGB(229, 183, 0)
}
v8.Astral = {
    ["PriceMultiply"] = 3,
    ["Chance"] = 0,
    ["Display"] = "Astral",
    ["Color"] = Color3.fromRGB(115, 0, 255)
}
v8.Stardust = {
    ["PriceMultiply"] = 4,
    ["Chance"] = 0,
    ["Display"] = "Stardust",
    ["Color"] = Color3.fromRGB(0, 34, 255)
}
v8.Clover = {
    ["PriceMultiply"] = 4.5,
    ["Chance"] = 0,
    ["Priority"] = 1,
    ["Display"] = "Clover",
    ["Color"] = Color3.fromRGB(123, 255, 0)
}
v8.Blarney = {
    ["PriceMultiply"] = 4.5,
    ["Chance"] = 0,
    ["Priority"] = 1,
    ["Display"] = "Blarney",
    ["Color"] = Color3.fromRGB(56, 159, 19)
}
v8.Chocolate = {
    ["PriceMultiply"] = 2.5,
    ["Chance"] = 0,
    ["Priority"] = 3,
    ["Display"] = "Chocolate",
    ["Color"] = Color3.fromRGB(108, 77, 65)
}
v8.Doomsday = {
    ["PriceMultiply"] = 4,
    ["Chance"] = 0,
    ["Display"] = "Doomsday",
    ["Color"] = Color3.fromRGB(255, 95, 0)
}
v8.Easter = {
    ["PriceMultiply"] = 4,
    ["Chance"] = 0,
    ["Priority"] = 1,
    ["Display"] = "Easter",
    ["Color"] = Color3.fromRGB(217, 183, 255)
}
v8["Mila\'s Magic"] = {
    ["PriceMultiply"] = 0.5,
    ["Chance"] = 0,
    ["Display"] = "Charred",
    ["Color"] = Color3.fromRGB(76, 76, 76),
    ["Untradeable"] = true
}
v8.Red = {
    ["PriceMultiply"] = 1,
    ["Chance"] = 0,
    ["Display"] = "Red",
    ["Priority"] = 2,
    ["Color"] = Color3.fromRGB(255, 52, 66)
}
v8.Green = {
    ["PriceMultiply"] = 1,
    ["Chance"] = 0,
    ["Display"] = "Green",
    ["Priority"] = 2,
    ["Color"] = Color3.fromRGB(92, 255, 106)
}
v8.Blue = {
    ["PriceMultiply"] = 1,
    ["Chance"] = 0,
    ["Display"] = "Blue",
    ["Priority"] = 2,
    ["Color"] = Color3.fromRGB(71, 169, 255)
}
v8.Pink = {
    ["PriceMultiply"] = 1,
    ["Chance"] = 0,
    ["Display"] = "Pink",
    ["Priority"] = 2,
    ["Color"] = Color3.fromRGB(255, 103, 252)
}
v8.Yellow = {
    ["PriceMultiply"] = 1,
    ["Chance"] = 0,
    ["Display"] = "Yellow",
    ["Priority"] = 2,
    ["Color"] = Color3.fromRGB(255, 231, 96)
}
v8.Bubblegum = {
    ["PriceMultiply"] = 2,
    ["Chance"] = 0,
    ["Display"] = "Bubblegum",
    ["Color"] = Color3.fromRGB(255, 99, 208)
}
v8.Lumpy = {
    ["PriceMultiply"] = 2,
    ["Chance"] = 0,
    ["Display"] = "Lumpy",
    ["Color"] = Color3.fromRGB(160, 105, 255)
}
v8.Rockstar = {
    ["PriceMultiply"] = 2,
    ["Chance"] = 0,
    ["Display"] = "Rockstar",
    ["Color"] = Color3.fromRGB(188, 35, 35)
}
v8["Colossal Ink"] = {
    ["PriceMultiply"] = 5,
    ["Chance"] = 0,
    ["Display"] = "Colossal Ink",
    ["Color"] = Color3.fromRGB(221, 241, 255),
    ["Priority"] = 4,
    ["CommerceMutation"] = true
}
v8.Neon = {
    ["PriceMultiply"] = 1,
    ["Chance"] = 0,
    ["Display"] = "Neon",
    ["Color"] = Color3.fromRGB(255, 229, 126),
    ["Priority"] = 4,
    ["CommerceMutation"] = true
}
v8.Lobster = {
    ["PriceMultiply"] = 5,
    ["Chance"] = 0,
    ["Display"] = "Lobster",
    ["Color"] = Color3.fromRGB(255, 60, 42)
}
v8.BlueMoon = {
    ["PriceMultiply"] = 4,
    ["Chance"] = 0,
    ["Display"] = "Blue Moon",
    ["Color"] = Color3.fromRGB(78, 149, 255)
}
v8.Rainbow = {
    ["PriceMultiply"] = 6,
    ["Chance"] = 0,
    ["Display"] = "Rainbow",
    ["Color"] = Color3.fromRGB(255, 158, 234)
}
return v8
