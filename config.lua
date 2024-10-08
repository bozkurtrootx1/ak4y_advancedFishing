Config = {}

Config.Framework = "qb" -- "qb" / "oldqb" : qb = export system , oldqb = triggerevent system
Config.sql = "oxmysql" -- dont forget to change fxmanifest.lua! |ghmattimysql - oxmysql - mysql-async

Config.Settings = {
    ["canOpenWithCommand"] = false, -- CAN THE MENU BE OPENED BY COMMAND
    ["menuOpenCommand"] = "balikmenu", 
    ["addXP"] = {min = 20, max = 100}, -- The amount of xp to be given after fishing
    ["addxpafterXcatch"] = 3, -- How many successful catch after exp awards will be given
    ["needxpforlevelup"] = 500, -- How Many xp needed to level up
    ["addTrashWithoutBait"] = 1, -- HOW MANY MORE TRASH ITEMS WILL APPEAR WITHOUT FISH Bait
    ["rodBrokeChanceWhenUpgrade"] = 20, -- WHAT IS THE CHANCE OF BREAKING THE FISHING ROD DURING LEVEL UPGRADING?
    ["eatBaitChance"] = 80, -- WHAT PERCENTAGE CHANCE THAT THE BAIT WILL DISAPPEAR AFTER FISHING
    ["illegalBaitName"] = "illegalbalikyemi", -- TYPE OF BAIT REQUIRED TO CATCH ILLEGAL FISH
    ["tasksResetDay"] = 3, -- HOW MANY DAYS AFTER THE TASK IS RECEIVED WILL IT BE RESET (EVEN IF 1 TASK IS RECEIVED, ALL TASKS WILL BE DELETED AFTER THE WRITTEN DAY)
}

Config.Language = {
    ["eatBaitText"] = "Balık yeminizi kaybettiniz.",
    ["catchFish"] = "Yakaladınız!",
    ["youCantFishHere"] = "Burada balık tutamazsın!",
    ["somethingStoppingFish"] = "Bir şey seni balık tutmaktan alıkoyuyor",
    ["movementOnRod"] = "Oltanızda hareket var!",
    ["missedFish"] = "Balıkları kaçırdın",
    ["noLeftBait"] = "Oltanın ucunda yem kalmadı!",
    ["fishingHBStopped"] = "Balık tutma durduruldu",
    ["illegalCant"] = "Bu bölgede illegal balık yakalayamazsınız!",
    ["useBaitNotFishing"] = "Yemi yemlemek için olta elinizde olmalı!",
    ["youDontHaveItemUPGRADE"] = "Yükseltme için gerekli öğeye sahip değilsiniz!",
    ["upgradedRod"] = "Oltanız bir sonraki seviyeye yükseltildi!",
    ["brokenRod"] = "Oltanız kırıldı!",
    ["youDontHave"] = "Sende yok!",
    ["youDontHaveMoney"] = "Yeterli paranız yok!",
    ["youDontHaveEnoughSpace"] = "Öğeyi taşımak için yeterli alanınız yok!",
    ["youDontHaveWantSell"] = "Satmak istediğiniz ürün sizde yok!",
    ["succesBuy"] = "Satın aldınız: ",
    ["succesSold"] = "Sattınız: ",
}

Config.Customize = {
    title = "SUNNY'V",
    fishAreaTitle = "Balıklar",
    taskAreaTitle = "Görevleriniz",
    currentXP = "Mevcut XP:",
    requiredXP = "Gerekli XP:",
}

