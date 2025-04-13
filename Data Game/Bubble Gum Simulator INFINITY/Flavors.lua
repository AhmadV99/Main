local v1 = game:GetService("ReplicatedStorage")
local v10 = {
	["Bubbles"] = 1,
	["Area"] = "The Overworld",
	["Image"] = "rbxassetid://139415836850114",
	["Cost"] = {
		["Type"] = "Currency",
		["Currency"] = "Coins",
		["Amount"] = 0
	},
	["Color"] = Color3.fromRGB(255, 102, 196)
}
v8["Bubble Gum"] = v10
local v11 = {
	["Bubbles"] = 3,
	["Area"] = "The Overworld",
	["Image"] = "rbxassetid://127138637952250",
	["Cost"] = {
		["Type"] = "Currency",
		["Currency"] = "Coins",
		["Amount"] = 25
	},
	["Color"] = Color3.fromRGB(180, 106, 255)
}
v8.Blueberry = v11
local v12 = {
	["Bubbles"] = 8,
	["Area"] = "The Overworld",
	["Image"] = "rbxassetid://92526515191978",
	["Cost"] = {
		["Type"] = "Currency",
		["Currency"] = "Coins",
		["Amount"] = 500
	},
	["Color"] = Color3.fromRGB(255, 25, 29)
}
v8.Cherry = v12
local v13 = {
	["Bubbles"] = 22,
	["Area"] = "The Overworld",
	["Image"] = "rbxassetid://74366960635758",
	["Cost"] = {
		["Type"] = "Currency",
		["Currency"] = "Coins",
		["Amount"] = 1500
	},
	["Color"] = Color3.fromRGB(180, 106, 255),
	["Texture"] = {
		["ID"] = "rbxassetid://89128567391740",
		["Scale"] = 3
	}
}
v8.Pizza = v13
local v14 = {
	["Bubbles"] = 40,
	["Area"] = "The Overworld",
	["Image"] = "rbxassetid://95367549154504",
	["Cost"] = {
		["Type"] = "Currency",
		["Currency"] = "Coins",
		["Amount"] = 3500
	},
	["Color"] = Color3.fromRGB(255, 34, 159)
}
v8.Watermelon = v14
local v15 = {
	["Bubbles"] = 65,
	["Area"] = "The Overworld",
	["Image"] = "rbxassetid://88611954368055",
	["Cost"] = {
		["Type"] = "Currency",
		["Currency"] = "Coins",
		["Amount"] = 10000
	},
	["Color"] = Color3.fromRGB(67, 29, 3)
}
v8.Chocolate = v15
local v16 = {
	["Bubbles"] = 80,
	["Area"] = "Outer Space",
	["Image"] = "rbxassetid://99203979994155",
	["Cost"] = {
		["Type"] = "Currency",
		["Currency"] = "Coins",
		["Amount"] = 35000
	},
	["Color"] = Color3.new(1, 1, 1),
	["Texture"] = v7({
		["ID"] = "rbxassetid://119942239841192",
		["Scale"] = 3
	})
}
v8.Contrast = v16
local v17 = {
	["Bubbles"] = 130,
	["Area"] = "Outer Space",
	["Image"] = "rbxassetid://126786812999154",
	["Cost"] = {
		["Type"] = "Currency",
		["Currency"] = "Coins",
		["Amount"] = 100000
	},
	["Color"] = Color3.fromRGB(200, 158, 60)
}
v8.Gold = v17
local v18 = {
	["Bubbles"] = 210,
	["Area"] = "Outer Space",
	["Image"] = "rbxassetid://72014486118689",
	["Cost"] = {
		["Type"] = "Currency",
		["Currency"] = "Coins",
		["Amount"] = 450000
	},
	["Color"] = Color3.fromRGB(255, 225, 0)
}
v8.Lemon = v18
local v19 = {
	["Bubbles"] = 400,
	["Area"] = "Zen",
	["Image"] = "rbxassetid://75404662749637",
	["Cost"] = {
		["Type"] = "Currency",
		["Currency"] = "Coins",
		["Amount"] = 1500000
	},
	["Color"] = Color3.fromRGB(255, 147, 246),
	["Texture"] = v7({
		["ID"] = "rbxassetid://109378738043919",
		["Scale"] = 2
	})
}
v8.Donut = v19
local v20 = {
	["Bubbles"] = 950,
	["Area"] = "Zen",
	["Image"] = "rbxassetid://93287710605733",
	["Cost"] = {
		["Type"] = "Currency",
		["Currency"] = "Coins",
		["Amount"] = 30000000
	},
	["Color"] = Color3.new(1, 1, 1),
	["Texture"] = v7({
		["ID"] = "rbxassetid://114500364224740",
		["Scale"] = 2
	})
}
v8.Swirl = v20
local v29 = {
	["Bubbles"] = 1450,
	["Area"] = "Zen",
	["Image"] = "rbxassetid://133398951715883",
	["Cost"] = {
		["Type"] = "Currency",
		["Currency"] = "Coins",
		["Amount"] = 350000000
	},
	["Color"] = (function(p21)
		local v22 = {}
		for v23 = 1, #p21 do
			local v24 = ColorSequenceKeypoint.new
			local v25 = (v23 - 1) / #p21
			local v26 = p21[v23]
			table.insert(v22, v24(v25, v26))
		end
		local v27 = ColorSequenceKeypoint.new
		local v28 = p21[1]
		table.insert(v22, v27(1, v28))
		return ColorSequence.new(v22)
	end)({ Color3.fromRGB(197, 111, 25), Color3.fromRGB(255, 177, 20) }),
	["Material"] = Enum.Material.Neon,
	["Texture"] = v7({
		["ID"] = "rbxassetid://17321826076",
		["Scale"] = 2
	})
}
v8.Molten = v29
return v8
