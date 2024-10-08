Config = {}

Config.Framework = "qb" -- "qb" / "oldqb" : qb = export system , oldqb = trigger event system
Config.sql = "oxmysql" -- don't forget to change fxmanifest.lua! |ghmattimysql - oxmysql - mysql-async

Config.Settings = {
    ["canOpenWithCommand"] = false, -- CAN THE MENU BE OPENED BY COMMAND
    ["menuOpenCommand"] = "fishingmenu", 
    ["addXP"] = {min = 20, max = 100}, -- The amount of xp to be given after fishing
    ["addxpafterXcatch"] = 3, -- How many successful catches after which xp will be given
    ["needxpforlevelup"] = 500, -- How many xp needed to level up
    ["addTrashWithoutBait"] = 1, -- HOW MANY MORE TRASH ITEMS WILL APPEAR WITHOUT FISH BAIT
    ["rodBrokeChanceWhenUpgrade"] = 20, -- WHAT IS THE CHANCE OF BREAKING THE FISHING ROD DURING UPGRADE?
    ["eatBaitChance"] = 80, -- WHAT IS THE PERCENT CHANCE THAT THE BAIT WILL BE CONSUMED AFTER FISHING
    ["illegalBaitName"] = "illegalfishbait", -- TYPE OF BAIT REQUIRED TO CATCH ILLEGAL FISH
    ["tasksResetDay"] = 3, -- HOW MANY DAYS AFTER A TASK IS RECEIVED WILL IT BE RESET (EVEN IF 1 TASK IS RECEIVED, ALL TASKS WILL BE DELETED AFTER THE SPECIFIED DAY)
}

Config.Language = {
    ["eatBaitText"] = "You lost your fish bait.",
    ["catchFish"] = "You caught it!",
    ["youCantFishHere"] = "You can't fish here!",
    ["somethingStoppingFish"] = "Something is stopping you from fishing.",
    ["movementOnRod"] = "There's movement on your rod!",
    ["missedFish"] = "You missed the fish.",
    ["noLeftBait"] = "There is no bait left on your hook!",
    ["fishingHBStopped"] = "Fishing stopped.",
    ["illegalCant"] = "You can't catch illegal fish in this area!",
    ["useBaitNotFishing"] = "You must hold the rod to bait it!",
    ["youDontHaveItemUPGRADE"] = "You don't have the necessary item to upgrade!",
    ["upgradedRod"] = "Your fishing rod has been upgraded to the next level!",
    ["brokenRod"] = "Your rod broke!",
    ["youDontHave"] = "You don't have it!",
    ["youDontHaveMoney"] = "You don't have enough money!",
    ["youDontHaveEnoughSpace"] = "You don't have enough space to carry the item!",
    ["youDontHaveWantSell"] = "You don't have the item you want to sell!",
    ["succesBuy"] = "You bought: ",
    ["succesSold"] = "You sold: ",
}

Config.Customize = {
    title = "Server Name",
    fishAreaTitle = "Fish",
    taskAreaTitle = "Your Tasks",
    currentXP = "Current XP:",
    requiredXP = "Required XP:",
}

Config.FishLevels = { -- ALL FISH THAT CAN BE CAUGHT IN THE FISHING SYSTEM AND THEIR LEVELS (THIS IS NOT THE FISHING ROD LEVEL) (ALL FISH MUST BE LISTED HERE)
    ["anchovy"] = 1,
    ["smallbluefish"] = 2,
    ["bluefish"] = 5,
    ["bonitosfish"] = 9,
    ["garfish"] = 11,
    ["perch"] = 13,
    ["carettacaretta"] = 15,
    ["sharkfish"] = 20,
    ["whitepearl"] = 1,
    ["bluepearl"] = 1,
    ["redpearl"] = 1,
    ["greenpearl"] = 1,
    ["yellowpearl"] = 1,
}

Config.fishingRods = { -- FISHING RODS, ITEM NAMES, AND LEVELS
    {itemName = "fishingrod1", level = 1},
    {itemName = "fishingrod2", level = 2},
    {itemName = "fishingrod3", level = 3},
    {itemName = "fishingrod4", level = 4},
    {itemName = "fishingrod5", level = 5},
}

Config.fishBaits = { -- FISH BAITS AND BAIT TYPES
    {itemName = "fishbait", baitType = "fish"},
    {itemName = "illegalfishbait", baitType = "illegal"},
}

-- MUST START WITH TABLE 1 - TABLE 1 ACTUALLY POINTS TO LEVEL 2 FISHING ROD
Config.upgradeRodPrices = { -- PRICE LIST FOR FISHING ROD UPGRADE
    [1] = 1500, -- LEVEL 2 
    [2] = 3000, -- LEVEL 3
    [3] = 6000, -- LEVEL 4 
    [4] = 9000, -- LEVEL 5
}

