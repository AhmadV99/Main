return {
    Sharpness = {
        Name = "Sharpness", 
        Desc = "Increase the damage of the weapon", 
        Icon = "rbxassetid://14959067115", 
        Level = NumberRange.new(1, 8), 
        Rarity = 30, 
        Type = "Weapon", 
        Buffs = {
            [1] = {
                BaseDamage = 1.03
            }, 
            [2] = {
                BaseDamage = 1.05
            }, 
            [3] = {
                BaseDamage = 1.07
            }, 
            [4] = {
                BaseDamage = 1.09
            }, 
            [5] = {
                BaseDamage = 1.11
            }
        }
    }, 
    Loot = {
        Name = "Loot", 
        Desc = "Increase the amount of dust dropped", 
        Icon = "rbxassetid://14958054030", 
        Level = NumberRange.new(1, 3), 
        Rarity = 30, 
        Type = "Weapon", 
        Buffs = {
            [1] = {
                LootChance = 1.03
            }, 
            [2] = {
                LootChance = 1.05
            }, 
            [3] = {
                LootChance = 1.07
            }
        }
    }, 
    Vorpal = {
        Name = "Vorpal", 
        Desc = "Increases the chances of landing critical hits", 
        Icon = "rbxassetid://13845974848", 
        Level = NumberRange.new(1, 7), 
        Rarity = 33, 
        Type = "Weapon", 
        Buffs = {
            [1] = {
                CriticalChance = 1.03
            }, 
            [2] = {
                CriticalChance = 1.05
            }, 
            [3] = {
                CriticalChance = 1.07
            }, 
            [4] = {
                CriticalChance = 1.09
            }, 
            [5] = {
                CriticalChance = 1.11
            }
        }
    }, 
    FireAspect = {
        Name = "Burning Flame", 
        Desc = "Sets the target on fire", 
        Icon = "rbxassetid://96866872713903", 
        Level = NumberRange.new(1, 3), 
        Rarity = 5, 
        Type = "Weapon", 
        Unique = true, 
        HaveEffect = true, 
        Buffs = {
            [1] = {
                FireAspect = 1
            }, 
            [2] = {
                FireAspect = 2
            }
        }
    }, 
    VorpalAspect = {
        Name = "Vorpal Aspect", 
        Desc = "Your weapon is too fast, that will hit a second time!", 
        Icon = "rbxassetid://100388998092003", 
        Level = NumberRange.new(1, 4), 
        Rarity = 1, 
        Type = "Weapon", 
        Unique = true, 
        Require = {
            Title = "Vorpal Soul"
        }, 
        HaveEffect = true, 
        Buffs = {
            [1] = {
                VorpalAspect = 1
            }, 
            [2] = {
                VorpalAspect = 2
            }, 
            [3] = {
                VorpalAspect = 3
            }
        }
    }
};
