local url = string.format("https://github.com/xChonkster/TardHub/blob/main/Games/%s.lua?raw=true", 
	(function()
		local games_meta = {
			[286090429] = "Arsenal"
		}

		local game_meta = rawget(games_meta, game.PlaceId)

		if not game_meta then return "Universal" else return game_meta end
	end)()
)

local queue_on_teleport = syn and syn.queue_on_teleport or function()
	warn("the queue_on_teleport function was not found on this exploit")
end

queue_on_teleport(game:HttpGet("https://github.com/xChonkster/TardHub/blob/main/Loader.lua?raw=true"))

local func, err = loadstring(game:HttpGet(url))
if not func then warn(err) else return func() end