Config.fishMenuArea = { -- GO NEAR AND PRESS E TO OPEN THE FISH MENU
    {
        pedName = "William", 
        pedHash = 0x0B881AEE, 
        pedCoord = vector3(-904.24, -1435.54, 3.9),
        drawText = "[E] - Fisherman",
        h = 206,
        blipSettings = { -- https://docs.fivem.net/docs/game-references/blips/
            blip = false,
            blipName = "Fisherman",
            blipIcon = 68,
            blipColour = 3,
        },
    },
}

Config.upgradeRodArea = { -- ROD UPGRADE AREAS
    {
        pedName = "John", 
        pedHash = 0x1EEC7BDC, 
        pedCoord = vector3(-901.38, -1434.46, 3.9), 
        drawText = "[E] - Upgrade Fishing Rod",
        h = 200,
        blipSettings = { -- https://docs.fivem.net/docs/game-references/blips/
            blip = false,
            blipName = "Upgrade Rod",
            blipIcon = 68,
            blipColour = 3,
        },
    },
}

Config.marketArea = { -- MARKET AREAS (BUYING AND SELLING)
    {
        pedName = "Mike", 
        pedHash = 0xAE5BE23A, 
        pedCoord = vector3(-898.0, -1433.25, 3.9), 
        drawText = "[E] - Fisherman Market",
        h = 205,
        blipSettings = { -- https://docs.fivem.net/docs/game-references/blips/
            blip = true,
            blipName = "Fisherman Market",
            blipIcon = 68,
            blipColour = 3,
        },
    },
}

Config.buyMarketItems = { -- LIST OF ITEMS SOLD IN THE FISH MARKET (BUY MENU)
    {itemId = 1, itemName = "fishingrod1", itemLabel = "Rod 1Lv.", itemPrice = 50, image = './css/imgs/fishingrod.png'},
    {itemId = 2, itemName = "fishbait", itemLabel = "Fish Bait", itemPrice = 5, image = './css/imgs/fishbait.png'},
    {itemId = 3, itemName = "illegalfishbait", itemLabel = "Illegal Fish Bait", itemPrice = 30, image = './css/imgs/illegalfishbait.png'},
}

