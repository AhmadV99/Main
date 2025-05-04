--[[local cc = require(game:GetService("ReplicatedStorage").Shared.Data.Pets)

local DataPets = "{\n"

for i, v in next, cc do
  DataPets = DataPets .. '  ["' .. i .. '"] = {\n'

  for _, v in next, v do
    if typeof(v) == "string" then
      DataPets = DataPets .. '    ["' .. tostring(_) .. '"] = "' .. v .. '", \n'
    elseif typeof(v) == "table" then
      DataPets = DataPets .. '    ["' .. tostring(_) .. '"] = {\n'
      for __, __1 in next, v do
        DataPets = DataPets .. '      ["' .. tostring(__) .. '"] = "' .. __1 .. '",\n'
      end
      DataPets = DataPets .. "    },\n"
    end
  end

  DataPets = DataPets .. "  },\n"
end

DataPets = DataPets .. "}"
setclipboard(DataPets)]]

return {
  ["Flying Gem"] = {
    ["Stats"] = {
      ["Bubbles"] = "50",
      ["Gems"] = "4.5",
      ["Coins"] = "35",
    },
    ["Rarity"] = "Legendary", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://137058516278425",
      ["Shiny"] = "rbxassetid://138545612281855",
    },
    ["Tag"] = "Exclusive Pet", 
  },
  ["Piggy"] = {
    ["Stats"] = {
      ["Bubbles"] = "11",
      ["Coins"] = "6",
    },
    ["Rarity"] = "Rare", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://126005209800286",
      ["Shiny"] = "rbxassetid://100449039008111",
    },
    ["Egg"] = "Iceshard Egg", 
  },
  ["Bionic Shard"] = {
    ["Stats"] = {
      ["Bubbles"] = "1550",
      ["Gems"] = "32",
      ["Tickets"] = "1900",
    },
    ["Rarity"] = "Legendary", 
    ["Egg"] = "Cyber Egg", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://113926773562723",
      ["Mythic"] = "rbxassetid://91891367979946",
      ["MythicShiny"] = "rbxassetid://112797928273116",
      ["Shiny"] = "rbxassetid://99439972902415",
    },
  },
  ["Easter Egg"] = {
    ["Stats"] = {
      ["Bubbles"] = "100",
      ["Gems"] = "2.2",
      ["Coins"] = "120",
    },
    ["Rarity"] = "Unique", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://97739272143723",
      ["Shiny"] = "rbxassetid://100300586984302",
    },
    ["Egg"] = "Throwback Egg", 
  },
  ["Night Crawler"] = {
    ["Stats"] = {
      ["Bubbles"] = "95",
      ["Coins"] = "105",
    },
    ["Rarity"] = "Rare", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://131225854531088",
      ["Shiny"] = "rbxassetid://87587834256377",
    },
    ["Egg"] = "Nightmare Egg", 
  },
  ["Space Mouse"] = {
    ["Stats"] = {
      ["Bubbles"] = "16",
      ["Coins"] = "14",
    },
    ["Rarity"] = "Common", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://135043754095523",
      ["Shiny"] = "rbxassetid://112742089216721",
    },
    ["Egg"] = "Lunar Egg", 
  },
  ["Bunny Doggy"] = {
    ["Stats"] = {
      ["Bubbles"] = "50",
      ["Gems"] = "1.5",
      ["Coins"] = "62",
    },
    ["Rarity"] = "Common", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://126178131383232",
      ["Shiny"] = "rbxassetid://125640287196502",
    },
    ["Egg"] = "Bunny Egg", 
  },
  ["Kitsune"] = {
    ["Stats"] = {
      ["Bubbles"] = "1300",
      ["Gems"] = "22",
      ["Coins"] = "1800",
    },
    ["Rarity"] = "Legendary", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://137454930152011",
      ["Shiny"] = "rbxassetid://81467799917609",
    },
    ["Tag"] = "Reward Pet", 
  },
  ["Bunny"] = {
    ["Stats"] = {
      ["Bubbles"] = "2",
      ["Coins"] = "1.2",
    },
    ["Rarity"] = "Unique", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://124868139159568",
      ["Shiny"] = "rbxassetid://94898052528332",
    },
    ["Egg"] = "Common Egg", 
  },
  ["ROUND"] = {
    ["Stats"] = {
      ["Bubbles"] = "1500",
      ["Gems"] = "22",
      ["Coins"] = "1900",
    },
    ["Rarity"] = "Legendary", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://137370752121359",
      ["Mythic"] = "rbxassetid://114673821025917",
      ["MythicShiny"] = "rbxassetid://74941803085231",
      ["Shiny"] = "rbxassetid://123907106583225",
    },
    ["Egg"] = "Silly Egg", 
    ["Tag"] = "ðŸ˜‚SillyðŸ˜‚", 
  },
  ["Sweet Treat"] = {
    ["Stats"] = {
      ["Bubbles"] = "620",
      ["Gems"] = "12",
      ["Coins"] = "725",
    },
    ["Rarity"] = "Legendary", 
    ["Egg"] = "Pastel Egg", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://78848637998928",
      ["Mythic"] = "rbxassetid://101958456373333",
      ["MythicShiny"] = "rbxassetid://125017252768987",
      ["Shiny"] = "rbxassetid://84518745196741",
    },
  },
  ["Ice Kitty"] = {
    ["Stats"] = {
      ["Bubbles"] = "4",
      ["Coins"] = "3",
    },
    ["Rarity"] = "Common", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://122617771322422",
      ["Shiny"] = "rbxassetid://108038404921084",
    },
    ["Egg"] = "Iceshard Egg", 
  },
  ["Emerald Golem"] = {
    ["Stats"] = {
      ["Bubbles"] = "45",
      ["Coins"] = "25",
    },
    ["Rarity"] = "Legendary", 
    ["Egg"] = "Spikey Egg", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://117943061949912",
      ["Mythic"] = "rbxassetid://71364911907818",
      ["MythicShiny"] = "rbxassetid://76908143137824",
      ["Shiny"] = "rbxassetid://130080332987186",
    },
  },
  ["Deer"] = {
    ["Stats"] = {
      ["Bubbles"] = "5",
      ["Coins"] = "3.5",
    },
    ["Rarity"] = "Common", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://117640871111838",
      ["Shiny"] = "rbxassetid://74893204557931",
    },
    ["Egg"] = "Iceshard Egg", 
  },
  ["Demon Doggy"] = {
    ["Stats"] = {
      ["Bubbles"] = "35",
      ["Coins"] = "32",
    },
    ["Rarity"] = "Common", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://101269692150333",
      ["Shiny"] = "rbxassetid://127440148513684",
    },
    ["Egg"] = "Nightmare Egg", 
  },
  ["Yellow Fox"] = {
    ["Stats"] = {
      ["Bubbles"] = "120",
      ["Gems"] = "1.75",
      ["Coins"] = "145",
    },
    ["Rarity"] = "Rare", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://125905911945628",
      ["Shiny"] = "rbxassetid://133884608297595",
    },
    ["Egg"] = "Rainbow Egg", 
  },
  ["Game Doggy"] = {
    ["Stats"] = {
      ["Bubbles"] = "1",
      ["Tickets"] = "1.1",
    },
    ["Rarity"] = "Common", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://90643252257374",
      ["Shiny"] = "rbxassetid://107491835763520",
    },
    ["Egg"] = "Showman Egg", 
  },
  ["Dark Bat"] = {
    ["Stats"] = {
      ["Bubbles"] = "25",
      ["Coins"] = "12",
    },
    ["Rarity"] = "Unique", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://113799451574025",
      ["Shiny"] = "rbxassetid://80134626584546",
    },
    ["Egg"] = "Crystal Egg", 
  },
  ["Demon"] = {
    ["Stats"] = {
      ["Bubbles"] = "25",
      ["Coins"] = "20",
    },
    ["Rarity"] = "Epic", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://71888531838305",
      ["Shiny"] = "rbxassetid://96157978621758",
    },
    ["Egg"] = "Magma Egg", 
  },
  ["Green Angel"] = {
    ["Stats"] = {
      ["Bubbles"] = "225",
      ["Gems"] = "2",
      ["Coins"] = "285",
    },
    ["Rarity"] = "Epic", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://75803022621540",
      ["Shiny"] = "rbxassetid://95455922946139",
    },
    ["Egg"] = "Rainbow Egg", 
  },
  ["Hell Dragon"] = {
    ["Stats"] = {
      ["Bubbles"] = "45",
      ["Coins"] = "45",
    },
    ["Rarity"] = "Unique", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://91458267403650",
      ["Shiny"] = "rbxassetid://126841657900353",
    },
    ["Egg"] = "Hell Egg", 
  },
  ["Ruby Golem"] = {
    ["Stats"] = {
      ["Bubbles"] = "4",
      ["Coins"] = "5",
    },
    ["Rarity"] = "Unique", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://87283653227747",
      ["Shiny"] = "rbxassetid://76036527489917",
    },
    ["Egg"] = "Spikey Egg", 
  },
  ["Beta TV"] = {
    ["Stats"] = {
      ["Bubbles"] = "110",
      ["Gems"] = "1.35",
      ["Coins"] = "95",
    },
    ["Rarity"] = "Legendary", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://131408473856024",
      ["Shiny"] = "rbxassetid://79852109630604",
    },
    ["Tag"] = "Exclusive Pet", 
  },
  ["Patronus"] = {
    ["Stats"] = {
      ["Bubbles"] = "2300",
      ["Gems"] = "50",
      ["Coins"] = "3250",
    },
    ["Rarity"] = "Legendary", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://94392748552254",
      ["Mythic"] = "rbxassetid://73085088086641",
      ["MythicShiny"] = "rbxassetid://121702391632093",
      ["Shiny"] = "rbxassetid://138338380491055",
    },
    ["Tag"] = "Golden Mystery Box", 
  },
  ["Manicorn"] = {
    ["Stats"] = {
      ["Bubbles"] = "185",
      ["Coins"] = "250",
    },
    ["Rarity"] = "Epic", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://125187740011203",
      ["Shiny"] = "rbxassetid://136834173199830",
    },
    ["Egg"] = "Aura Egg", 
    ["Tag"] = "Aura", 
  },
  ["Ice Deer"] = {
    ["Stats"] = {
      ["Bubbles"] = "11",
      ["Coins"] = "7",
    },
    ["Rarity"] = "Rare", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://89234801506800",
      ["Shiny"] = "rbxassetid://90402327646631",
    },
    ["Egg"] = "Iceshard Egg", 
  },
  ["Chubby Bunny"] = {
    ["Stats"] = {
      ["Bubbles"] = "100",
      ["Coins"] = "115",
    },
    ["Rarity"] = "Rare", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://105432306560546",
      ["Shiny"] = "rbxassetid://110449606817749",
    },
    ["Egg"] = "Pastel Egg", 
  },
  ["Space Bull"] = {
    ["Stats"] = {
      ["Bubbles"] = "30",
      ["Coins"] = "20",
    },
    ["Rarity"] = "Unique", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://139962127352917",
      ["Shiny"] = "rbxassetid://86759888574124",
    },
    ["Egg"] = "Lunar Egg", 
  },
  ["Stone Gargoyle"] = {
    ["Stats"] = {
      ["Bubbles"] = "785",
      ["Gems"] = "9",
      ["Tickets"] = "320",
    },
    ["Rarity"] = "Legendary", 
    ["Egg"] = "Mining Egg", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://96447056752701",
      ["Mythic"] = "rbxassetid://79313909775478",
      ["MythicShiny"] = "rbxassetid://136984425928222",
      ["Shiny"] = "rbxassetid://118449202987348",
    },
  },
  ["DOOF"] = {
    ["Stats"] = {
      ["Bubbles"] = "1350",
      ["Gems"] = "18",
      ["Coins"] = "1900",
    },
    ["Rarity"] = "Legendary", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://84912767727395",
      ["Mythic"] = "rbxassetid://81945865269343",
      ["MythicShiny"] = "rbxassetid://100771542732964",
      ["Shiny"] = "rbxassetid://93728970753640",
    },
    ["Egg"] = "Silly Egg", 
    ["Tag"] = "Silly", 
  },
  ["Umbra"] = {
    ["Stats"] = {
      ["Bubbles"] = "975",
      ["Gems"] = "15.5",
      ["Coins"] = "1300",
    },
    ["Rarity"] = "Legendary", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://125249100014282",
      ["Shiny"] = "rbxassetid://84695727888175",
    },
    ["Tag"] = "Reward Pet", 
  },
  ["Magma Deer"] = {
    ["Stats"] = {
      ["Bubbles"] = "12",
      ["Coins"] = "8",
    },
    ["Rarity"] = "Unique", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://73761576862071",
      ["Shiny"] = "rbxassetid://72419653767996",
    },
    ["Egg"] = "Magma Egg", 
  },
  ["Hell Piggy"] = {
    ["Stats"] = {
      ["Bubbles"] = "24",
      ["Coins"] = "20",
    },
    ["Rarity"] = "Common", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://107945242196860",
      ["Shiny"] = "rbxassetid://92700191260519",
    },
    ["Egg"] = "Hell Egg", 
  },
  ["Chocolate Bunny"] = {
    ["Stats"] = {
      ["Bubbles"] = "1450",
      ["Gems"] = "25",
      ["Coins"] = "1950",
    },
    ["Rarity"] = "Legendary", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://76625492348694",
      ["Mythic"] = "rbxassetid://81118434114062",
      ["MythicShiny"] = "rbxassetid://135944243354588",
      ["Shiny"] = "rbxassetid://91443601878887",
    },
    ["Tag"] = "2025 Egg Hunt", 
  },
  ["Doggy"] = {
    ["Stats"] = {
      ["Bubbles"] = "1",
      ["Coins"] = "1.1",
    },
    ["Rarity"] = "Common", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://105716458186041",
      ["Shiny"] = "rbxassetid://78385524120788",
    },
    ["Egg"] = "Common Egg", 
  },
  ["Solar Deity"] = {
    ["Stats"] = {
      ["Bubbles"] = "1050",
      ["Gems"] = "18",
      ["Coins"] = "1400",
    },
    ["Rarity"] = "Legendary", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://134628402584080",
      ["Shiny"] = "rbxassetid://119817581695133",
    },
    ["Tag"] = "Season 1", 
  },
  ["Easter Basket"] = {
    ["Stats"] = {
      ["Bubbles"] = "2900",
      ["Gems"] = "60",
      ["Coins"] = "3500",
    },
    ["Rarity"] = "Secret", 
    ["Egg"] = "Bunny Egg", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://127748776007060",
      ["Mythic"] = "rbxassetid://73135911297429",
      ["MythicShiny"] = "rbxassetid://88763393448729",
      ["Shiny"] = "rbxassetid://91266745275312",
    },
  },
  ["Mining Doggy"] = {
    ["Stats"] = {
      ["Bubbles"] = "24",
      ["Coins"] = "20",
    },
    ["Rarity"] = "Common", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://122503117196490",
      ["Shiny"] = "rbxassetid://79474133380060",
    },
    ["Egg"] = "Mining Egg", 
  },
  ["Red Golem"] = {
    ["Stats"] = {
      ["Bubbles"] = "45",
      ["Gems"] = "1.2",
      ["Coins"] = "58",
    },
    ["Rarity"] = "Common", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://131645529949165",
      ["Shiny"] = "rbxassetid://92272547987214",
    },
    ["Egg"] = "Rainbow Egg", 
  },
  ["King Soul"] = {
    ["Stats"] = {
      ["Bubbles"] = "2225",
      ["Gems"] = "45",
      ["Coins"] = "3100",
    },
    ["Rarity"] = "Legendary", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://91911264068662",
      ["Shiny"] = "rbxassetid://118925496119322",
    },
    ["Tag"] = "Milestone Pet", 
  },
  ["Hell Crawler"] = {
    ["Stats"] = {
      ["Bubbles"] = "75",
      ["Coins"] = "75",
    },
    ["Rarity"] = "Rare", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://85762364191919",
      ["Shiny"] = "rbxassetid://97739309087713",
    },
    ["Egg"] = "Hell Egg", 
  },
  ["Bear"] = {
    ["Stats"] = {
      ["Bubbles"] = "2",
      ["Coins"] = "1.5",
    },
    ["Rarity"] = "Rare", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://130303421356771",
      ["Shiny"] = "rbxassetid://104297025162106",
    },
    ["Egg"] = "Common Egg", 
  },
  ["Seraph"] = {
    ["Stats"] = {
      ["Bubbles"] = "1600",
      ["Gems"] = "22",
      ["Coins"] = "2300",
    },
    ["Rarity"] = "Legendary", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://89406259803728",
      ["Mythic"] = "rbxassetid://72318360051013",
      ["MythicShiny"] = "rbxassetid://74573418733805",
      ["Shiny"] = "rbxassetid://99697506225209",
    },
    ["Egg"] = "Season 1 Egg", 
    ["Tag"] = "Season 1", 
  },
  ["Angel Bunny"] = {
    ["Stats"] = {
      ["Bubbles"] = "95",
      ["Coins"] = "105",
    },
    ["Rarity"] = "Epic", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://100484343035283",
      ["Shiny"] = "rbxassetid://84536350949982",
    },
    ["Egg"] = "Bunny Egg", 
  },
  ["Ore Golem"] = {
    ["Stats"] = {
      ["Bubbles"] = "135",
      ["Tickets"] = "70",
    },
    ["Rarity"] = "Epic", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://83559948607250",
      ["Shiny"] = "rbxassetid://78142132254185",
    },
    ["Egg"] = "Mining Egg", 
  },
  ["Electra Hydra"] = {
    ["Stats"] = {
      ["Bubbles"] = "130",
      ["Gems"] = "2",
      ["Coins"] = "140",
    },
    ["Rarity"] = "Legendary", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://135131712275131",
      ["Shiny"] = "rbxassetid://138488373164398",
    },
    ["Tag"] = "Exclusive Pet", 
  },
  ["Cardinal Bunny"] = {
    ["Stats"] = {
      ["Bubbles"] = "1425",
      ["Gems"] = "28",
      ["Coins"] = "2000",
    },
    ["Rarity"] = "Legendary", 
    ["Egg"] = "Bunny Egg", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://104513918534463",
      ["Mythic"] = "rbxassetid://118889671469786",
      ["MythicShiny"] = "rbxassetid://96170721611701",
      ["Shiny"] = "rbxassetid://81866848585659",
    },
  },
  ["Ophanim"] = {
    ["Stats"] = {
      ["Bubbles"] = "925",
      ["Gems"] = "15",
      ["Coins"] = "1200",
    },
    ["Rarity"] = "Legendary", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://94680130398483",
      ["Mythic"] = "rbxassetid://76642953428686",
      ["MythicShiny"] = "rbxassetid://120779162975826",
      ["Shiny"] = "rbxassetid://116946378224550",
    },
    ["Egg"] = "Season 1 Egg", 
    ["Tag"] = "Season 1", 
  },
  ["Enlightened Kitty"] = {
    ["Stats"] = {
      ["Bubbles"] = "35",
      ["Coins"] = "15",
    },
    ["Rarity"] = "Rare", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://122259669272525",
      ["Shiny"] = "rbxassetid://116308362826258",
    },
    ["Egg"] = "Season 1 Egg", 
    ["Tag"] = "Season 1", 
  },
  ["Dragon"] = {
    ["Stats"] = {
      ["Bubbles"] = "12",
      ["Coins"] = "8",
    },
    ["Rarity"] = "Rare", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://114651533539774",
      ["Shiny"] = "rbxassetid://76431034154587",
    },
    ["Egg"] = "Spikey Egg", 
  },
  ["Hatchling"] = {
    ["Stats"] = {
      ["Bubbles"] = "190",
      ["Coins"] = "265",
    },
    ["Rarity"] = "Epic", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://119285236689048",
      ["Shiny"] = "rbxassetid://126418352072171",
    },
    ["Egg"] = "Pastel Egg", 
  },
  ["Green Hydra"] = {
    ["Stats"] = {
      ["Bubbles"] = "600",
      ["Gems"] = "10",
      ["Coins"] = "710",
    },
    ["Rarity"] = "Legendary", 
    ["Egg"] = "Nightmare Egg", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://104746232435869",
      ["Mythic"] = "rbxassetid://101754597452868",
      ["MythicShiny"] = "rbxassetid://85937441131538",
      ["Shiny"] = "rbxassetid://86848062315342",
    },
  },
  ["Easter Fluffle"] = {
    ["Stats"] = {
      ["Bubbles"] = "1075",
      ["Gems"] = "19",
      ["Coins"] = "1400",
    },
    ["Rarity"] = "Legendary", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://111160641904639",
      ["Shiny"] = "rbxassetid://133620067717567",
    },
    ["Tag"] = "2025 Egg Hunt", 
  },
  ["Hexarium"] = {
    ["Stats"] = {
      ["Bubbles"] = "1025",
      ["Gems"] = "16.5",
      ["Coins"] = "1350",
    },
    ["Rarity"] = "Legendary", 
    ["Egg"] = "Rainbow Egg", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://71087965379129",
      ["Mythic"] = "rbxassetid://86741891826454",
      ["MythicShiny"] = "rbxassetid://89823280118528",
      ["Shiny"] = "rbxassetid://128101936411240",
    },
  },
  ["Lunarcorn"] = {
    ["Stats"] = {
      ["Bubbles"] = "70",
      ["Coins"] = "55",
    },
    ["Rarity"] = "Epic", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://140257565071918",
      ["Shiny"] = "rbxassetid://122694213022562",
    },
    ["Egg"] = "Lunar Egg", 
  },
  ["Demonic Dogcat"] = {
    ["Stats"] = {
      ["Bubbles"] = "2225",
      ["Gems"] = "45",
      ["Coins"] = "3100",
    },
    ["Rarity"] = "Legendary", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://139629744666029",
      ["Shiny"] = "rbxassetid://126169873370845",
    },
    ["Tag"] = "Milestone Pet", 
  },
  ["Lunar Serpent"] = {
    ["Stats"] = {
      ["Bubbles"] = "195",
      ["Gems"] = "2",
      ["Coins"] = "220",
    },
    ["Rarity"] = "Legendary", 
    ["Egg"] = "Lunar Egg", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://129923067225161",
      ["Mythic"] = "rbxassetid://128746247448355",
      ["MythicShiny"] = "rbxassetid://124361472417361",
      ["Shiny"] = "rbxassetid://71831968325737",
    },
  },
  ["Diamond Hexarium"] = {
    ["Stats"] = {
      ["Bubbles"] = "1250",
      ["Gems"] = "23",
      ["Coins"] = "1600",
    },
    ["Rarity"] = "Legendary", 
    ["Egg"] = "100M Egg", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://136410802303648",
      ["Mythic"] = "rbxassetid://110459647433098",
      ["MythicShiny"] = "rbxassetid://70570552386283",
      ["Shiny"] = "rbxassetid://82003997046134",
    },
  },
  ["Cave Mole"] = {
    ["Stats"] = {
      ["Bubbles"] = "75",
      ["Tickets"] = "40",
    },
    ["Rarity"] = "Rare", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://93047026359490",
      ["Shiny"] = "rbxassetid://80686832114260",
    },
    ["Egg"] = "Mining Egg", 
  },
  ["Magma Bear"] = {
    ["Stats"] = {
      ["Bubbles"] = "18",
      ["Coins"] = "15",
    },
    ["Rarity"] = "Rare", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://121803513129635",
      ["Shiny"] = "rbxassetid://126554662078892",
    },
    ["Egg"] = "Magma Egg", 
  },
  ["NULLVoid"] = {
    ["Stats"] = {
      ["Bubbles"] = "1350",
      ["Gems"] = "24",
      ["Coins"] = "1850",
    },
    ["Rarity"] = "Legendary", 
    ["Egg"] = "Void Egg", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://124799956485057",
      ["Mythic"] = "rbxassetid://134388243020695",
      ["MythicShiny"] = "rbxassetid://116241431469732",
      ["Shiny"] = "rbxassetid://132769360414533",
    },
  },
  ["Panda"] = {
    ["Stats"] = {
      ["Bubbles"] = "7",
      ["Coins"] = "3",
    },
    ["Rarity"] = "Epic", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://115022226771074",
      ["Shiny"] = "rbxassetid://100131755062535",
    },
    ["Egg"] = "Spotted Egg", 
  },
  ["Long Kitty"] = {
    ["Stats"] = {
      ["Bubbles"] = "210",
      ["Coins"] = "270",
    },
    ["Rarity"] = "Rare", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://119634181104666",
      ["Shiny"] = "rbxassetid://110282638403474",
    },
    ["Egg"] = "Silly Egg", 
    ["Tag"] = "Silly", 
  },
  ["Royal Trophy"] = {
    ["Stats"] = {
      ["Bubbles"] = "3000",
      ["Gems"] = "65",
      ["Coins"] = "3500",
    },
    ["Rarity"] = "Secret", 
    ["Egg"] = "100M Egg", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://102016856452664",
      ["Mythic"] = "rbxassetid://71734612734368",
      ["MythicShiny"] = "rbxassetid://87743556079640",
      ["Shiny"] = "rbxassetid://103886175167440",
    },
  },
  ["Robo Kitty"] = {
    ["Stats"] = {
      ["Bubbles"] = "65",
      ["Gems"] = "1.8",
      ["Tickets"] = "75",
    },
    ["Rarity"] = "Common", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://126153630042093",
      ["Shiny"] = "rbxassetid://126245004235143",
    },
    ["Egg"] = "Cyber Egg", 
  },
  ["Game Master"] = {
    ["Stats"] = {
      ["Bubbles"] = "1850",
      ["Gems"] = "35",
      ["Tickets"] = "1900",
    },
    ["Rarity"] = "Legendary", 
    ["Egg"] = "Game Egg", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://120685980526060",
      ["Mythic"] = "rbxassetid://108919908305331",
      ["MythicShiny"] = "rbxassetid://136491378615234",
      ["Shiny"] = "rbxassetid://126718995367861",
    },
    ["Tag"] = "Season 2", 
  },
  ["Happy Dice"] = {
    ["Stats"] = {
      ["Bubbles"] = "195",
      ["Tickets"] = "130",
    },
    ["Rarity"] = "Epic", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://123053322701010",
      ["Shiny"] = "rbxassetid://111037834995435",
    },
    ["Egg"] = "Game Egg", 
    ["Tag"] = "Season 2", 
  },
  ["Seraphic Bunny"] = {
    ["Stats"] = {
      ["Bubbles"] = "500",
      ["Gems"] = "8",
      ["Coins"] = "550",
    },
    ["Rarity"] = "Legendary", 
    ["Egg"] = "Bunny Egg", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://79750206272909",
      ["Mythic"] = "rbxassetid://93333271902816",
      ["MythicShiny"] = "rbxassetid://124711616271771",
      ["Shiny"] = "rbxassetid://103392017403068",
    },
  },
  ["Dice Split"] = {
    ["Stats"] = {
      ["Bubbles"] = "1750",
      ["Gems"] = "32",
      ["Tickets"] = "1800",
    },
    ["Rarity"] = "Legendary", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://140212979301756",
      ["Mythic"] = "rbxassetid://114639637803307",
      ["MythicShiny"] = "rbxassetid://115097115638781",
      ["Shiny"] = "rbxassetid://128103253336307",
    },
    ["Tag"] = "Dice Chest", 
  },
  ["Fancy Demon"] = {
    ["Stats"] = {
      ["Bubbles"] = "40",
      ["Tickets"] = "20",
    },
    ["Rarity"] = "Rare", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://119579347444394",
      ["Shiny"] = "rbxassetid://118660693089214",
    },
    ["Egg"] = "Game Egg", 
    ["Tag"] = "Season 2", 
  },
  ["Dragon Plushie"] = {
    ["Stats"] = {
      ["Bubbles"] = "1850",
      ["Gems"] = "35",
      ["Tickets"] = "1900",
    },
    ["Rarity"] = "Legendary", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://136544071549548",
      ["Mythic"] = "rbxassetid://126021795170370",
      ["MythicShiny"] = "rbxassetid://82801890357724",
      ["Shiny"] = "rbxassetid://92576218287248",
    },
    ["Tag"] = "Game Prize", 
  },
  ["Magmas"] = {
    ["Stats"] = {
      ["Bubbles"] = "1700",
      ["Gems"] = "32",
      ["Tickets"] = "1800",
    },
    ["Rarity"] = "Legendary", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://125225288285850",
      ["Mythic"] = "rbxassetid://80649552245148",
      ["MythicShiny"] = "rbxassetid://107724917918022",
      ["Shiny"] = "rbxassetid://83592309171830",
    },
    ["Tag"] = "Game Prize", 
  },
  ["Dark Phoenix"] = {
    ["Stats"] = {
      ["Bubbles"] = "350",
      ["Gems"] = "4.5",
      ["Coins"] = "410",
    },
    ["Rarity"] = "Legendary", 
    ["Egg"] = "Void Egg", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://121879532347673",
      ["Mythic"] = "rbxassetid://98329771345437",
      ["MythicShiny"] = "rbxassetid://97837991194893",
      ["Shiny"] = "rbxassetid://96543725025034",
    },
  },
  ["Kitty"] = {
    ["Stats"] = {
      ["Bubbles"] = "1",
      ["Coins"] = "1.1",
    },
    ["Rarity"] = "Common", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://136182543524566",
      ["Shiny"] = "rbxassetid://107484379413352",
    },
    ["Egg"] = "Common Egg", 
  },
  ["Ethereal Bunny"] = {
    ["Stats"] = {
      ["Bubbles"] = "1075",
      ["Gems"] = "19",
      ["Coins"] = "1400",
    },
    ["Rarity"] = "Legendary", 
    ["Egg"] = "Bunny Egg", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://93656019204074",
      ["Mythic"] = "rbxassetid://91749246237791",
      ["MythicShiny"] = "rbxassetid://121742387238600",
      ["Shiny"] = "rbxassetid://130649018220152",
    },
  },
  ["Manny"] = {
    ["Stats"] = {
      ["Bubbles"] = "120",
      ["Gems"] = "1.75",
      ["Coins"] = "145",
    },
    ["Rarity"] = "Rare", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://136450592953585",
      ["Shiny"] = "rbxassetid://114012206693503",
    },
    ["Egg"] = "Aura Egg", 
    ["Tag"] = "Aura", 
  },
  ["Mouse"] = {
    ["Stats"] = {
      ["Bubbles"] = "2",
      ["Coins"] = "2",
    },
    ["Rarity"] = "Common", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://129738500672564",
      ["Shiny"] = "rbxassetid://113473859675084",
    },
    ["Egg"] = "Spotted Egg", 
  },
  ["Void Fox"] = {
    ["Stats"] = {
      ["Bubbles"] = "65",
      ["Coins"] = "55",
    },
    ["Rarity"] = "Rare", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://103797280739577",
      ["Shiny"] = "rbxassetid://114427178223777",
    },
  },
  ["Angel"] = {
    ["Stats"] = {
      ["Bubbles"] = "35",
      ["Coins"] = "20",
    },
    ["Rarity"] = "Rare", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://112292360768269",
      ["Shiny"] = "rbxassetid://99959000304515",
    },
    ["Egg"] = "Crystal Egg", 
  },
  ["Dusk"] = {
    ["Stats"] = {
      ["Bubbles"] = "975",
      ["Gems"] = "15.5",
      ["Tickets"] = "1300",
    },
    ["Rarity"] = "Legendary", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://89066931313193",
      ["Shiny"] = "rbxassetid://126914744556808",
    },
    ["Tag"] = "Season 2", 
  },
  ["Unicorn"] = {
    ["Stats"] = {
      ["Bubbles"] = "155",
      ["Gems"] = "1.4",
      ["Coins"] = "135",
    },
    ["Rarity"] = "Legendary", 
    ["Egg"] = "Crystal Egg", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://91859045003732",
      ["Mythic"] = "rbxassetid://94136688249831",
      ["MythicShiny"] = "rbxassetid://124445223953228",
      ["Shiny"] = "rbxassetid://115354210206795",
    },
  },
  ["King Pufferfish"] = {
    ["Stats"] = {
      ["Bubbles"] = "1475",
      ["Gems"] = "32",
      ["Coins"] = "2300",
    },
    ["Rarity"] = "Legendary", 
    ["Egg"] = "100M Egg", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://78891298142055",
      ["Mythic"] = "rbxassetid://135672381979356",
      ["MythicShiny"] = "rbxassetid://123241517588205",
      ["Shiny"] = "rbxassetid://135162856369456",
    },
  },
  ["Void Kitty"] = {
    ["Stats"] = {
      ["Bubbles"] = "18",
      ["Coins"] = "16",
    },
    ["Rarity"] = "Common", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://106486623692692",
      ["Shiny"] = "rbxassetid://98299711588470",
    },
    ["Egg"] = "Void Egg", 
  },
  ["Magma Doggy"] = {
    ["Stats"] = {
      ["Bubbles"] = "11",
      ["Coins"] = "6",
    },
    ["Rarity"] = "Common", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://119124196440746",
      ["Shiny"] = "rbxassetid://139545348445279",
    },
    ["Egg"] = "Magma Egg", 
  },
  ["Moon Deer"] = {
    ["Stats"] = {
      ["Bubbles"] = "1000",
      ["Gems"] = "22",
      ["Coins"] = "1250",
    },
    ["Rarity"] = "Legendary", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://120225123806435",
      ["Mythic"] = "rbxassetid://130216478201148",
      ["MythicShiny"] = "rbxassetid://127432657813726",
      ["Shiny"] = "rbxassetid://90255821847608",
    },
    ["Egg"] = "Season 2 Egg", 
    ["Tag"] = "Season 2", 
  },
  ["Starry Lamb"] = {
    ["Stats"] = {
      ["Bubbles"] = "195",
      ["Coins"] = "265",
    },
    ["Rarity"] = "Epic", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://129047181207186",
      ["Shiny"] = "rbxassetid://115966365794799",
    },
    ["Egg"] = "Season 2 Egg", 
    ["Tag"] = "Season 2", 
  },
  ["Holy Shock"] = {
    ["Stats"] = {
      ["Bubbles"] = "975",
      ["Gems"] = "15.5",
      ["Coins"] = "1300",
    },
    ["Rarity"] = "Legendary", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://87357335772226",
      ["Shiny"] = "rbxassetid://131835208422374",
    },
    ["Tag"] = "Milestone Pet", 
  },
  ["Ice Dragon"] = {
    ["Stats"] = {
      ["Bubbles"] = "15",
      ["Coins"] = "10",
    },
    ["Rarity"] = "Epic", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://112167721231774",
      ["Shiny"] = "rbxassetid://94422986737598",
    },
    ["Egg"] = "Iceshard Egg", 
  },
  ["Silver Fox"] = {
    ["Stats"] = {
      ["Bubbles"] = "110",
      ["Gems"] = "2.5",
      ["Coins"] = "125",
    },
    ["Rarity"] = "Unique", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://122444893544859",
      ["Shiny"] = "rbxassetid://100728204642259",
    },
    ["Egg"] = "100M Egg", 
  },
  ["Luminosity"] = {
    ["Stats"] = {
      ["Bubbles"] = "3050",
      ["Gems"] = "70",
      ["Tickets"] = "3550",
    },
    ["Rarity"] = "Secret", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://124773783852927",
      ["Mythic"] = "rbxassetid://92067317285583",
      ["MythicShiny"] = "rbxassetid://131286750513616",
      ["Shiny"] = "rbxassetid://132609819087086",
    },
    ["Tag"] = "Season 2", 
  },
  ["Rainbow Marshmellow"] = {
    ["Stats"] = {
      ["Bubbles"] = "1250",
      ["Gems"] = "20",
      ["Coins"] = "1700",
    },
    ["Rarity"] = "Legendary", 
    ["Egg"] = "Pastel Egg", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://99797164913127",
      ["Mythic"] = "rbxassetid://95756192435113",
      ["MythicShiny"] = "rbxassetid://93613196809607",
      ["Shiny"] = "rbxassetid://113156755564013",
    },
  },
  ["Virus"] = {
    ["Stats"] = {
      ["Bubbles"] = "785",
      ["Gems"] = "9",
      ["Coins"] = "850",
    },
    ["Rarity"] = "Legendary", 
    ["Egg"] = "Hell Egg", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://110185755598723",
      ["Mythic"] = "rbxassetid://123553243933827",
      ["MythicShiny"] = "rbxassetid://79500546432529",
      ["Shiny"] = "rbxassetid://104208878857321",
    },
  },
  ["Wolf"] = {
    ["Stats"] = {
      ["Bubbles"] = "2.1",
      ["Coins"] = "2",
    },
    ["Rarity"] = "Common", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://132286741561024",
      ["Shiny"] = "rbxassetid://139001767570631",
    },
    ["Egg"] = "Spotted Egg", 
  },
  ["Emerald Bat"] = {
    ["Stats"] = {
      ["Bubbles"] = "50",
      ["Coins"] = "35",
    },
    ["Rarity"] = "Epic", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://130205712754161",
      ["Shiny"] = "rbxassetid://76112768260518",
    },
    ["Egg"] = "Crystal Egg", 
  },
  ["Inferno Cube"] = {
    ["Stats"] = {
      ["Bubbles"] = "480",
      ["Gems"] = "6",
      ["Coins"] = "520",
    },
    ["Rarity"] = "Legendary", 
    ["Egg"] = "Hell Egg", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://118510130470134",
      ["Mythic"] = "rbxassetid://108444291064240",
      ["MythicShiny"] = "rbxassetid://97641653727155",
      ["Shiny"] = "rbxassetid://79182973159304",
    },
  },
  ["Cyborg Phoenix"] = {
    ["Stats"] = {
      ["Bubbles"] = "630",
      ["Gems"] = "12",
      ["Tickets"] = "400",
    },
    ["Rarity"] = "Legendary", 
    ["Egg"] = "Cyber Egg", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://105920543929343",
      ["Mythic"] = "rbxassetid://102380696723944",
      ["MythicShiny"] = "rbxassetid://88293167244219",
      ["Shiny"] = "rbxassetid://135337380770193",
    },
  },
  ["Cyber Wolf"] = {
    ["Stats"] = {
      ["Bubbles"] = "130",
      ["Tickets"] = "140",
    },
    ["Rarity"] = "Epic", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://112519144548644",
      ["Shiny"] = "rbxassetid://109676694882054",
    },
    ["Egg"] = "Cyber Egg", 
  },
  ["Martian Kitty"] = {
    ["Stats"] = {
      ["Bubbles"] = "115",
      ["Gems"] = "2.5",
      ["Tickets"] = "125",
    },
    ["Rarity"] = "Unique", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://95865916555707",
      ["Shiny"] = "rbxassetid://128126875255924",
    },
    ["Egg"] = "Cyber Egg", 
  },
  ["Crystal Unicorn"] = {
    ["Stats"] = {
      ["Bubbles"] = "480",
      ["Gems"] = "6",
      ["Tickets"] = "180",
    },
    ["Rarity"] = "Legendary", 
    ["Egg"] = "Mining Egg", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://80913268248921",
      ["Mythic"] = "rbxassetid://100717636189777",
      ["MythicShiny"] = "rbxassetid://76169254234638",
      ["Shiny"] = "rbxassetid://80328115583771",
    },
  },
  ["Neon Elemental"] = {
    ["Stats"] = {
      ["Bubbles"] = "430",
      ["Gems"] = "5.5",
      ["Coins"] = "500",
    },
    ["Rarity"] = "Legendary", 
    ["Egg"] = "Void Egg", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://76900428773295",
      ["Mythic"] = "rbxassetid://98823105797670",
      ["MythicShiny"] = "rbxassetid://115321521110239",
      ["Shiny"] = "rbxassetid://75299135501237",
    },
  },
  ["Jackpot"] = {
    ["Stats"] = {
      ["Bubbles"] = "3050",
      ["Gems"] = "70",
      ["Tickets"] = "3550",
    },
    ["Rarity"] = "Legendary", 
    ["Egg"] = "Game Egg", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://127110172492221",
      ["Mythic"] = "rbxassetid://124077171526182",
      ["MythicShiny"] = "rbxassetid://103074564849082",
      ["Shiny"] = "rbxassetid://116720210619976",
    },
    ["Tag"] = "Season 2", 
  },
  ["Paper Doggy"] = {
    ["Stats"] = {
      ["Bubbles"] = "40",
      ["Coins"] = "36",
    },
    ["Rarity"] = "Common", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://116412942676621",
      ["Shiny"] = "rbxassetid://107372964901806",
    },
    ["Egg"] = "Pastel Egg", 
  },
  ["Nebula"] = {
    ["Stats"] = {
      ["Bubbles"] = "1850",
      ["Gems"] = "35",
      ["Coins"] = "2450",
    },
    ["Rarity"] = "Legendary", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://131132006061222",
      ["Mythic"] = "rbxassetid://123429576754180",
      ["MythicShiny"] = "rbxassetid://85080452280244",
      ["Shiny"] = "rbxassetid://118971288564521",
    },
    ["Egg"] = "Season 2 Egg", 
    ["Tag"] = "Season 2", 
  },
  ["Magma Fox"] = {
    ["Stats"] = {
      ["Bubbles"] = "15",
      ["Coins"] = "10",
    },
    ["Rarity"] = "Unique", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://71551279595708",
      ["Shiny"] = "rbxassetid://107430075457632",
    },
    ["Egg"] = "Magma Egg", 
  },
  ["Void Bat"] = {
    ["Stats"] = {
      ["Bubbles"] = "43",
      ["Coins"] = "35",
    },
    ["Rarity"] = "Unique", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://70908392220156",
      ["Shiny"] = "rbxassetid://133135553484824",
    },
    ["Egg"] = "Void Egg", 
  },
  ["Hell Bat"] = {
    ["Stats"] = {
      ["Bubbles"] = "185",
      ["Coins"] = "250",
    },
    ["Rarity"] = "Epic", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://96741744508615",
      ["Shiny"] = "rbxassetid://75103443297629",
    },
    ["Egg"] = "Nightmare Egg", 
  },
  ["Orange Deer"] = {
    ["Stats"] = {
      ["Bubbles"] = "82",
      ["Gems"] = "1.4",
      ["Coins"] = "97",
    },
    ["Rarity"] = "Unique", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://96265808091408",
      ["Shiny"] = "rbxassetid://104447143767793",
    },
    ["Egg"] = "Rainbow Egg", 
  },
  ["Dark Dragon"] = {
    ["Stats"] = {
      ["Bubbles"] = "16",
      ["Coins"] = "12",
    },
    ["Rarity"] = "Epic", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://114782025459874",
      ["Shiny"] = "rbxassetid://95291070160423",
    },
    ["Egg"] = "Spikey Egg", 
  },
  ["Dowodle"] = {
    ["Stats"] = {
      ["Bubbles"] = "120",
      ["Gems"] = "1.5",
      ["Coins"] = "135",
    },
    ["Rarity"] = "Legendary", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://136489594823543",
      ["Shiny"] = "rbxassetid://101671336845496",
    },
    ["Tag"] = "Exclusive Pet", 
  },
  ["Queen of Hearts"] = {
    ["Stats"] = {
      ["Bubbles"] = "2",
      ["Tickets"] = "2",
    },
    ["Rarity"] = "Rare", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://129024054398763",
      ["Shiny"] = "rbxassetid://130641327270296",
    },
    ["Egg"] = "Showman Egg", 
  },
  ["Godly Gem"] = {
    ["Stats"] = {
      ["Bubbles"] = "3200",
      ["Gems"] = "70",
      ["Coins"] = "3750",
    },
    ["Rarity"] = "Secret", 
    ["Egg"] = "Throwback Egg", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://135660573331096",
      ["Mythic"] = "rbxassetid://79962120420648",
      ["MythicShiny"] = "rbxassetid://126464346470111",
      ["Shiny"] = "rbxassetid://131352042214414",
    },
  },
  ["Easter Serpent"] = {
    ["Stats"] = {
      ["Bubbles"] = "550",
      ["Gems"] = "10",
      ["Coins"] = "600",
    },
    ["Rarity"] = "Legendary", 
    ["Egg"] = "Throwback Egg", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://98938067959398",
      ["Mythic"] = "rbxassetid://128879026211802",
      ["MythicShiny"] = "rbxassetid://114527045780663",
      ["Shiny"] = "rbxassetid://125443598339397",
    },
  },
  ["Overseer"] = {
    ["Stats"] = {
      ["Bubbles"] = "2300",
      ["Gems"] = "50",
      ["Coins"] = "3150",
    },
    ["Rarity"] = "Legendary", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://103066660441260",
      ["Mythic"] = "rbxassetid://101438224606618",
      ["MythicShiny"] = "rbxassetid://111630848456135",
      ["Shiny"] = "rbxassetid://135282468413670",
    },
    ["Egg"] = "Series 1 Egg", 
    ["Tag"] = "Series 1", 
  },
  ["Starlight"] = {
    ["Stats"] = {
      ["Bubbles"] = "1700",
      ["Gems"] = "25",
      ["Coins"] = "2350",
    },
    ["Rarity"] = "Legendary", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://87591100580978",
      ["Mythic"] = "rbxassetid://116635719928804",
      ["MythicShiny"] = "rbxassetid://92718980367388",
      ["Shiny"] = "rbxassetid://111120928324007",
    },
    ["Egg"] = "Series 1 Egg", 
    ["Tag"] = "Series 1", 
  },
  ["Parasite"] = {
    ["Stats"] = {
      ["Bubbles"] = "980",
      ["Gems"] = "18",
      ["Coins"] = "1250",
    },
    ["Rarity"] = "Legendary", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://74651112943866",
      ["Mythic"] = "rbxassetid://106984089489667",
      ["MythicShiny"] = "rbxassetid://82411303923037",
      ["Shiny"] = "rbxassetid://115141336334034",
    },
    ["Egg"] = "Series 1 Egg", 
    ["Tag"] = "Series 1", 
  },
  ["Bronze Bunny"] = {
    ["Stats"] = {
      ["Bubbles"] = "60",
      ["Gems"] = "1.8",
      ["Coins"] = "75",
    },
    ["Rarity"] = "Common", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://113213527955425",
      ["Shiny"] = "rbxassetid://83519311440715",
    },
    ["Egg"] = "100M Egg", 
  },
  ["Flying Bunny"] = {
    ["Stats"] = {
      ["Bubbles"] = "115",
      ["Coins"] = "125",
    },
    ["Rarity"] = "Epic", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://132767819077599",
      ["Shiny"] = "rbxassetid://130968037860846",
    },
    ["Egg"] = "Throwback Egg", 
  },
  ["Bow Bunny"] = {
    ["Stats"] = {
      ["Bubbles"] = "55",
      ["Gems"] = "1.5",
      ["Coins"] = "70",
    },
    ["Rarity"] = "Common", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://101840367549334",
      ["Shiny"] = "rbxassetid://81878017289027",
    },
    ["Egg"] = "Throwback Egg", 
  },
  ["Sigma Serpent"] = {
    ["Stats"] = {
      ["Bubbles"] = "1300",
      ["Gems"] = "16.5",
      ["Coins"] = "1800",
    },
    ["Rarity"] = "Legendary", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://120522753533593",
      ["Mythic"] = "rbxassetid://118748493382296",
      ["MythicShiny"] = "rbxassetid://89326610971101",
      ["Shiny"] = "rbxassetid://92927562755760",
    },
    ["Egg"] = "Aura Egg", 
    ["Tag"] = "Aura", 
  },
  ["Discord Imp"] = {
    ["Stats"] = {
      ["Bubbles"] = "25",
      ["Gems"] = "2",
      ["Coins"] = "20",
    },
    ["Rarity"] = "Legendary", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://127424277905900",
      ["Shiny"] = "rbxassetid://121883751295408",
    },
    ["Tag"] = "Reward Pet", 
  },
  ["Mining Bat"] = {
    ["Stats"] = {
      ["Bubbles"] = "45",
      ["Tickets"] = "25",
    },
    ["Rarity"] = "Unique", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://112786499042328",
      ["Shiny"] = "rbxassetid://119531912421769",
    },
    ["Egg"] = "Mining Egg", 
  },
  ["Infernus"] = {
    ["Stats"] = {
      ["Bubbles"] = "130",
      ["Gems"] = "2",
      ["Coins"] = "140",
    },
    ["Rarity"] = "Legendary", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://84021466522802",
      ["Shiny"] = "rbxassetid://139125490541605",
    },
    ["Tag"] = "Exclusive Pet", 
  },
  ["Enraged Phoenix"] = {
    ["Stats"] = {
      ["Bubbles"] = "120",
      ["Gems"] = "1.6",
      ["Coins"] = "120",
    },
    ["Rarity"] = "Legendary", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://107570455419383",
      ["Shiny"] = "rbxassetid://113743669461335",
    },
    ["Tag"] = "Exclusive Pet", 
  },
  ["Elite Challenger"] = {
    ["Stats"] = {
      ["Bubbles"] = "2350",
      ["Gems"] = "50",
      ["Coins"] = "3200",
    },
    ["Rarity"] = "Legendary", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://88302006299732",
      ["Shiny"] = "rbxassetid://87918443374697",
    },
    ["Tag"] = "Competitive", 
  },
  ["Dark Serpent"] = {
    ["Stats"] = {
      ["Bubbles"] = "120",
      ["Gems"] = "1.6",
      ["Coins"] = "120",
    },
    ["Rarity"] = "Legendary", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://98681684304520",
      ["Shiny"] = "rbxassetid://126906631192910",
    },
    ["Tag"] = "Exclusive Pet", 
  },
  ["Diamond Serpent"] = {
    ["Stats"] = {
      ["Bubbles"] = "600",
      ["Gems"] = "12",
      ["Coins"] = "625",
    },
    ["Rarity"] = "Legendary", 
    ["Egg"] = "100M Egg", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://72409952288287",
      ["Mythic"] = "rbxassetid://129721201697549",
      ["MythicShiny"] = "rbxassetid://76876858250583",
      ["Shiny"] = "rbxassetid://133778634002878",
    },
  },
  ["Judgement"] = {
    ["Stats"] = {
      ["Bubbles"] = "185",
      ["Coins"] = "250",
    },
    ["Rarity"] = "Epic", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://102786140868252",
      ["Shiny"] = "rbxassetid://110006241851417",
    },
    ["Egg"] = "Season 1 Egg", 
    ["Tag"] = "Season 1", 
  },
  ["Manarium"] = {
    ["Stats"] = {
      ["Bubbles"] = "1500",
      ["Gems"] = "22",
      ["Coins"] = "1900",
    },
    ["Rarity"] = "Legendary", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://96886389446306",
      ["Mythic"] = "rbxassetid://112814884526629",
      ["MythicShiny"] = "rbxassetid://123771065624121",
      ["Shiny"] = "rbxassetid://87072251154600",
    },
    ["Egg"] = "Aura Egg", 
    ["Tag"] = "Aura", 
  },
  ["Silly Doggy :)"] = {
    ["Stats"] = {
      ["Bubbles"] = "2700",
      ["Gems"] = "50",
      ["Coins"] = "3250",
    },
    ["Rarity"] = "Secret", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://136400177227573",
      ["Mythic"] = "rbxassetid://134489345601468",
      ["MythicShiny"] = "rbxassetid://80021338472854",
      ["Shiny"] = "rbxassetid://91838639140469",
    },
    ["Egg"] = "Silly Egg", 
    ["Tag"] = "Silly", 
  },
  ["Skeletal Deer"] = {
    ["Stats"] = {
      ["Bubbles"] = "50",
      ["Coins"] = "52",
    },
    ["Rarity"] = "Unique", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://113928895692385",
      ["Shiny"] = "rbxassetid://108708065111555",
    },
    ["Egg"] = "Nightmare Egg", 
  },
  ["Golden Dragon"] = {
    ["Stats"] = {
      ["Bubbles"] = "125",
      ["Coins"] = "140",
    },
    ["Rarity"] = "Epic", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://116610852449123",
      ["Shiny"] = "rbxassetid://129336435638666",
    },
    ["Egg"] = "100M Egg", 
  },
  ["Sleepy Bunny"] = {
    ["Stats"] = {
      ["Bubbles"] = "40",
      ["Coins"] = "20",
    },
    ["Rarity"] = "Rare", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://116722260024080",
      ["Shiny"] = "rbxassetid://80968988528542",
    },
    ["Egg"] = "Season 2 Egg", 
    ["Tag"] = "Season 2", 
  },
  ["Golden Golem"] = {
    ["Stats"] = {
      ["Bubbles"] = "195",
      ["Coins"] = "265",
    },
    ["Rarity"] = "Epic", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://138026763781707",
      ["Shiny"] = "rbxassetid://132684362621406",
    },
    ["Egg"] = "Series 1 Egg", 
    ["Tag"] = "Series 1", 
  },
  ["Ice Wolf"] = {
    ["Stats"] = {
      ["Bubbles"] = "7",
      ["Coins"] = "5",
    },
    ["Rarity"] = "Unique", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://112663097432266",
      ["Shiny"] = "rbxassetid://91175593920003",
    },
    ["Egg"] = "Iceshard Egg", 
  },
  ["Void Demon"] = {
    ["Stats"] = {
      ["Bubbles"] = "85",
      ["Coins"] = "70",
    },
    ["Rarity"] = "Epic", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://136686021537465",
      ["Shiny"] = "rbxassetid://136094263998699",
    },
    ["Egg"] = "Void Egg", 
  },
  ["Evil Shock"] = {
    ["Stats"] = {
      ["Bubbles"] = "975",
      ["Gems"] = "15.5",
      ["Coins"] = "1300",
    },
    ["Rarity"] = "Legendary", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://74756358022770",
      ["Shiny"] = "rbxassetid://82993807418706",
    },
    ["Tag"] = "Milestone Pet", 
  },
  ["Dinosaur"] = {
    ["Stats"] = {
      ["Bubbles"] = "3",
      ["Coins"] = "2",
    },
    ["Rarity"] = "Common", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://136766308309953",
      ["Shiny"] = "rbxassetid://127253788491436",
    },
    ["Egg"] = "Spikey Egg", 
  },
  ["Cave Bat"] = {
    ["Stats"] = {
      ["Bubbles"] = "14",
      ["Coins"] = "9",
    },
    ["Rarity"] = "Common", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://93294160413976",
      ["Shiny"] = "rbxassetid://115574329171258",
    },
    ["Egg"] = "Crystal Egg", 
  },
  ["Holy Egg"] = {
    ["Stats"] = {
      ["Bubbles"] = "1425",
      ["Gems"] = "28",
      ["Coins"] = "2200",
    },
    ["Rarity"] = "Legendary", 
    ["Egg"] = "Throwback Egg", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://122905176769988",
      ["Mythic"] = "rbxassetid://98349954814824",
      ["MythicShiny"] = "rbxassetid://94212506544352",
      ["Shiny"] = "rbxassetid://96405481047772",
    },
  },
  ["Crescent Empress"] = {
    ["Stats"] = {
      ["Bubbles"] = "1100",
      ["Gems"] = "19",
      ["Coins"] = "1425",
    },
    ["Rarity"] = "Legendary", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://138592293670867",
      ["Mythic"] = "rbxassetid://84884643955388",
      ["MythicShiny"] = "rbxassetid://114377918544383",
      ["Shiny"] = "rbxassetid://77931849920370",
    },
    ["Tag"] = "Season 1", 
  },
  ["Gamer Boi"] = {
    ["Stats"] = {
      ["Bubbles"] = "1",
      ["Tickets"] = "1.5",
    },
    ["Rarity"] = "Common", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://126142834628447",
      ["Shiny"] = "rbxassetid://72474674070189",
    },
    ["Egg"] = "Showman Egg", 
  },
  ["Competitor Doggy"] = {
    ["Stats"] = {
      ["Bubbles"] = "40",
      ["Coins"] = "20",
    },
    ["Rarity"] = "Rare", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://127208677869819",
      ["Shiny"] = "rbxassetid://89651347381678",
    },
    ["Egg"] = "Series 1 Egg", 
    ["Tag"] = "Series 1", 
  },
  ["King Doggy"] = {
    ["Stats"] = {
      ["Bubbles"] = "2750",
      ["Gems"] = "50",
      ["Coins"] = "3300",
    },
    ["Rarity"] = "Secret", 
    ["Egg"] = "Common Egg", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://90180258328030",
      ["Mythic"] = "rbxassetid://129866994329896",
      ["MythicShiny"] = "rbxassetid://137302375759932",
      ["Shiny"] = "rbxassetid://122886742812315",
    },
  },
  ["Lunar Fox"] = {
    ["Stats"] = {
      ["Bubbles"] = "45",
      ["Coins"] = "32",
    },
    ["Rarity"] = "Rare", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://79035300026236",
      ["Shiny"] = "rbxassetid://96789005954849",
    },
    ["Egg"] = "Lunar Egg", 
  },
  ["Abyssal Dragon"] = {
    ["Stats"] = {
      ["Bubbles"] = "1250",
      ["Gems"] = "20",
      ["Coins"] = "1700",
    },
    ["Rarity"] = "Legendary", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://140555653696845",
      ["Mythic"] = "rbxassetid://125134238005840",
      ["MythicShiny"] = "rbxassetid://92178733155291",
      ["Shiny"] = "rbxassetid://72350437169534",
    },
    ["Tag"] = "Rift Chest", 
  },
  ["Mech Robot"] = {
    ["Stats"] = {
      ["Bubbles"] = "3000",
      ["Gems"] = "65",
      ["Tickets"] = "3500",
    },
    ["Rarity"] = "Secret", 
    ["Egg"] = "Cyber Egg", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://130370519146743",
      ["Mythic"] = "rbxassetid://89902348379892",
      ["MythicShiny"] = "rbxassetid://129610761607639",
      ["Shiny"] = "rbxassetid://119284114227733",
    },
  },
  ["Fox"] = {
    ["Stats"] = {
      ["Bubbles"] = "3",
      ["Coins"] = "2.2",
    },
    ["Rarity"] = "Unique", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://103100921574135",
      ["Shiny"] = "rbxassetid://79433017308214",
    },
    ["Egg"] = "Spotted Egg", 
  },
  ["Trio Cube"] = {
    ["Stats"] = {
      ["Bubbles"] = "1400",
      ["Gems"] = "23",
      ["Coins"] = "1950",
    },
    ["Rarity"] = "Legendary", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://127311779883521",
      ["Mythic"] = "rbxassetid://139575878499816",
      ["MythicShiny"] = "rbxassetid://85068003627303",
      ["Shiny"] = "rbxassetid://123178696068725",
    },
    ["Tag"] = "Index Pet", 
  },
  ["Elite Soul"] = {
    ["Stats"] = {
      ["Bubbles"] = "3000",
      ["Gems"] = "65",
      ["Coins"] = "3500",
    },
    ["Rarity"] = "Legendary", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://76138184593329",
      ["Mythic"] = "rbxassetid://79208468612615",
      ["MythicShiny"] = "rbxassetid://74538893448634",
      ["Shiny"] = "rbxassetid://124666781440286",
    },
    ["Tag"] = "Competitive", 
  },
  ["MAN FACE GOD"] = {
    ["Stats"] = {
      ["Bubbles"] = "2600",
      ["Gems"] = "45",
      ["Coins"] = "3100",
    },
    ["Rarity"] = "Secret", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://82965308391958",
      ["Mythic"] = "rbxassetid://126432034432566",
      ["MythicShiny"] = "rbxassetid://110384554696096",
      ["Shiny"] = "rbxassetid://84512985957151",
    },
    ["Egg"] = "Aura Egg", 
    ["Tag"] = "Aura", 
  },
  ["Inferno Dragon"] = {
    ["Stats"] = {
      ["Bubbles"] = "75",
      ["Gems"] = "1.35",
      ["Coins"] = "65",
    },
    ["Rarity"] = "Legendary", 
    ["Egg"] = "Magma Egg", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://134572455978352",
      ["Mythic"] = "rbxassetid://80035682832524",
      ["MythicShiny"] = "rbxassetid://94747349710125",
      ["Shiny"] = "rbxassetid://89388252512800",
    },
  },
  ["Dawn"] = {
    ["Stats"] = {
      ["Bubbles"] = "1050",
      ["Gems"] = "18",
      ["Tickets"] = "1400",
    },
    ["Rarity"] = "Legendary", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://129676752705804",
      ["Shiny"] = "rbxassetid://115221531612569",
    },
    ["Tag"] = "Season 2", 
  },
  ["Hacker Prism"] = {
    ["Stats"] = {
      ["Bubbles"] = "1450",
      ["Gems"] = "22",
      ["Coins"] = "1850",
    },
    ["Rarity"] = "Legendary", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://88764484645152",
      ["Mythic"] = "rbxassetid://84850053637294",
      ["MythicShiny"] = "rbxassetid://97661041967973",
      ["Shiny"] = "rbxassetid://107346758048276",
    },
    ["Tag"] = "Rift Chest", 
  },
  ["Sunburst"] = {
    ["Stats"] = {
      ["Bubbles"] = "1300",
      ["Gems"] = "22",
      ["Coins"] = "1800",
    },
    ["Rarity"] = "Legendary", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://139143026499191",
      ["Mythic"] = "rbxassetid://91262235990773",
      ["MythicShiny"] = "rbxassetid://110348969055139",
      ["Shiny"] = "rbxassetid://88775068999267",
    },
    ["Tag"] = "Mystery Box", 
  },
  ["Moonburst"] = {
    ["Stats"] = {
      ["Bubbles"] = "1250",
      ["Gems"] = "20",
      ["Coins"] = "1700",
    },
    ["Rarity"] = "Legendary", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://122902111069533",
      ["Mythic"] = "rbxassetid://122599025431038",
      ["MythicShiny"] = "rbxassetid://107057120957083",
      ["Shiny"] = "rbxassetid://92936268760576",
    },
    ["Tag"] = "Mystery Box", 
  },
  ["Midas"] = {
    ["Stats"] = {
      ["Bubbles"] = "1325",
      ["Gems"] = "25",
      ["Coins"] = "1850",
    },
    ["Rarity"] = "Legendary", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://89307911586165",
      ["Mythic"] = "rbxassetid://115132249249329",
      ["MythicShiny"] = "rbxassetid://128269931598351",
      ["Shiny"] = "rbxassetid://80438490583372",
    },
    ["Tag"] = "Golden Mystery Box", 
  },
  ["Rainbow Blitz"] = {
    ["Stats"] = {
      ["Bubbles"] = "1250",
      ["Gems"] = "20",
      ["Coins"] = "1700",
    },
    ["Rarity"] = "Legendary", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://82248376257636",
      ["Shiny"] = "rbxassetid://127263373580765",
    },
    ["Tag"] = "Milestone Pet", 
  },
  ["Dementor"] = {
    ["Stats"] = {
      ["Bubbles"] = "3750",
      ["Gems"] = "85",
      ["Coins"] = "4250",
    },
    ["Rarity"] = "Secret", 
    ["Egg"] = "Throwback Egg", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://83620183601359",
      ["Mythic"] = "rbxassetid://90646637371519",
      ["MythicShiny"] = "rbxassetid://126118689750116",
      ["Shiny"] = "rbxassetid://70395978006731",
    },
  },
  ["Egg Bunny"] = {
    ["Stats"] = {
      ["Bubbles"] = "88",
      ["Gems"] = "1.8",
      ["Coins"] = "105",
    },
    ["Rarity"] = "Unique", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://99971205246669",
      ["Shiny"] = "rbxassetid://76077384828967",
    },
    ["Egg"] = "Bunny Egg", 
  },
  ["Avernus"] = {
    ["Stats"] = {
      ["Bubbles"] = "1900",
      ["Gems"] = "35",
      ["Coins"] = "2600",
    },
    ["Rarity"] = "Secret", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://101820906833807",
      ["Mythic"] = "rbxassetid://113077553823335",
      ["MythicShiny"] = "rbxassetid://105994587891116",
      ["Shiny"] = "rbxassetid://121235836455795",
    },
    ["Tag"] = "Season 1", 
  },
  ["Dualcorn"] = {
    ["Stats"] = {
      ["Bubbles"] = "1200",
      ["Gems"] = "21",
      ["Coins"] = "1550",
    },
    ["Rarity"] = "Legendary", 
    ["Egg"] = "Throwback Egg", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://101605071887404",
      ["Mythic"] = "rbxassetid://82858029797469",
      ["MythicShiny"] = "rbxassetid://85766838746496",
      ["Shiny"] = "rbxassetid://93628728332738",
    },
  },
  ["Lunar Deity"] = {
    ["Stats"] = {
      ["Bubbles"] = "975",
      ["Gems"] = "15.5",
      ["Coins"] = "1300",
    },
    ["Rarity"] = "Legendary", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://85587469397800",
      ["Shiny"] = "rbxassetid://130350931628389",
    },
    ["Tag"] = "Season 1", 
  },
  ["Bunnnny"] = {
    ["Stats"] = {
      ["Bubbles"] = "135",
      ["Gems"] = "2.25",
      ["Coins"] = "155",
    },
    ["Rarity"] = "Common", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://110946352972474",
      ["Shiny"] = "rbxassetid://93248525845837",
    },
    ["Egg"] = "Silly Egg", 
    ["Tag"] = "Silly", 
  },
  ["Giant Chocolate Chicken"] = {
    ["Stats"] = {
      ["Bubbles"] = "2225",
      ["Gems"] = "45",
      ["Coins"] = "3100",
    },
    ["Rarity"] = "Secret", 
    ["Egg"] = "Pastel Egg", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://78405356893234",
      ["Mythic"] = "rbxassetid://83862207009106",
      ["MythicShiny"] = "rbxassetid://91793667211055",
      ["Shiny"] = "rbxassetid://121098504222130",
    },
  },
  ["Moonlight"] = {
    ["Stats"] = {
      ["Bubbles"] = "1325",
      ["Gems"] = "23",
      ["Tickets"] = "850",
    },
    ["Rarity"] = "Legendary", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://105329662848956",
      ["Mythic"] = "rbxassetid://89913946001230",
      ["MythicShiny"] = "rbxassetid://101837907789199",
      ["Shiny"] = "rbxassetid://89009838742526",
    },
    ["Tag"] = "Season 2", 
  },
  ["Rainbow Shock"] = {
    ["Stats"] = {
      ["Bubbles"] = "1250",
      ["Gems"] = "20",
      ["Coins"] = "1700",
    },
    ["Rarity"] = "Legendary", 
    ["Egg"] = "Rainbow Egg", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://80342299362434",
      ["Mythic"] = "rbxassetid://119992028070509",
      ["MythicShiny"] = "rbxassetid://136701671381708",
      ["Shiny"] = "rbxassetid://139624175007925",
    },
  },
  ["The Overlord"] = {
    ["Stats"] = {
      ["Bubbles"] = "2100",
      ["Gems"] = "40",
      ["Coins"] = "2900",
    },
    ["Rarity"] = "Secret", 
    ["Egg"] = "Nightmare Egg", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://81862077296078",
      ["Mythic"] = "rbxassetid://82077340381689",
      ["MythicShiny"] = "rbxassetid://112536702440306",
      ["Shiny"] = "rbxassetid://116109471846939",
    },
  },
  ["Golem"] = {
    ["Stats"] = {
      ["Bubbles"] = "3",
      ["Coins"] = "4",
    },
    ["Rarity"] = "Common", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://96561772312130",
      ["Shiny"] = "rbxassetid://131695199204174",
    },
    ["Egg"] = "Spikey Egg", 
  },
  ["Demonic Hydra"] = {
    ["Stats"] = {
      ["Bubbles"] = "925",
      ["Gems"] = "15",
      ["Coins"] = "1200",
    },
    ["Rarity"] = "Legendary", 
    ["Egg"] = "Nightmare Egg", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://121007330211533",
      ["Mythic"] = "rbxassetid://94069598639630",
      ["MythicShiny"] = "rbxassetid://85260875883743",
      ["Shiny"] = "rbxassetid://121831852984011",
    },
  },
  ["Space Invader"] = {
    ["Stats"] = {
      ["Bubbles"] = "1325",
      ["Gems"] = "23",
      ["Tickets"] = "850",
    },
    ["Rarity"] = "Legendary", 
    ["Egg"] = "Cyber Egg", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://119797844957100",
      ["Mythic"] = "rbxassetid://120374926099633",
      ["MythicShiny"] = "rbxassetid://79347814813084",
      ["Shiny"] = "rbxassetid://96247663419252",
    },
  },
  ["Inferno Demon"] = {
    ["Stats"] = {
      ["Bubbles"] = "135",
      ["Coins"] = "135",
    },
    ["Rarity"] = "Epic", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://84427036623497",
      ["Shiny"] = "rbxassetid://88056809847000",
    },
    ["Egg"] = "Hell Egg", 
  },
  ["Paper Bunny"] = {
    ["Stats"] = {
      ["Bubbles"] = "55",
      ["Coins"] = "60",
    },
    ["Rarity"] = "Unique", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://126388715768535",
      ["Shiny"] = "rbxassetid://70466841700556",
    },
    ["Egg"] = "Pastel Egg", 
  },
  ["Polar Bear"] = {
    ["Stats"] = {
      ["Bubbles"] = "4",
      ["Coins"] = "2.5",
    },
    ["Rarity"] = "Rare", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://74189506845007",
      ["Shiny"] = "rbxassetid://104526732113294",
    },
    ["Egg"] = "Spotted Egg", 
  },
  ["Electra"] = {
    ["Stats"] = {
      ["Bubbles"] = "295",
      ["Gems"] = "4",
      ["Coins"] = "395",
    },
    ["Rarity"] = "Legendary", 
    ["Egg"] = "Lunar Egg", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://116500311179740",
      ["Mythic"] = "rbxassetid://138345556062231",
      ["MythicShiny"] = "rbxassetid://76505798639885",
      ["Shiny"] = "rbxassetid://138951170227797",
    },
  },
  ["Flying Pig"] = {
    ["Stats"] = {
      ["Bubbles"] = "285",
      ["Gems"] = "1.7",
      ["Coins"] = "310",
    },
    ["Rarity"] = "Legendary", 
    ["Egg"] = "Crystal Egg", 
    ["Images"] = {
      ["Normal"] = "rbxassetid://118299916052281",
      ["Mythic"] = "rbxassetid://79498492070152",
      ["MythicShiny"] = "rbxassetid://132959504112054",
      ["Shiny"] = "rbxassetid://108822579247381",
    },
  },
}