Config.FishLevels = { -- ALL FISH THAT CAN BE KEPT ATTACHED IN THE FISHING SYSTEM AND FISH LEVELS (THIS AREA NOT FISHINGROD LEVEL) (ALL FISH MUST BE ATTACHED)
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

Config.fishingRods = { -- FISHING RODS, ITEM NAMES AND LEVELS
    {itemName = "fishingrod1", level = 1},
    {itemName = "fishingrod2", level = 2},
    {itemName = "fishingrod3", level = 3},
    {itemName = "fishingrod4", level = 4},
    {itemName = "fishingrod5", level = 5},
}

Config.fishBaits = { -- FISH BAITS AND FEED TYPES
    {itemName = "fishbait", baitType = "fish"},
    {itemName = "illegalbalikyemi", baitType = "illegal"},
}

-- MUST START WITH TABLE 1 - TABLE 1 ACTUALLY POINTS TO LEVEL 2 FISHING ROD
Config.upgradeRodPrices = { -- PRICE LIST FOR FISHING ROD UPGRADE
    [1] = 1500, -- LEVEL 2 
    [2] = 3000, -- LEVEL 3
    [3] = 6000, -- LEVEL 4 
    [4] = 9000, -- LEVEL 5
}

Config.fishMenuArea = { -- YANINA GİDİN VE /BALIK MENÜSÜNÜ AÇMAK İÇİN E BASIN
    {
        pedName = "William", 
        pedHash = 0x0B881AEE, 
        pedCoord = vector3(-904.24, -1435.54, 3.9),
        drawText = "[E] - Balıkçı",
        h = 206,
        blipSettings = { -- https://docs.fivem.net/docs/game-references/blips/
            blip = false,
            blipName = "Balıkçı",
            blipIcon = 68,
            blipColour = 3,
        },
    },
}

Config.upgradeRodArea = { -- ÇUBUK SEVİYESİ YÜKSELTME ALANLARI
    {
        pedName = "Jhon", 
        pedHash = 0x1EEC7BDC, 
        pedCoord = vector3(-901.38, -1434.46, 3.9), 
        drawText = "[E] - Olta Yükseltme",
        h = 200,
        blipSettings = { -- https://docs.fivem.net/docs/game-references/blips/
            blip = false,
            blipName = "Yükseltme Çubuğu",
            blipIcon = 68,
            blipColour = 3,
        },
    },
}

Config.marketArea = { -- PAZAR ALANLARI (ALIM VE SATIM)
    {
        pedName = "Mike", 
        pedHash = 0xAE5BE23A, 
        pedCoord = vector3(-898.0, -1433.25, 3.9), 
        drawText = "[E] - Balıkçı Marketi",
        h = 205,
        blipSettings = { -- https://docs.fivem.net/docs/game-references/blips/
            blip = true,
            blipName = "Balıkçı Marketi",
            blipIcon = 68,
            blipColour = 3,
        },
    },
}

Config.buyMarketItems = { -- LIST OF ITEMS SOLD IN THE FISH MARKET (BUY MENU)
    {itemId = 1, itemName = "fishingrod1", itemLabel = "Olta 1Lv.", itemPrice = 50, image = './css/imgs/fishingrod.png'},
    {itemId = 2, itemName = "fishbait", itemLabel = "Balık Yemi", itemPrice = 5, image = './css/imgs/fishbait.png'},
    {itemId = 3, itemName = "illegalbalikyemi", itemLabel = "illegalbalikyemi", itemPrice = 30, image = './css/imgs/illegalfishbait.png'},
}

Config.Zones = { -- FISHING AREAS
    { -- Motel
        coords = vector3(-890.3, -1439.91, 4.9), -- FISHING AREA COORDINATES
        radius = 150, -- RADIUS LEVEL OF THE ABOVE COORDINATE 
        blipSettings = { -- https://docs.fivem.net/docs/game-references/blips/
            blip = false,
            blipAlpha = false,
            blipName = "Balık Tutma Alanı",
            blipIcon = 68,
            blipColour = 3,
            blipAlphaColour = 2,
        },
        trashChance = 15, -- WHAT PERCENTAGE OF TRASH ITEMS WILL BE GIVEN WHILE FISHING IN THIS COORDINATE
        rareChance = 5, -- WHAT PERCENTAGE OF VALUABLE ITEMS WILL BE GIVEN WHEN FISHING IN THIS COORDINATE
        illegal = false, -- CAN AN ILLEGAL ITEM BE HELD IN THIS COORDINATE?
        items = { -- ITEMS THAT WILL APPEAR WHILE FISHING IN THIS COORDINATION
            trashItems = {"fishbait", "fish"}, -- TRASH ITEMS
            rare = { -- RARE ITEMS
                rodLevel = {
                    [1] = {"whitepearl"}, -- WHAT CAN BE CAUGHT WITH 1 LEVEL FISHING ROD
                    [2] = {"whitepearl", "bluepearl"}, -- WHAT CAN BE CAUGHT WITH 2 LEVEL FISHING ROD
                    [3] = {"whitepearl", "bluepearl","redpearl"}, -- WHAT CAN BE CAUGHT WITH 3 LEVEL FISHING ROD
                    [4] = {"whitepearl", "bluepearl","redpearl","yellowpearl"}, -- WHAT CAN BE CAUGHT WITH 4 LEVEL FISHING ROD
                    [5] = {"whitepearl", "bluepearl","redpearl","yellowpearl","greenpearl"}, -- WHAT CAN BE CAUGHT WITH 5 LEVEL FISHING ROD
                },
            },
            normal = { -- NORMAL ITEMS 
                rodLevel = {
                    [1] = {"anchovy"}, -- WHAT CAN BE CAUGHT WITH 1 LEVEL FISHING ROD
                    [2] = {"anchovy", "smallbluefish"}, -- WHAT CAN BE CAUGHT WITH 2 LEVEL FISHING ROD 
                    [3] = {"anchovy", "smallbluefish", "bluefish","bonitosfish"}, -- WHAT CAN BE CAUGHT WITH 3 LEVEL FISHING ROD
                    [4] = {"anchovy", "smallbluefish", "bluefish","bonitosfish","garfish"}, -- WHAT CAN BE CAUGHT WITH 4 LEVEL FISHING ROD
                    [5] = {"anchovy", "smallbluefish", "bluefish","bonitosfish","garfish","perch"}, -- WHAT CAN BE CAUGHT WITH 5 LEVEL FISHING ROD
                },
            },
            illegal = { -- ILLEGAL ITEMS
                rodLevel = {
                    [1] = {"anchovy"}, -- WHAT CAN BE CAUGHT WITH 1 LEVEL FISHING ROD
                    [2] = {"anchovy", "smallbluefish"}, -- WHAT CAN BE CAUGHT WITH 2 LEVEL FISHING ROD 
                    [3] = {"anchovy", "smallbluefish", "bluefish","bonitosfish"}, -- WHAT CAN BE CAUGHT WITH 3 LEVEL FISHING ROD
                    [4] = {"anchovy", "smallbluefish", "bluefish","bonitosfish","garfish"}, -- WHAT CAN BE CAUGHT WITH 4 LEVEL FISHING ROD
                    [5] = {"anchovy", "smallbluefish", "bluefish","bonitosfish","garfish","perch"}, -- WHAT CAN BE CAUGHT WITH 5 LEVEL FISHING ROD
                },
            },
        },
    }, 
    { -- iskele
        coords = vector3(-1849.7, -1250.9, 8.62), -- FISHING AREA COORDINATES
        radius = 150, -- RADIUS LEVEL OF THE ABOVE COORDINATE 
        blipSettings = { -- https://docs.fivem.net/docs/game-references/blips/
            blip = false,
            blipAlpha = false,
            blipName = "Fish Area",
            blipIcon = 68,
            blipColour = 3,
            blipAlphaColour = 2,
        },
        trashChance = 15, -- WHAT PERCENTAGE OF TRASH ITEMS WILL BE GIVEN WHILE FISHING IN THIS COORDINATE
        rareChance = 5, -- WHAT PERCENTAGE OF VALUABLE ITEMS WILL BE GIVEN WHEN FISHING IN THIS COORDINATE
        illegal = false, -- CAN AN ILLEGAL ITEM BE HELD IN THIS COORDINATE?
        items = { -- ITEMS THAT WILL APPEAR WHILE FISHING IN THIS COORDINATION
            trashItems = {"fishbait", "fish"}, -- TRASH ITEMS
            rare = { -- RARE ITEMS
                rodLevel = {
                    [1] = {"whitepearl"}, -- WHAT CAN BE CAUGHT WITH 1 LEVEL FISHING ROD
                    [2] = {"whitepearl", "bluepearl"}, -- WHAT CAN BE CAUGHT WITH 2 LEVEL FISHING ROD
                    [3] = {"whitepearl", "bluepearl","redpearl"}, -- WHAT CAN BE CAUGHT WITH 3 LEVEL FISHING ROD
                    [4] = {"whitepearl", "bluepearl","redpearl","yellowpearl"}, -- WHAT CAN BE CAUGHT WITH 4 LEVEL FISHING ROD
                    [5] = {"whitepearl", "bluepearl","redpearl","yellowpearl","greenpearl"}, -- WHAT CAN BE CAUGHT WITH 5 LEVEL FISHING ROD
                },
            },
            normal = { -- NORMAL ITEMS 
                rodLevel = {
                    [1] = {"anchovy"}, -- WHAT CAN BE CAUGHT WITH 1 LEVEL FISHING ROD
                    [2] = {"anchovy", "smallbluefish"}, -- WHAT CAN BE CAUGHT WITH 2 LEVEL FISHING ROD 
                    [3] = {"anchovy", "smallbluefish", "bluefish","bonitosfish"}, -- WHAT CAN BE CAUGHT WITH 3 LEVEL FISHING ROD
                    [4] = {"anchovy", "smallbluefish", "bluefish","bonitosfish","garfish"}, -- WHAT CAN BE CAUGHT WITH 4 LEVEL FISHING ROD
                    [5] = {"anchovy", "smallbluefish", "bluefish","bonitosfish","garfish","perch"}, -- WHAT CAN BE CAUGHT WITH 5 LEVEL FISHING ROD
                },
            },
            illegal = { -- ILLEGAL ITEMS
                rodLevel = {
                    [1] = {"anchovy"}, -- WHAT CAN BE CAUGHT WITH 1 LEVEL FISHING ROD
                    [2] = {"anchovy", "smallbluefish"}, -- WHAT CAN BE CAUGHT WITH 2 LEVEL FISHING ROD
                    [3] = {"anchovy", "smallbluefish", "bluefish","bonitosfish"}, -- WHAT CAN BE CAUGHT WITH 3 LEVEL FISHING ROD
                    [4] = {"carettacaretta"}, -- WHAT CAN BE CAUGHT WITH 4 LEVEL FISHING ROD
                    [5] = {"carettacaretta","sharkfish"}, -- WHAT CAN BE CAUGHT WITH 5 LEVEL FISHING ROD
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
            blipName = "İllegal Balık Bölgesi",
            blipIcon = 68,
            blipColour = 3,
            blipAlphaColour = 49,
        },
        trashChance = 50, -- WHAT PERCENTAGE OF TRASH ITEMS WILL BE GIVEN WHILE FISHING IN THIS COORDINATE
        rareChance = 50, -- WHAT PERCENTAGE OF VALUABLE ITEMS WILL BE GIVEN WHEN FISHING IN THIS COORDINATE
        illegal = true, -- CAN AN ILLEGAL ITEM BE HELD IN THIS COORDINATE?
        items = { -- ITEMS THAT WILL APPEAR WHILE FISHING IN THIS COORDINATION
            trashItems = {"illegalbalikyemi", "fish"}, -- TRASH ITEMS
            rare = { -- RARE ITEMS
                rodLevel = {
                    [1] = {"sharkfish"}, -- WHAT CAN BE CAUGHT WITH 1 LEVEL FISHING ROD
                    [2] = {"sharkfish", "sharkfish"}, -- WHAT CAN BE CAUGHT WITH 2 LEVEL FISHING ROD
                    [3] = {"sharkfish", "sharkfish", "sharkfish"}, -- WHAT CAN BE CAUGHT WITH 3 LEVEL FISHING ROD
                    [4] = {"sharkfish", "sharkfish", "sharkfish", "sharkfish"}, -- WHAT CAN BE CAUGHT WITH 4 LEVEL FISHING ROD
                    [5] = {"sharkfish", "sharkfish", "sharkfish", "sharkfish", "sharkfish"}, -- WHAT CAN BE CAUGHT WITH 5 LEVEL FISHING ROD
                },
            },
            normal = { -- NORMAL ITEMS 
                rodLevel = {
                    [1] = {"anchovy"}, -- WHAT CAN BE CAUGHT WITH 1 LEVEL FISHING ROD
                    [2] = {"anchovy", "pantfish"}, -- WHAT CAN BE CAUGHT WITH 2 LEVEL FISHING ROD 
                    [3] = {"anchovy", "pantfish", "bluefish", "bonitosfish"}, -- WHAT CAN BE CAUGHT WITH 3 LEVEL FISHING ROD
                    [4] = {"anchovy", "pantfish", "bluefish", "bonitosfish", "garfish"}, -- WHAT CAN BE CAUGHT WITH 4 LEVEL FISHING ROD
                    [5] = {"anchovy", "pantfish", "bluefish", "bonitosfish", "garfish", "perch"}, -- WHAT CAN BE CAUGHT WITH 5 LEVEL FISHING ROD
                },
            },
            illegal = { -- ILLEGAL ITEMS
                rodLevel = {
                    [1] = {"anchovy"}, -- WHAT CAN BE CAUGHT WITH 1 LEVEL FISHING ROD
                    [2] = {"anchovy", "pantfish"}, -- WHAT CAN BE CAUGHT WITH 2 LEVEL FISHING ROD
                    [3] = {"anchovy", "pantfish", "bluefish", "bonitosfish"}, -- WHAT CAN BE CAUGHT WITH 3 LEVEL FISHING ROD
                    [4] = {"carettacaretta"}, -- WHAT CAN BE CAUGHT WITH 4 LEVEL FISHING ROD
                    [5] = {"carettacaretta", "sharkfish"}, -- WHAT CAN BE CAUGHT WITH 5 LEVEL FISHING ROD
                },
            },
        },
    },

--[[     { -- ILLEGAL AREA2
        coords = vector3(-3463.88, -1601.54, 0.57), -- FISHING AREA COORDINATES
        radius = 300, -- RADIUS LEVEL OF THE ABOVE COORDINATE 
        blipSettings = { -- https://docs.fivem.net/docs/game-references/blips/
            blip = true,
            blipAlpha = true,
            blipName = "İllegal Balık Bölgesi",
            blipIcon = 68,
            blipColour = 3,
            blipAlphaColour = 49,
        },
        trashChance = 70, -- WHAT PERCENTAGE OF TRASH ITEMS WILL BE GIVEN WHILE FISHING IN THIS COORDINATE
        rareChance = 15, -- WHAT PERCENTAGE OF VALUABLE ITEMS WILL BE GIVEN WHEN FISHING IN THIS COORDINATE
        illegal = true, -- CAN AN ILLEGAL ITEM BE HELD IN THIS COORDINATE?
        items = { -- ITEMS THAT WILL APPEAR WHILE FISHING IN THIS COORDINATION
            trashItems = {"illegalfishbait","fish"}, -- TRASH ITEMS
            rare = { -- RARE ITEMS
                rodLevel = {
                    [1] = {"whitepearl"}, -- WHAT CAN BE CAUGHT WITH 1 LEVEL FISHING ROD
                    [2] = {"whitepearl", "bluepearl"}, -- WHAT CAN BE CAUGHT WITH 2 LEVEL FISHING ROD
                    [3] = {"whitepearl", "bluepearl","redpearl"}, -- WHAT CAN BE CAUGHT WITH 3 LEVEL FISHING ROD
                    [4] = {"whitepearl", "bluepearl","redpearl","yellowpearl"}, -- WHAT CAN BE CAUGHT WITH 4 LEVEL FISHING ROD
                    [5] = {"whitepearl", "bluepearl","redpearl","yellowpearl","greenpearl"}, -- WHAT CAN BE CAUGHT WITH 5 LEVEL FISHING ROD
                },
            },
            normal = { -- NORMAL ITEMS 
                rodLevel = {
                    [1] = {"anchovy"}, -- WHAT CAN BE CAUGHT WITH 1 LEVEL FISHING ROD
                    [2] = {"anchovy", "smallbluefish"}, -- WHAT CAN BE CAUGHT WITH 2 LEVEL FISHING ROD 
                    [3] = {"anchovy", "smallbluefish", "bluefish","bonitosfish"}, -- WHAT CAN BE CAUGHT WITH 3 LEVEL FISHING ROD
                    [4] = {"anchovy", "smallbluefish", "bluefish","bonitosfish","garfish"}, -- WHAT CAN BE CAUGHT WITH 4 LEVEL FISHING ROD
                    [5] = {"anchovy", "smallbluefish", "bluefish","bonitosfish","garfish","perch"}, -- WHAT CAN BE CAUGHT WITH 5 LEVEL FISHING ROD
                },
            },
            illegal = { -- ILLEGAL ITEMS
                rodLevel = {
                    [1] = {"anchovy"}, -- WHAT CAN BE CAUGHT WITH 1 LEVEL FISHING ROD
                    [2] = {"anchovy", "smallbluefish"}, -- WHAT CAN BE CAUGHT WITH 2 LEVEL FISHING ROD
                    [3] = {"anchovy", "smallbluefish", "bluefish","bonitosfish"}, -- WHAT CAN BE CAUGHT WITH 3 LEVEL FISHING ROD
                    [4] = {"carettacaretta"}, -- WHAT CAN BE CAUGHT WITH 4 LEVEL FISHING ROD
                    [5] = {"carettacaretta","sharkfish"}, -- WHAT CAN BE CAUGHT WITH 5 LEVEL FISHING ROD
                },
            },
        },
    }, ]]
}

Config.Tasks = { -- BALIK MENÜSÜNDE GÖRÜNEN GÖREVLER
    {
        taskId = 1, -- GÖREV NUMARASI (TÜM GÖREVLER FARKLI VE SIRALI OLARAK NUMARALANDIRILMALIDIR)
        taskName = "40 Küçük Mavi Balık Yakala.", -- MENÜDE GÖRÜNDÜĞÜ GİBİ GÖREVİN ADI
        itemName = "smallbluefish", -- GÖREV KONUSU
        moneyRewards = 200, -- GÖREVİN ÖDÜLÜ PARA
        xpRewards = 500, -- GÖREV DP ÖDÜLÜ
        requiredCount = 40, -- GÖREVİ TAMAMLAMAK İÇİN GEREKLİ YAKALANAN BALIK SAYISI
        taskDescription = "Görevi başarıyla tamamladıktan sonra ödülünüzü alın.",
    },
    {
        taskId = 2, -- GÖREV NUMARASI (TÜM GÖREVLER FARKLI VE SIRALI OLARAK NUMARALANDIRILMALIDIR)
        taskName = "30 Mavi Balık Yakala", -- MENÜDE GÖRÜNDÜĞÜ GİBİ GÖREVİN ADI
        itemName = "bluefish", -- GÖREV KONUSU
        moneyRewards = 400, -- GÖREVİN ÖDÜLÜ PARA
        xpRewards = 500, -- GÖREV DP ÖDÜLÜ
        requiredCount = 30, -- GÖREVİ TAMAMLAMAK İÇİN GEREKLİ YAKALANAN BALIK SAYISI
        taskDescription = "Görevi başarıyla tamamladıktan sonra ödülünüzü alın.",
    },
    {
        taskId = 3, -- GÖREV NUMARASI (TÜM GÖREVLER FARKLI VE SIRALI OLARAK NUMARALANDIRILMALIDIR)
        taskName = "20 Palamut Yakala", -- MENÜDE GÖRÜNDÜĞÜ GİBİ GÖREVİN ADI
        itemName = "bonitosfish", -- GÖREV KONUSU
        moneyRewards = 600, -- GÖREVİN ÖDÜLÜ PARA
        xpRewards = 500, -- GÖREV DP ÖDÜLÜ
        requiredCount = 20, -- GÖREVİ TAMAMLAMAK İÇİN GEREKLİ YAKALANAN BALIK SAYISI
        taskDescription = "Görevi başarıyla tamamladıktan sonra ödülünüzü alın.",
    },
    {
        taskId = 4, -- GÖREV NUMARASI (TÜM GÖREVLER FARKLI VE SIRALI OLARAK NUMARALANDIRILMALIDIR)
        taskName = "15 Zargana Yakala", -- MENÜDE GÖRÜNDÜĞÜ GİBİ GÖREVİN ADI
        itemName = "garfish", -- GÖREV KONUSU
        moneyRewards = 800, -- GÖREVİN ÖDÜLÜ PARA
        xpRewards = 500, -- GÖREV DP ÖDÜLÜ
        requiredCount = 15, -- GÖREVİ TAMAMLAMAK İÇİN GEREKLİ YAKALANAN BALIK SAYISI
        taskDescription = "Görevi başarıyla tamamladıktan sonra ödülünüzü alın.",
    },
    {
        taskId = 5, -- GÖREV NUMARASI (TÜM GÖREVLER FARKLI VE SIRALI OLARAK NUMARALANDIRILMALIDIR)
        taskName = "10 Levrek Yakala", -- MENÜDE GÖRÜNDÜĞÜ GİBİ GÖREVİN ADI
        itemName = "perch", -- GÖREV KONUSU
        moneyRewards = 1000, -- GÖREVİN ÖDÜLÜ PARA
        xpRewards = 500, -- GÖREV DP ÖDÜLÜ
        requiredCount = 10, -- GÖREVİ TAMAMLAMAK İÇİN GEREKLİ YAKALANAN BALIK SAYISI
        taskDescription = "Görevi başarıyla tamamladıktan sonra ödülünüzü alın.",
    },
    {
        taskId = 6, -- GÖREV NUMARASI (TÜM GÖREVLER FARKLI VE SIRALI OLARAK NUMARALANDIRILMALIDIR)
        taskName = "20 Shark Yakala", -- MENÜDE GÖRÜNDÜĞÜ GİBİ GÖREVİN ADI
        itemName = "sharkfish", -- GÖREV KONUSU
        moneyRewards = 1200, -- GÖREVİN ÖDÜLÜ PARA
        xpRewards = 500, -- GÖREV DP ÖDÜLÜ
        requiredCount = 20, -- GÖREVİ TAMAMLAMAK İÇİN GEREKLİ YAKALANAN BALIK SAYISI
        taskDescription = "Görevi başarıyla tamamladıktan sonra ödülünüzü alın.",
    },
}

Config.Fishes = { -- /FISH MENU SETTINGS
    {
        id = 1, -- FISH ID (ID OF ALL FISH MUST BE DIFFERENT AND SEQUENTIAL)
        fishName = "Hamsi", -- THE APPARENT NAME OF THE FISH
        itemName = "anchovy", -- ITEM NAME OF THE FISH
        requiredLevel = 1, -- DESIRED LEVEL TO KEEP THE FISH (DON'T FORGET TO CHANGE FROM Config.FishLevels)
        requiredRodLvl = 1, -- FISHING ROD LEVEL AND ABOVE THAT SHOULD BE USED TO CATCH THE FISH
        fishPrice = 25, -- SALE PRICE OF FISH
        onFishMenu = true, -- /FISH APPEARS OR DOES NOT APPEAR ON THE MENU - TRUE: APPEARS _ FALSE: DOES NOT APPEAR
        fishType = "Legal", -- TYPE OF FISH
        image = "./css/imgs/anchovyMiddle.png", -- PICTURE OF THE FISH ON THE FISH MENU
        description = "Bu balığı denizde yakalayabilirsiniz, bu balığı yakalamak için seviye 1 ve üzeri bir oltaya ihtiyacınız var!"
    },
    {
        id = 2, -- FISH ID (ID OF ALL FISH MUST BE DIFFERENT AND SEQUENTIAL)
        fishName = "Çinekop", -- THE APPARENT NAME OF THE FISH
        itemName = "smallbluefish", -- ITEM NAME OF THE FISH
        requiredLevel = 2, -- DESIRED LEVEL TO KEEP THE FISH (DON'T FORGET TO CHANGE FROM Config.FishLevels)
        requiredRodLvl = 2, -- FISHING ROD LEVEL AND ABOVE THAT SHOULD BE USED TO CATCH THE FISH
        fishPrice = 35, -- SALE PRICE OF FISH
        onFishMenu = true, -- /FISH APPEARS OR DOES NOT APPEAR ON THE MENU - TRUE: APPEARS _ FALSE: DOES NOT APPEAR
        fishType = "Legal", -- TYPE OF FISH
        image = "./css/imgs/smallbluefishMiddle.png", -- PICTURE OF THE FISH ON THE FISH MENU
        description = "Bu balığı denizde yakalayabilirsiniz, bu balığı yakalamak için seviye 2 ve üzeri bir oltaya ihtiyacınız var!"
    },
    {
        id = 3, -- FISH ID (ID OF ALL FISH MUST BE DIFFERENT AND SEQUENTIAL)
        fishName = "Lüfer", -- THE APPARENT NAME OF THE FISH
        itemName = "bluefish", -- ITEM NAME OF THE FISH
        requiredLevel = 5, -- DESIRED LEVEL TO KEEP THE FISH (DON'T FORGET TO CHANGE FROM Config.FishLevels)
        requiredRodLvl = 3, -- FISHING ROD LEVEL AND ABOVE THAT SHOULD BE USED TO CATCH THE FISH
        fishPrice = 55, -- SALE PRICE OF FISH
        onFishMenu = true, -- /FISH APPEARS OR DOES NOT APPEAR ON THE MENU - TRUE: APPEARS _ FALSE: DOES NOT APPEAR
        fishType = "Legal", -- TYPE OF FISH
        image = "./css/imgs/bluefishMiddle.png", -- PICTURE OF THE FISH ON THE FISH MENU
        description = "Bu balığı denizde yakalayabilirsiniz, bu balığı yakalamak için seviye 3 ve üzeri bir oltaya ihtiyacınız var!"
    },
    {
        id = 4, -- FISH ID (ID OF ALL FISH MUST BE DIFFERENT AND SEQUENTIAL)
        fishName = "Palamut", -- THE APPARENT NAME OF THE FISH
        itemName = "bonitosfish", -- ITEM NAME OF THE FISH
        requiredLevel = 9, -- DESIRED LEVEL TO KEEP THE FISH (DON'T FORGET TO CHANGE FROM Config.FishLevels)
        requiredRodLvl = 3, -- FISHING ROD LEVEL AND ABOVE THAT SHOULD BE USED TO CATCH THE FISH
        fishPrice = 65, -- SALE PRICE OF FISH
        onFishMenu = true, -- /FISH APPEARS OR DOES NOT APPEAR ON THE MENU - TRUE: APPEARS _ FALSE: DOES NOT APPEAR
        fishType = "Legal", -- TYPE OF FISH
        image = "./css/imgs/bonitosfishMiddle.png", -- PICTURE OF THE FISH ON THE FISH MENU
        description = "Bu balığı denizde yakalayabilirsiniz, bu balığı yakalamak için seviye 3 ve üzeri bir oltaya ihtiyacınız var!"
    },
    {
        id = 5, -- FISH ID (ID OF ALL FISH MUST BE DIFFERENT AND SEQUENTIAL)
        fishName = "Zargana", -- THE APPARENT NAME OF THE FISH
        itemName = "garfish", -- ITEM NAME OF THE FISH
        requiredLevel = 11, -- DESIRED LEVEL TO KEEP THE FISH (DON'T FORGET TO CHANGE FROM Config.FishLevels)
        requiredRodLvl = 4, -- FISHING ROD LEVEL AND ABOVE THAT SHOULD BE USED TO CATCH THE FISH
        fishPrice = 75, -- SALE PRICE OF FISH
        onFishMenu = true, -- /FISH APPEARS OR DOES NOT APPEAR ON THE MENU - TRUE: APPEARS _ FALSE: DOES NOT APPEAR
        fishType = "Legal", -- TYPE OF FISH
        image = "./css/imgs/garfishMiddle.png", -- PICTURE OF THE FISH ON THE FISH MENU
        description = "Bu balığı denizde yakalayabilirsiniz, bu balığı yakalamak için seviye 4 ve üzeri bir oltaya ihtiyacınız var!"
    },
    {
        id = 6, -- FISH ID (ID OF ALL FISH MUST BE DIFFERENT AND SEQUENTIAL)
        fishName = "Levrek", -- THE APPARENT NAME OF THE FISH
        itemName = "perch", -- ITEM NAME OF THE FISH
        requiredLevel = 13, -- DESIRED LEVEL TO KEEP THE FISH (DON'T FORGET TO CHANGE FROM Config.FishLevels)
        requiredRodLvl = 5, -- FISHING ROD LEVEL AND ABOVE THAT SHOULD BE USED TO CATCH THE FISH
        fishPrice = 100, -- SALE PRICE OF FISH
        onFishMenu = true, -- /FISH APPEARS OR DOES NOT APPEAR ON THE MENU - TRUE: APPEARS _ FALSE: DOES NOT APPEAR
        fishType = "Legal", -- TYPE OF FISH
        image = "./css/imgs/perchMiddle.png", -- PICTURE OF THE FISH ON THE FISH MENU
        description = "Bu balığı denizde yakalayabilirsiniz, bu balığı yakalamak için seviye 5 ve üzeri bir oltaya ihtiyacınız var!"
    },
    {
        id = 7, -- FISH ID (ID OF ALL FISH MUST BE DIFFERENT AND SEQUENTIAL)
        fishName = "Kaplumbağa", -- THE APPARENT NAME OF THE FISH
        itemName = "carettacaretta", -- ITEM NAME OF THE FISH
        requiredLevel = 15, -- DESIRED LEVEL TO KEEP THE FISH (DON'T FORGET TO CHANGE FROM Config.FishLevels)
        requiredRodLvl = 4, -- FISHING ROD LEVEL AND ABOVE THAT SHOULD BE USED TO CATCH THE FISH
        fishPrice = 150, -- SALE PRICE OF FISH
        onFishMenu = true, -- /FISH APPEARS OR DOES NOT APPEAR ON THE MENU - TRUE: APPEARS _ FALSE: DOES NOT APPEAR
        fishType = "Illegal", -- TYPE OF FISH
        image = "./css/imgs/carettaMiddle.png", -- PICTURE OF THE FISH ON THE FISH MENU
        description = "YBu balığı denizde yakalayabilirsiniz, bu balığı yakalamak için seviye 4 ve üzeri bir oltaya ihtiyacınız var!"
    },
    {
        id = 8, -- FISH ID (ID OF ALL FISH MUST BE DIFFERENT AND SEQUENTIAL)
        fishName = "Köpek Balığı", -- THE APPARENT NAME OF THE FISH
        itemName = "sharkfish", -- ITEM NAME OF THE FISH
        requiredLevel = 20, -- DESIRED LEVEL TO KEEP THE FISH (DON'T FORGET TO CHANGE FROM Config.FishLevels)
        requiredRodLvl = 5, -- FISHING ROD LEVEL AND ABOVE THAT SHOULD BE USED TO CATCH THE FISH
        fishPrice = 200, -- SALE PRICE OF FISH
        onFishMenu = true, -- /FISH APPEARS OR DOES NOT APPEAR ON THE MENU - TRUE: APPEARS _ FALSE: DOES NOT APPEAR
        fishType = "Illegal", -- TYPE OF FISH
        image = "./css/imgs/sharkMiddle.png", -- PICTURE OF THE FISH ON THE FISH MENU
        description = "Bu balığı denizde yakalayabilirsiniz, bu balığı yakalamak için seviye 5 ve üzeri bir oltaya ihtiyacınız var!"
    },      
}

Config.sellMenuItems = { -- FISH ON THE FISH SALE MENU
{
    id = 1, -- BALIK KİMLİĞİ (BÜTÜN BALIKLARIN KİMLİĞİ FARKLI VE SIRALI OLMALIDIR)
    requiredLevel = 1, -- BALIK TUTMAK İÇİN İSTENİLEN SEVİYE (Config.FishLevels'den DEĞİŞTİRMEYİ UNUTMAYINIZ)
    fishName = "Minik Balık", -- BALIĞIN GÖRÜNEN ADI
    itemName = "fish", -- ÖĞE ADI BALIK
    fishPrice = 25, -- BALIK SATIŞ FİYATI
    shopImage = "./css/imgs/fish.png", -- SATIŞ MENÜSÜNDEKİ BALIK RESMİ
},
{
    id = 2, -- BALIK KİMLİĞİ (BÜTÜN BALIKLARIN KİMLİĞİ FARKLI VE SIRALI OLMALIDIR)
    requiredLevel = 1, -- BALIK TUTMAK İÇİN İSTENİLEN SEVİYE (Config.FishLevels'den DEĞİŞTİRMEYİ UNUTMAYINIZ)
    fishName = "Hamsi", -- BALIĞIN GÖRÜNEN ADI
    itemName = "anchovy", -- ÖĞE ADI BALIK
    fishPrice = 35, -- BALIK SATIŞ FİYATI
    shopImage = "./css/imgs/anchovy.png", -- SATIŞ MENÜSÜNDEKİ BALIK RESMİ
},
{
    id = 3, -- BALIK KİMLİĞİ (BÜTÜN BALIKLARIN KİMLİĞİ FARKLI VE SIRALI OLMALIDIR)
    requiredLevel = 2, -- BALIK TUTMAK İÇİN İSTENİLEN SEVİYE (Config.FishLevels'den DEĞİŞTİRMEYİ UNUTMAYINIZ)
    fishName = "Küçük Mavi Balık", -- BALIĞIN GÖRÜNEN ADI
    itemName = "smallbluefish", -- ÖĞE ADI BALIK
    fishPrice = 45, -- BALIK SATIŞ FİYATI
    shopImage = "./css/imgs/smallbluefish.png", -- SATIŞ MENÜSÜNDEKİ BALIK RESMİ
},
{
    id = 4, -- BALIK KİMLİĞİ (BÜTÜN BALIKLARIN KİMLİĞİ FARKLI VE SIRALI OLMALIDIR)
    requiredLevel = 5, -- BALIK TUTMAK İÇİN İSTENİLEN SEVİYE (Config.FishLevels'den DEĞİŞTİRMEYİ UNUTMAYINIZ)
    fishName = "Mavi Balık", -- BALIĞIN GÖRÜNEN ADI
    itemName = "bluefish", -- ÖĞE ADI BALIK
    fishPrice = 55, -- BALIK SATIŞ FİYATI
    shopImage = "./css/imgs/bluefish.png", -- SATIŞ MENÜSÜNDEKİ BALIK RESMİ
},
{
    id = 5, -- BALIK KİMLİĞİ (BÜTÜN BALIKLARIN KİMLİĞİ FARKLI VE SIRALI OLMALIDIR)
    requiredLevel = 9, -- BALIK TUTMAK İÇİN İSTENİLEN SEVİYE (Config.FishLevels'den DEĞİŞTİRMEYİ UNUTMAYINIZ)
    fishName = "Palamut", -- BALIĞIN GÖRÜNEN ADI
    itemName = "bonitosfish", -- ÖĞE ADI BALIK
    fishPrice = 65, -- BALIK SATIŞ FİYATI
    shopImage = "./css/imgs/bonitosfish.png", -- SATIŞ MENÜSÜNDEKİ BALIK RESMİ
},
{
    id = 6, -- BALIK KİMLİĞİ (BÜTÜN BALIKLARIN KİMLİĞİ FARKLI VE SIRALI OLMALIDIR)
    requiredLevel = 11, -- BALIK TUTMAK İÇİN İSTENİLEN SEVİYE (Config.FishLevels'den DEĞİŞTİRMEYİ UNUTMAYINIZ)
    fishName = "Zargana", -- BALIĞIN GÖRÜNEN ADI
    itemName = "garfish", -- ÖĞE ADI BALIK
    fishPrice = 75, -- BALIK SATIŞ FİYATI
    shopImage = "./css/imgs/garfish.png", -- SATIŞ MENÜSÜNDEKİ BALIK RESMİ
},
{
    id = 7, -- BALIK KİMLİĞİ (BÜTÜN BALIKLARIN KİMLİĞİ FARKLI VE SIRALI OLMALIDIR)
    requiredLevel = 13, -- BALIK TUTMAK İÇİN İSTENİLEN SEVİYE (Config.FishLevels'den DEĞİŞTİRMEYİ UNUTMAYINIZ)
    fishName = "Levrek", -- BALIĞIN GÖRÜNEN ADI
    itemName = "perch", -- ÖĞE ADI BALIK
    fishPrice = 85, -- BALIK SATIŞ FİYATI
    shopImage = "./css/imgs/perch.png", -- SATIŞ MENÜSÜNDEKİ BALIK RESMİ
},
{
    id = 8, -- BALIK KİMLİĞİ (BÜTÜN BALIKLARIN KİMLİĞİ FARKLI VE SIRALI OLMALIDIR)
    requiredLevel = 15, -- BALIK TUTMAK İÇİN İSTENİLEN SEVİYE (Config.FishLevels'den DEĞİŞTİRMEYİ UNUTMAYINIZ)
    fishName = "Caretta Caretta", -- BALIĞIN GÖRÜNEN ADI
    itemName = "carettacaretta", -- ÖĞE ADI BALIK
    fishPrice = 95, -- BALIK SATIŞ FİYATI
    shopImage = "./css/imgs/carettacaretta.png", -- SATIŞ MENÜSÜNDEKİ BALIK RESMİ
},
{
    id = 9, -- BALIK KİMLİĞİ (BÜTÜN BALIKLARIN KİMLİĞİ FARKLI VE SIRALI OLMALIDIR)
    requiredLevel = 18, -- BALIK TUTMAK İÇİN İSTENİLEN SEVİYE (Config.FishLevels'den DEĞİŞTİRMEYİ UNUTMAYINIZ)
    fishName = "Pantolon Balığı", -- BALIĞIN GÖRÜNEN ADI
    itemName = "pantfish", -- ÖĞE ADI BALIK
    fishPrice = 105, -- BALIK SATIŞ FİYATI
    shopImage = "./css/imgs/pantfish.png", -- SATIŞ MENÜSÜNDEKİ BALIK RESMİ
},
{
    id = 10, -- BALIK KİMLİĞİ (BÜTÜN BALIKLARIN KİMLİĞİ FARKLI VE SIRALI OLMALIDIR)
    requiredLevel = 18, -- BALIK TUTMAK İÇİN İSTENİLEN SEVİYE (Config.FishLevels'den DEĞİŞTİRMEYİ UNUTMAYINIZ)
    fishName = "Köpek Balığı", -- BALIĞIN GÖRÜNEN ADI
    itemName = "sharkfish", -- ÖĞE ADI BALIK
    fishPrice = 200, -- BALIK SATIŞ FİYATI
    shopImage = "./css/imgs/sharkfish.png", -- SATIŞ MENÜSÜNDEKİ BALIK RESMİ
}, 
}