Config.Zones = { -- FISHING AREAS
    { -- Motel
        coords = vector3(-890.3, -1439.91, 4.9), -- FISHING AREA COORDINATES
        radius = 150, -- RADIUS LEVEL OF THE ABOVE COORDINATE 
        blipSettings = { -- https://docs.fivem.net/docs/game-references/blips/
            blip = false,
            blipAlpha = false,
            blipName = "Fishing Area",
            blipIcon = 68,
            blipColour = 3,
            blipAlphaColour = 2,
        },
        trashChance = 15, -- PERCENTAGE OF TRASH ITEMS GIVEN WHILE FISHING IN THIS COORDINATE
        rareChance = 5, -- PERCENTAGE OF VALUABLE ITEMS GIVEN WHILE FISHING IN THIS COORDINATE
        illegal = false, -- CAN ILLEGAL ITEMS BE CAUGHT IN THIS COORDINATE?
        items = { -- ITEMS THAT WILL APPEAR WHILE FISHING IN THIS AREA
            trashItems = {"fishbait", "fish"}, -- TRASH ITEMS
            rare = { -- RARE ITEMS
                rodLevel = {
                    [1] = {"whitepearl"}, -- WHAT CAN BE CAUGHT WITH A LEVEL 1 FISHING ROD
                    [2] = {"whitepearl", "bluepearl"}, -- WHAT CAN BE CAUGHT WITH A LEVEL 2 FISHING ROD
                    [3] = {"whitepearl", "bluepearl","redpearl"}, -- WHAT CAN BE CAUGHT WITH A LEVEL 3 FISHING ROD
                    [4] = {"whitepearl", "bluepearl","redpearl","yellowpearl"}, -- WHAT CAN BE CAUGHT WITH A LEVEL 4 FISHING ROD
                    [5] = {"whitepearl", "bluepearl","redpearl","yellowpearl","greenpearl"}, -- WHAT CAN BE CAUGHT WITH A LEVEL 5 FISHING ROD
                },
            },
            normal = { -- NORMAL ITEMS 
                rodLevel = {
                    [1] = {"anchovy"}, -- WHAT CAN BE CAUGHT WITH A LEVEL 1 FISHING ROD
                    [2] = {"anchovy", "smallbluefish"}, -- WHAT CAN BE CAUGHT WITH A LEVEL 2 FISHING ROD 
                    [3] = {"anchovy", "smallbluefish", "bluefish","bonitosfish"}, -- WHAT CAN BE CAUGHT WITH A LEVEL 3 FISHING ROD
                    [4] = {"anchovy", "smallbluefish", "bluefish","bonitosfish","garfish"}, -- WHAT CAN BE CAUGHT WITH A LEVEL 4 FISHING ROD
                    [5] = {"anchovy", "smallbluefish", "bluefish","bonitosfish","garfish","perch"}, -- WHAT CAN BE CAUGHT WITH A LEVEL 5 FISHING ROD
                },
            },
            illegal = { -- ILLEGAL ITEMS
                rodLevel = {
                    [1] = {"anchovy"}, -- WHAT CAN BE CAUGHT WITH A LEVEL 1 FISHING ROD
                    [2] = {"anchovy", "smallbluefish"}, -- WHAT CAN BE CAUGHT WITH A LEVEL 2 FISHING ROD 
                    [3] = {"anchovy", "smallbluefish", "bluefish","bonitosfish"}, -- WHAT CAN BE CAUGHT WITH A LEVEL 3 FISHING ROD
                    [4] = {"anchovy", "smallbluefish", "bluefish","bonitosfish","garfish"}, -- WHAT CAN BE CAUGHT WITH A LEVEL 4 FISHING ROD
                    [5] = {"anchovy", "smallbluefish", "bluefish","bonitosfish","garfish","perch"}, -- WHAT CAN BE CAUGHT WITH A LEVEL 5 FISHING ROD
                },
            },
        },
    },
    { -- Pier
        coords = vector3(-1849.7, -1250.9, 8.62), -- FISHING AREA COORDINATES
        radius = 150, -- RADIUS LEVEL OF THE ABOVE COORDINATE 
        blipSettings = { -- https://docs.fivem.net/docs/game-references/blips/
            blip = false,
            blipAlpha = false,
            blipName = "Fishing Area",
            blipIcon = 68,
            blipColour = 3,
            blipAlphaColour = 2,
        },
        trashChance = 15, -- PERCENTAGE OF TRASH ITEMS GIVEN WHILE FISHING IN THIS COORDINATE
        rareChance = 5, -- PERCENTAGE OF VALUABLE ITEMS GIVEN WHILE FISHING IN THIS COORDINATE
        illegal = false, -- CAN ILLEGAL ITEMS BE CAUGHT IN THIS COORDINATE?
        items = { -- ITEMS THAT WILL APPEAR WHILE FISHING IN THIS AREA
            trashItems = {"fishbait", "fish"}, -- TRASH ITEMS
            rare = { -- RARE ITEMS
                rodLevel = {
                    [1] = {"whitepearl"}, -- WHAT CAN BE CAUGHT WITH A LEVEL 1 FISHING ROD
                    [2] = {"whitepearl", "bluepearl"}, -- WHAT CAN BE CAUGHT WITH A LEVEL 2 FISHING ROD
                    [3] = {"whitepearl", "bluepearl","redpearl"}, -- WHAT CAN BE CAUGHT WITH A LEVEL 3 FISHING ROD
                    [4] = {"whitepearl", "bluepearl","redpearl","yellowpearl"}, -- WHAT CAN BE CAUGHT WITH A LEVEL 4 FISHING ROD
                    [5] = {"whitepearl", "bluepearl","redpearl","yellowpearl","greenpearl"}, -- WHAT CAN BE CAUGHT WITH A LEVEL 5 FISHING ROD
                },
            },
            normal = { -- NORMAL ITEMS 
                rodLevel = {
                    [1] = {"anchovy"}, -- WHAT CAN BE CAUGHT WITH A LEVEL 1 FISHING ROD
                    [2] = {"anchovy", "smallbluefish"}, -- WHAT CAN BE CAUGHT WITH A LEVEL 2 FISHING ROD 
                    [3] = {"anchovy", "smallbluefish", "bluefish","bonitosfish"}, -- WHAT CAN BE CAUGHT WITH A LEVEL 3 FISHING ROD
                    [4] = {"anchovy", "smallbluefish", "bluefish","bonitosfish","garfish"}, -- WHAT CAN BE CAUGHT WITH A LEVEL 4 FISHING ROD
                    [5] = {"anchovy", "smallbluefish", "bluefish","bonitosfish","garfish","perch"}, -- WHAT CAN BE CAUGHT WITH A LEVEL 5 FISHING ROD
                },
            },
            illegal = { -- ILLEGAL ITEMS
                rodLevel = {
                    [1] = {"anchovy"}, -- WHAT CAN BE CAUGHT WITH A LEVEL 1 FISHING ROD
                    [2] = {"anchovy", "smallbluefish"}, -- WHAT CAN BE CAUGHT WITH A LEVEL 2 FISHING ROD 
                    [3] = {"anchovy", "smallbluefish", "bluefish","bonitosfish"}, -- WHAT CAN BE CAUGHT WITH A LEVEL 3 FISHING ROD
                    [4] = {"carettacaretta"}, -- WHAT CAN BE CAUGHT WITH A LEVEL 4 FISHING ROD
                    [5] = {"carettacaretta","sharkfish"}, -- WHAT CAN BE CAUGHT WITH A LEVEL 5 FISHING ROD
                },
            },
        },
    },
    { -- ILLEGAL AREA
        coords = vector3(-2135.43, -1491.0, 0.0), -- FISHING AREA COORDINATES
        radius = 300, -- RADIUS LEVEL OF THE ABOVE COORDINATE 
        blipSettings = { -- https://docs.fivem.net/docs/game-references/blips/
            blip = false,
            blipAlpha = false,
            blipName = "Illegal Fishing Area",
            blipIcon = 68,
            blipColour = 3,
            blipAlphaColour = 49,
        },
        trashChance = 50, -- PERCENTAGE OF TRASH ITEMS GIVEN WHILE FISHING IN THIS COORDINATE
        rareChance = 50, -- PERCENTAGE OF VALUABLE ITEMS GIVEN WHILE FISHING IN THIS COORDINATE
        illegal = true, -- CAN ILLEGAL ITEMS BE CAUGHT IN THIS COORDINATE?
        items = { -- ITEMS THAT WILL APPEAR WHILE FISHING IN THIS AREA
            trashItems = {"illegalfishbait", "fish"}, -- TRASH ITEMS
            rare = { -- RARE ITEMS
                rodLevel = {
                    [1] = {"sharkfish"}, -- WHAT CAN BE CAUGHT WITH A LEVEL 1 FISHING ROD
                    [2] = {"sharkfish", "sharkfish"}, -- WHAT CAN BE CAUGHT WITH A LEVEL 2 FISHING ROD
                    [3] = {"sharkfish", "sharkfish", "sharkfish"}, -- WHAT CAN BE CAUGHT WITH A LEVEL 3 FISHING ROD
                    [4] = {"sharkfish", "sharkfish", "sharkfish", "sharkfish"}, -- WHAT CAN BE CAUGHT WITH A LEVEL 4 FISHING ROD
                    [5] = {"sharkfish", "sharkfish", "sharkfish", "sharkfish", "sharkfish"}, -- WHAT CAN BE CAUGHT WITH A LEVEL 5 FISHING ROD
                },
            },
            normal = { -- NORMAL ITEMS 
                rodLevel = {
                    [1] = {"anchovy"}, -- WHAT CAN BE CAUGHT WITH A LEVEL 1 FISHING ROD
                    [2] = {"anchovy", "pantfish"}, -- WHAT CAN BE CAUGHT WITH A LEVEL 2 FISHING ROD 
                    [3] = {"anchovy", "pantfish", "bluefish", "bonitosfish"}, -- WHAT CAN BE CAUGHT WITH A LEVEL 3 FISHING ROD
                    [4] = {"anchovy", "pantfish", "bluefish", "bonitosfish", "garfish"}, -- WHAT CAN BE CAUGHT WITH A LEVEL 4 FISHING ROD
                    [5] = {"anchovy", "pantfish", "bluefish", "bonitosfish", "garfish", "perch"}, -- WHAT CAN BE CAUGHT WITH A LEVEL 5 FISHING ROD
                },
            },
            illegal = { -- ILLEGAL ITEMS
                rodLevel = {
                    [1] = {"anchovy"}, -- WHAT CAN BE CAUGHT WITH A LEVEL 1 FISHING ROD
                    [2] = {"anchovy", "pantfish"}, -- WHAT CAN BE CAUGHT WITH A LEVEL 2 FISHING ROD 
                    [3] = {"anchovy", "pantfish", "bluefish", "bonitosfish"}, -- WHAT CAN BE CAUGHT WITH A LEVEL 3 FISHING ROD
                    [4] = {"carettacaretta"}, -- WHAT CAN BE CAUGHT WITH A LEVEL 4 FISHING ROD
                    [5] = {"carettacaretta", "sharkfish"}, -- WHAT CAN BE CAUGHT WITH A LEVEL 5 FISHING ROD
                },
            },
        },
    },
}

