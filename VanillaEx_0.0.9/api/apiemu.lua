-- Creates an mock API to test the mod's Control code without actually running factorio
-- Now also loads the data/custom items
api={}
api.tick=0
api.events=0
isrun=true
math.randomseed(2)
--math.randomseed(os.time())

require "api.apifunc"
require "api.apiconfig"

require "api.dataloader" -- Loads mod data

require "api.gamehandler" -- Initiates gamestate
require "config"
require "lualib.ExControl"

apiprint("Loading Mods")
printdata()
apiprint("Mods Loaded")

while api.tick<gameduration+10^7 do
  api.tick=api.tick+1

  if #game.players>0 and isrun then

    if isload==true then
      gameInit()
      enable_energy=samesettings
      gameLoad()
    else gameInit()
    end

    while game.tick < gameduration do

      game.tick =game.tick + 1


      for k,v in pairs(buildeventticks) do
        if game.tick == v then
          ExEntity.build(placeentity(buildeventname[k]))
        end
      end

      if game.tick%tickprint==0 then
        print("Tick "..game.tick)
      end

      gameTick()

    end
    isrun=false
    apiprint("Total Events: "..api.events)
    apiprint("Going Idle.")

  end

end

print("Terminated.")
