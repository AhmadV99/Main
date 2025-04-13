local v1 = game:GetService("ReplicatedStorage")
local v2 = {}
local v3 = {
	["Order"] = 1,
	["Gravity"] = 1,
	["CurrencyCap"] = {
		["Gems"] = 10000000,
		["Coins"] = 250000000000
	},
	["Banner"] = "rbxassetid://113819698447339",
	["Track"] = "rbxassetid://120971121177899",
	["Reward"] = {
		["Type"] = "Pet",
		["Name"] = "Trio Cube"
	}
}
local v4 = {}
local v5 = {
	["Name"] = "Floating Island",
	["Track"] = "rbxassetid://79847630941930",
	["Height"] = 450
}
local v6 = {}
local v7 = {
	["Chance"] = 20,
	["Item"] = {
		["Visual"] = "Coin",
		["Item"] = {
			["Type"] = "Currency",
			["Currency"] = "Coins",
			["Amount"] = 5
		}
	}
}
local v8 = {
	["Chance"] = 60,
	["Item"] = {
		["Visual"] = "Coin Pile",
		["Item"] = {
			["Type"] = "Currency",
			["Currency"] = "Coins",
			["Amount"] = 9
		}
	}
}
local v9 = {
	["Chance"] = 20,
	["Item"] = {
		["Visual"] = "Coin Stack",
		["Item"] = {
			["Type"] = "Currency",
			["Currency"] = "Coins",
			["Amount"] = 15
		}
	}
}
__set_list(v6, 1, {v7, v8, v9})
v5.Pickups = v6
local v10 = {
	["Name"] = "Outer Space",
	["Track"] = "rbxassetid://127333871605686",
	["Height"] = 2500
}
local v11 = {}
local v12 = {
	["Chance"] = 60,
	["Item"] = {
		["Visual"] = "Coin Pile",
		["Item"] = {
			["Type"] = "Currency",
			["Currency"] = "Coins",
			["Amount"] = 20
		}
	}
}
local v13 = {
	["Chance"] = 40,
	["Item"] = {
		["Visual"] = "Coin Stack",
		["Item"] = {
			["Type"] = "Currency",
			["Currency"] = "Coins",
			["Amount"] = 35
		}
	}
}
__set_list(v11, 1, {v12, v13})
v10.Pickups = v11
local v14 = {
	["Name"] = "Twilight",
	["Height"] = 6500
}
local v15 = {}
local v16 = {
	["Chance"] = 65,
	["Item"] = {
		["Visual"] = "Coin Stack",
		["Item"] = {
			["Type"] = "Currency",
			["Currency"] = "Coins",
			["Amount"] = 35
		}
	}
}
local v17 = {
	["Chance"] = 25,
	["Item"] = {
		["Visual"] = "Coin Box",
		["Item"] = {
			["Type"] = "Currency",
			["Currency"] = "Coins",
			["Amount"] = 55
		}
	}
}
local v18 = {
	["Chance"] = 10,
	["Item"] = {
		["Visual"] = "Gem",
		["Item"] = {
			["Type"] = "Currency",
			["Currency"] = "Gems",
			["Amount"] = 5
		}
	}
}
__set_list(v15, 1, {v16, v17, v18})
v14.Pickups = v15
local v19 = {
	["Name"] = "The Void",
	["Track"] = "rbxassetid://123871918047474",
	["Height"] = 9500
}
local v20 = {}
local v21 = {
	["Chance"] = 32,
	["Item"] = {
		["Visual"] = "Coin Stack",
		["Item"] = {
			["Type"] = "Currency",
			["Currency"] = "Coins",
			["Amount"] = 75
		}
	}
}
local v22 = {
	["Chance"] = 40,
	["Item"] = {
		["Visual"] = "Coin Box",
		["Item"] = {
			["Type"] = "Currency",
			["Currency"] = "Coins",
			["Amount"] = 100
		}
	}
}
local v23 = {
	["Chance"] = 10,
	["Item"] = {
		["Visual"] = "Coin Safe",
		["Item"] = {
			["Type"] = "Currency",
			["Currency"] = "Coins",
			["Amount"] = 150
		}
	}
}
local v24 = {
	["Chance"] = 10,
	["Item"] = {
		["Visual"] = "Coin Chest",
		["Item"] = {
			["Type"] = "Currency",
			["Currency"] = "Coins",
			["Amount"] = 225
		}
	}
}
local v25 = {
	["Chance"] = 10,
	["Item"] = {
		["Visual"] = "Gem",
		["Item"] = {
			["Type"] = "Currency",
			["Currency"] = "Gems",
			["Amount"] = 10
		}
	}
}
local v26 = {
	["Chance"] = 5,
	["Item"] = {
		["Visual"] = "Gem Box",
		["Item"] = {
			["Type"] = "Currency",
			["Currency"] = "Gems",
			["Amount"] = 25
		}
	}
}
local v27 = {
	["Chance"] = 3,
	["Item"] = {
		["Visual"] = "Gem Safe",
		["Item"] = {
			["Type"] = "Currency",
			["Currency"] = "Gems",
			["Amount"] = 45
		}
	}
}
__set_list(v20, 1, {v21, v22, v23, v24, v25, v26, v27})
v19.Pickups = v20
local v28 = {
	["Name"] = "Zen",
	["Track"] = "rbxassetid://74221459897724",
	["Height"] = 15000
}
local v29 = {}
local v30 = {
	["Chance"] = 20,
	["Item"] = {
		["Visual"] = "Coin Safe",
		["Item"] = {
			["Type"] = "Currency",
			["Currency"] = "Coins",
			["Amount"] = 300
		}
	}
}
local v31 = {
	["Chance"] = 20,
	["Item"] = {
		["Visual"] = "Coin Chest",
		["Item"] = {
			["Type"] = "Currency",
			["Currency"] = "Coins",
			["Amount"] = 475
		}
	}
}
local v32 = {
	["Chance"] = 30,
	["Item"] = {
		["Visual"] = "Gem",
		["Item"] = {
			["Type"] = "Currency",
			["Currency"] = "Gems",
			["Amount"] = 15
		}
	}
}
local v33 = {
	["Chance"] = 15,
	["Item"] = {
		["Visual"] = "Gem Box",
		["Item"] = {
			["Type"] = "Currency",
			["Currency"] = "Gems",
			["Amount"] = 30
		}
	}
}
local v34 = {
	["Chance"] = 10,
	["Item"] = {
		["Visual"] = "Gem Safe",
		["Item"] = {
			["Type"] = "Currency",
			["Currency"] = "Gems",
			["Amount"] = 50
		}
	}
}
local v35 = {
	["Chance"] = 5,
	["Item"] = {
		["Visual"] = "Gem Chest",
		["Item"] = {
			["Type"] = "Currency",
			["Currency"] = "Gems",
			["Amount"] = 125
		}
	}
}
__set_list(v29, 1, {v30, v31, v32, v33, v34, v35})
v28.Pickups = v29
__set_list(v4, 1, {v5, v10, v14, v19, v28})
v3.Islands = v4
local v36 = {}
local v37 = {
	["Chance"] = 60,
	["Item"] = {
		["Visual"] = "Coin",
		["Item"] = {
			["Type"] = "Currency",
			["Currency"] = "Coins",
			["Amount"] = 5
		}
	}
}
local v38 = {
	["Chance"] = 30,
	["Item"] = {
		["Visual"] = "Coin Pile",
		["Item"] = {
			["Type"] = "Currency",
			["Currency"] = "Coins",
			["Amount"] = 9
		}
	}
}
local v39 = {
	["Chance"] = 10,
	["Item"] = {
		["Visual"] = "Coin Stack",
		["Item"] = {
			["Type"] = "Currency",
			["Currency"] = "Coins",
			["Amount"] = 12
		}
	}
}
__set_list(v36, 1, {v37, v38, v39})
v3.Pickups = v36
v2["The Overworld"] = v3
return v2