Config.Tasks = { -- TASKS THAT APPEAR IN THE FISH MENU
    {
        taskId = 1, -- TASK NUMBER (ALL TASKS MUST BE NUMBERED DIFFERENTLY AND SEQUENTIALLY)
        taskName = "Catch 40 Small Blue Fish", -- NAME OF THE TASK AS IT APPEARS IN THE MENU
        itemName = "smallbluefish", -- TASK ITEM
        moneyRewards = 200, -- REWARD MONEY FOR THE TASK
        xpRewards = 500, -- XP REWARD FOR THE TASK
        requiredCount = 40, -- NUMBER OF FISH NEEDED TO COMPLETE THE TASK
        taskDescription = "Collect your reward after completing the task.",
    },
    {
        taskId = 2, -- TASK NUMBER (ALL TASKS MUST BE NUMBERED DIFFERENTLY AND SEQUENTIALLY)
        taskName = "Catch 30 Blue Fish", -- NAME OF THE TASK AS IT APPEARS IN THE MENU
        itemName = "bluefish", -- TASK ITEM
        moneyRewards = 400, -- REWARD MONEY FOR THE TASK
        xpRewards = 500, -- XP REWARD FOR THE TASK
        requiredCount = 30, -- NUMBER OF FISH NEEDED TO COMPLETE THE TASK
        taskDescription = "Collect your reward after completing the task.",
    },
    {
        taskId = 3, -- TASK NUMBER (ALL TASKS MUST BE NUMBERED DIFFERENTLY AND SEQUENTIALLY)
        taskName = "Catch 20 Bonitos", -- NAME OF THE TASK AS IT APPEARS IN THE MENU
        itemName = "bonitosfish", -- TASK ITEM
        moneyRewards = 600, -- REWARD MONEY FOR THE TASK
        xpRewards = 500, -- XP REWARD FOR THE TASK
        requiredCount = 20, -- NUMBER OF FISH NEEDED TO COMPLETE THE TASK
        taskDescription = "Collect your reward after completing the task.",
    },
    {
        taskId = 4, -- TASK NUMBER (ALL TASKS MUST BE NUMBERED DIFFERENTLY AND SEQUENTIALLY)
        taskName = "Catch 15 Garfish", -- NAME OF THE TASK AS IT APPEARS IN THE MENU
        itemName = "garfish", -- TASK ITEM
        moneyRewards = 800, -- REWARD MONEY FOR THE TASK
        xpRewards = 500, -- XP REWARD FOR THE TASK
        requiredCount = 15, -- NUMBER OF FISH NEEDED TO COMPLETE THE TASK
        taskDescription = "Collect your reward after completing the task.",
    },
    {
        taskId = 5, -- TASK NUMBER (ALL TASKS MUST BE NUMBERED DIFFERENTLY AND SEQUENTIALLY)
        taskName = "Catch 10 Perch", -- NAME OF THE TASK AS IT APPEARS IN THE MENU
        itemName = "perch", -- TASK ITEM
        moneyRewards = 1000, -- REWARD MONEY FOR THE TASK
        xpRewards = 500, -- XP REWARD FOR THE TASK
        requiredCount = 10, -- NUMBER OF FISH NEEDED TO COMPLETE THE TASK
        taskDescription = "Collect your reward after completing the task.",
    },
    {
        taskId = 6, -- TASK NUMBER (ALL TASKS MUST BE NUMBERED DIFFERENTLY AND SEQUENTIALLY)
        taskName = "Catch 20 Sharks", -- NAME OF THE TASK AS IT APPEARS IN THE MENU
        itemName = "sharkfish", -- TASK ITEM
        moneyRewards = 1200, -- REWARD MONEY FOR THE TASK
        xpRewards = 500, -- XP REWARD FOR THE TASK
        requiredCount = 20, -- NUMBER OF FISH NEEDED TO COMPLETE THE TASK
        taskDescription = "Collect your reward after completing the task.",
    },
}

