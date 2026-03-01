local v1 = {
    ["RestockInterval"] = 300,
    ["ShopId"] = "GearShop"
}
local v2 = {
    ["Watering Can"] = {
        ["Name"] = "Watering Can",
        ["Price"] = 5000,
        ["Stack"] = 5,
        ["StockAmount"] = { 3, 8 },
        ["StockChance"] = 1,
        ["LayoutOrder"] = 10,
        ["DisplayInShop"] = true
    },
    ["Basic Sprinkler"] = {
        ["Name"] = "Basic Sprinkler",
        ["Price"] = 15000,
        ["StockAmount"] = { 2, 4 },
        ["StockChance"] = 3,
        ["LayoutOrder"] = 20,
        ["DisplayInShop"] = true
    },
    ["Harvest Bell"] = {
        ["Name"] = "Harvest Bell",
        ["Price"] = 35000,
        ["StockAmount"] = { 2, 5 },
        ["StockChance"] = 5,
        ["LayoutOrder"] = 30,
        ["DisplayInShop"] = true
    },
    ["Turbo Sprinkler"] = {
        ["Name"] = "Turbo Sprinkler",
        ["Price"] = 60000,
        ["StockAmount"] = { 1, 3 },
        ["StockChance"] = 12,
        ["LayoutOrder"] = 40,
        ["DisplayInShop"] = true
    },
    ["Favorite Tool"] = {
        ["Name"] = "Favorite Tool",
        ["Price"] = 80000,
        ["Stack"] = 2,
        ["StockAmount"] = { 4, 8 },
        ["StockChance"] = 1,
        ["LayoutOrder"] = 45,
        ["DisplayInShop"] = true
    },
    ["Super Sprinkler"] = {
        ["Name"] = "Super Sprinkler",
        ["Price"] = 100000,
        ["StockAmount"] = { 1, 2 },
        ["StockChance"] = 30,
        ["LayoutOrder"] = 50,
        ["DisplayInShop"] = true
    },
    ["Trowel"] = {
        ["Name"] = "Trowel",
        ["Price"] = 250000,
        ["Stack"] = 5,
        ["StockAmount"] = { 1, 3 },
        ["StockChance"] = 1,
        ["LayoutOrder"] = 60,
        ["DisplayInShop"] = false
    }
}
v1.ShopData = v2
return v1
