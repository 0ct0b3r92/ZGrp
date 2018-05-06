Config              = {}
Config.DrawDistance = 1000.0
Config.Locale       = 'en'

Config.Plates = {
  taxi        = "TAXI",
  fisherman   = "FISH",
  cop         = "LSPD",
  ambulance   = "EMS",
  depanneur   = "MECA",
  fuel        = "FUEL",
  lumberjack  = "BUCH",
  miner       = "MINE",
  reporter    = "JOUR",
  slaughterer = "ABAT",
  textil      = "COUT",
}

Config.Jobs = {}

Config.PublicZones = {
  EnterBuilding = {
    Pos       = { x = -118.213, y = -607.142, z = 35.280 },
    Size      = { x = 3.0, y = 3.0, z = 0.2 },
    Color     = { r = 204, g = 204, b = 0 },
    Marker    = 1,
    Blip      = false,
    Name      = "The Maclerait Liberated",
    Type      = "teleport",
    Hint      = "Press ~INPUT_PICKUP~ to enter the building.",
    Teleport  = { x = -139.098, y = -620.748, z = 167.820 }
  },

  ExitBuilding = {
    Pos       = { x = -139.458, y = -617.323, z = 167.820 },
    Size      = { x = 3.0, y = 3.0, z = 0.2 },
    Color     = { r = 204, g = 204, b = 0 },
    Marker    = 1,
    Blip      = false,
    Name      = "The Maclerait Liberated",
    Type      = "teleport",
    Hint      = "Press ~INPUT_PICKUP~ to go to the entrance of the building.",
    Teleport  = { x = -113.07, y = -604.93, z = 35.28 },
  },
}