Config.Fishes = { -- /FISH MENU SETTINGS
    {
        id = 1, -- FISH ID (ID OF ALL FISH MUST BE DIFFERENT AND SEQUENTIAL)
        fishName = "Anchovy", -- THE APPARENT NAME OF THE FISH
        itemName = "anchovy", -- ITEM NAME OF THE FISH
        requiredLevel = 1, -- DESIRED LEVEL TO CATCH THE FISH (DON'T FORGET TO CHANGE IT IN Config.FishLevels)
        requiredRodLvl = 1, -- FISHING ROD LEVEL REQUIRED TO CATCH THE FISH
        fishPrice = 25, -- SALE PRICE OF FISH
        onFishMenu = true, -- /FISH APPEARS OR DOES NOT APPEAR IN THE MENU - TRUE: APPEARS _ FALSE: DOES NOT APPEAR
        fishType = "Legal", -- TYPE OF FISH
        image = "./css/imgs/anchovyMiddle.png", -- IMAGE OF THE FISH IN THE FISH MENU
        description = "You can catch this fish in the sea, you need a level 1 or higher fishing rod to catch this fish!"
    },
    {
        id = 2, -- FISH ID (ID OF ALL FISH MUST BE DIFFERENT AND SEQUENTIAL)
        fishName = "Small Blue Fish", -- THE APPARENT NAME OF THE FISH
        itemName = "smallbluefish", -- ITEM NAME OF THE FISH
        requiredLevel = 2, -- DESIRED LEVEL TO CATCH THE FISH (DON'T FORGET TO CHANGE IT IN Config.FishLevels)
        requiredRodLvl = 2, -- FISHING ROD LEVEL REQUIRED TO CATCH THE FISH
        fishPrice = 35, -- SALE PRICE OF FISH
        onFishMenu = true, -- /FISH APPEARS OR DOES NOT APPEAR IN THE MENU - TRUE: APPEARS _ FALSE: DOES NOT APPEAR
        fishType = "Legal", -- TYPE OF FISH
        image = "./css/imgs/smallbluefishMiddle.png", -- IMAGE OF THE FISH IN THE FISH MENU
        description = "You can catch this fish in the sea, you need a level 2 or higher fishing rod to catch this fish!"
    },
    {
        id = 3, -- FISH ID (ID OF ALL FISH MUST BE DIFFERENT AND SEQUENTIAL)
        fishName = "Bluefish", -- THE APPARENT NAME OF THE FISH
        itemName = "bluefish", -- ITEM NAME OF THE FISH
        requiredLevel = 5, -- DESIRED LEVEL TO CATCH THE FISH (DON'T FORGET TO CHANGE IT IN Config.FishLevels)
        requiredRodLvl = 3, -- FISHING ROD LEVEL REQUIRED TO CATCH THE FISH
        fishPrice = 55, -- SALE PRICE OF FISH
        onFishMenu = true, -- /FISH APPEARS OR DOES NOT APPEAR IN THE MENU - TRUE: APPEARS _ FALSE: DOES NOT APPEAR
        fishType = "Legal", -- TYPE OF FISH
        image = "./css/imgs/bluefishMiddle.png", -- IMAGE OF THE FISH IN THE FISH MENU
        description = "You can catch this fish in the sea, you need a level 3 or higher fishing rod to catch this fish!"
    },
    {
        id = 4, -- FISH ID (ID OF ALL FISH MUST BE DIFFERENT AND SEQUENTIAL)
        fishName = "Bonitos", -- THE APPARENT NAME OF THE FISH
        itemName = "bonitosfish", -- ITEM NAME OF THE FISH
        requiredLevel = 9, -- DESIRED LEVEL TO CATCH THE FISH (DON'T FORGET TO CHANGE IT IN Config.FishLevels)
        requiredRodLvl = 3, -- FISHING ROD LEVEL REQUIRED TO CATCH THE FISH
        fishPrice = 65, -- SALE PRICE OF FISH
        onFishMenu = true, -- /FISH APPEARS OR DOES NOT APPEAR IN THE MENU - TRUE: APPEARS _ FALSE: DOES NOT APPEAR
        fishType = "Legal", -- TYPE OF FISH
        image = "./css/imgs/bonitosfishMiddle.png", -- IMAGE OF THE FISH IN THE FISH MENU
        description = "You can catch this fish in the sea, you need a level 3 or higher fishing rod to catch this fish!"
    },
    {
        id = 5, -- FISH ID (ID OF ALL FISH MUST BE DIFFERENT AND SEQUENTIAL)
        fishName = "Garfish", -- THE APPARENT NAME OF THE FISH
        itemName = "garfish", -- ITEM NAME OF THE FISH
        requiredLevel = 11, -- DESIRED LEVEL TO CATCH THE FISH (DON'T FORGET TO CHANGE IT IN Config.FishLevels)
        requiredRodLvl = 4, -- FISHING ROD LEVEL REQUIRED TO CATCH THE FISH
        fishPrice = 75, -- SALE PRICE OF FISH
        onFishMenu = true, -- /FISH APPEARS OR DOES NOT APPEAR IN THE MENU - TRUE: APPEARS _ FALSE: DOES NOT APPEAR
        fishType = "Legal", -- TYPE OF FISH
        image = "./css/imgs/garfishMiddle.png", -- IMAGE OF THE FISH IN THE FISH MENU
        description = "You can catch this fish in the sea, you need a level 4 or higher fishing rod to catch this fish!"
    },
    {
        id = 6, -- FISH ID (ID OF ALL FISH MUST BE DIFFERENT AND SEQUENTIAL)
        fishName = "Perch", -- THE APPARENT NAME OF THE FISH
        itemName = "perch", -- ITEM NAME OF THE FISH
        requiredLevel = 13, -- DESIRED LEVEL TO CATCH THE FISH (DON'T FORGET TO CHANGE IT IN Config.FishLevels)
        requiredRodLvl = 5, -- FISHING ROD LEVEL REQUIRED TO CATCH THE FISH
        fishPrice = 100, -- SALE PRICE OF FISH
        onFishMenu = true, -- /FISH APPEARS OR DOES NOT APPEAR IN THE MENU - TRUE: APPEARS _ FALSE: DOES NOT APPEAR
        fishType = "Legal", -- TYPE OF FISH
        image = "./css/imgs/perchMiddle.png", -- IMAGE OF THE FISH IN THE FISH MENU
        description = "You can catch this fish in the sea, you need a level 5 or higher fishing rod to catch this fish!"
    },
    {
        id = 7, -- FISH ID (ID OF ALL FISH MUST BE DIFFERENT AND SEQUENTIAL)
        fishName = "Turtle", -- THE APPARENT NAME OF THE FISH
        itemName = "carettacaretta", -- ITEM NAME OF THE FISH
        requiredLevel = 15, -- DESIRED LEVEL TO CATCH THE FISH (DON'T FORGET TO CHANGE IT IN Config.FishLevels)
        requiredRodLvl = 4, -- FISHING ROD LEVEL REQUIRED TO CATCH THE FISH
        fishPrice = 150, -- SALE PRICE OF FISH
        onFishMenu = true, -- /FISH APPEARS OR DOES NOT APPEAR IN THE MENU - TRUE: APPEARS _ FALSE: DOES NOT APPEAR
        fishType = "Illegal", -- TYPE OF FISH
        image = "./css/imgs/carettaMiddle.png", -- IMAGE OF THE FISH IN THE FISH MENU
        description = "You can catch this fish in the sea, you need a level 4 or higher fishing rod to catch this fish!"
    },
    {
        id = 8, -- FISH ID (ID OF ALL FISH MUST BE DIFFERENT AND SEQUENTIAL)
        fishName = "Shark", -- THE APPARENT NAME OF THE FISH
        itemName = "sharkfish", -- ITEM NAME OF THE FISH
        requiredLevel = 20, -- DESIRED LEVEL TO CATCH THE FISH (DON'T FORGET TO CHANGE IT IN Config.FishLevels)
        requiredRodLvl = 5, -- FISHING ROD LEVEL REQUIRED TO CATCH THE FISH
        fishPrice = 200, -- SALE PRICE OF FISH
        onFishMenu = true, -- /FISH APPEARS OR DOES NOT APPEAR IN THE MENU - TRUE: APPEARS _ FALSE: DOES NOT APPEAR
        fishType = "Illegal", -- TYPE OF FISH
        image = "./css/imgs/sharkMiddle.png", -- IMAGE OF THE FISH IN THE FISH MENU
        description = "You can catch this fish in the sea, you need a level 5 or higher fishing rod to catch this fish!"
    },
}

Config.sellMenuItems = { -- FISH IN THE FISH SALE MENU
{
    id = 1, -- FISH ID (ID OF ALL FISH MUST BE DIFFERENT AND SEQUENTIAL)
    requiredLevel = 1, -- DESIRED LEVEL TO CATCH THE FISH (DON'T FORGET TO CHANGE IT IN Config.FishLevels)
    fishName = "Small Fish", -- THE APPARENT NAME OF THE FISH
    itemName = "fish", -- ITEM NAME OF THE FISH
    fishPrice = 25, -- SALE PRICE OF FISH
    shopImage = "./css/imgs/fish.png", -- IMAGE OF THE FISH IN THE SALE MENU
},
{
    id = 2, -- FISH ID (ID OF ALL FISH MUST BE DIFFERENT AND SEQUENTIAL)
    requiredLevel = 1, -- DESIRED LEVEL TO CATCH THE FISH (DON'T FORGET TO CHANGE IT IN Config.FishLevels)
    fishName = "Anchovy", -- THE APPARENT NAME OF THE FISH
    itemName = "anchovy", -- ITEM NAME OF THE FISH
    fishPrice = 35, -- SALE PRICE OF FISH
    shopImage = "./css/imgs/anchovy.png", -- IMAGE OF THE FISH IN THE SALE MENU
},
{
    id = 3, -- FISH ID (ID OF ALL FISH MUST BE DIFFERENT AND SEQUENTIAL)
    requiredLevel = 2, -- DESIRED LEVEL TO CATCH THE FISH (DON'T FORGET TO CHANGE IT IN Config.FishLevels)
    fishName = "Small Blue Fish", -- THE APPARENT NAME OF THE FISH
    itemName = "smallbluefish", -- ITEM NAME OF THE FISH
    fishPrice = 45, -- SALE PRICE OF FISH
    shopImage = "./css/imgs/smallbluefish.png", -- IMAGE OF THE FISH IN THE SALE MENU
},
{
    id = 4, -- FISH ID (ID OF ALL FISH MUST BE DIFFERENT AND SEQUENTIAL)
    requiredLevel = 5, -- DESIRED LEVEL TO CATCH THE FISH (DON'T FORGET TO CHANGE IT IN Config.FishLevels)
    fishName = "Blue Fish", -- THE APPARENT NAME OF THE FISH
    itemName = "bluefish", -- ITEM NAME OF THE FISH
    fishPrice = 55, -- SALE PRICE OF FISH
    shopImage = "./css/imgs/bluefish.png", -- IMAGE OF THE FISH IN THE SALE MENU
},
{
    id = 5, -- FISH ID (ID OF ALL FISH MUST BE DIFFERENT AND SEQUENTIAL)
    requiredLevel = 9, -- DESIRED LEVEL TO CATCH THE FISH (DON'T FORGET TO CHANGE IT IN Config.FishLevels)
    fishName = "Bonitos", -- THE APPARENT NAME OF THE FISH
    itemName = "bonitosfish", -- ITEM NAME OF THE FISH
    fishPrice = 65, -- SALE PRICE OF FISH
    shopImage = "./css/imgs/bonitosfish.png", -- IMAGE OF THE FISH IN THE SALE MENU
},
{
    id = 6, -- FISH ID (ID OF ALL FISH MUST BE DIFFERENT AND SEQUENTIAL)
    requiredLevel = 11, -- DESIRED LEVEL TO CATCH THE FISH (DON'T FORGET TO CHANGE IT IN Config.FishLevels)
    fishName = "Garfish", -- THE APPARENT NAME OF THE FISH
    itemName = "garfish", -- ITEM NAME OF THE FISH
    fishPrice = 75, -- SALE PRICE OF FISH
    shopImage = "./css/imgs/garfish.png", -- IMAGE OF THE FISH IN THE SALE MENU
},
{
    id = 7, -- FISH ID (ID OF ALL FISH MUST BE DIFFERENT AND SEQUENTIAL)
    requiredLevel = 13, -- DESIRED LEVEL TO CATCH THE FISH (DON'T FORGET TO CHANGE IT IN Config.FishLevels)
    fishName = "Perch", -- THE APPARENT NAME OF THE FISH
    itemName = "perch", -- ITEM NAME OF THE FISH
    fishPrice = 85, -- SALE PRICE OF FISH
    shopImage = "./css/imgs/perch.png", -- IMAGE OF THE FISH IN THE SALE MENU
},
{
    id = 8, -- FISH ID (ID OF ALL FISH MUST BE DIFFERENT AND SEQUENTIAL)
    requiredLevel = 15, -- DESIRED LEVEL TO CATCH THE FISH (DON'T FORGET TO CHANGE IT IN Config.FishLevels)
    fishName = "Caretta Caretta", -- THE APPARENT NAME OF THE FISH
    itemName = "carettacaretta", -- ITEM NAME OF THE FISH
    fishPrice = 95, -- SALE PRICE OF FISH
    shopImage = "./css/imgs/carettacaretta.png", -- IMAGE OF THE FISH IN THE SALE MENU
},
{
    id = 9, -- FISH ID (ID OF ALL FISH MUST BE DIFFERENT AND SEQUENTIAL)
    requiredLevel = 18, -- DESIRED LEVEL TO CATCH THE FISH (DON'T FORGET TO CHANGE IT IN Config.FishLevels)
    fishName = "Pantfish", -- THE APPARENT NAME OF THE FISH
    itemName = "pantfish", -- ITEM NAME OF THE FISH
    fishPrice = 105, -- SALE PRICE OF FISH
    shopImage = "./css/imgs/pantfish.png", -- IMAGE OF THE FISH IN THE SALE MENU
},
{
    id = 10, -- FISH ID (ID OF ALL FISH MUST BE DIFFERENT AND SEQUENTIAL)
    requiredLevel = 18, -- DESIRED LEVEL TO CATCH THE FISH (DON'T FORGET TO CHANGE IT IN Config.FishLevels)
    fishName = "Shark", -- THE APPARENT NAME OF THE FISH
    itemName = "sharkfish", -- ITEM NAME OF THE FISH
    fishPrice = 200, -- SALE PRICE OF FISH
    shopImage = "./css/imgs/sharkfish.png", -- IMAGE OF THE FISH IN THE SALE MENU
},
}
