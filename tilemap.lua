TileMap = {}

function TileMap:load()
    sti = require 'Libraries/Simple-Tiled-Implementation/sti'
    TileMap:loadMap()
end

function TileMap:loadMap()
    gameMap = sti("maps/LevelOne.lua")

    for color, layer in pairs(gameMap.layers) do
        for i, obj in pairs(layer.objects) do
            Brick:new(obj.x, obj.y, color)
        end
    end
end