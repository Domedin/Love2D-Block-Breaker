TileMap = {}

function TileMap:load()
    sti = require 'Libraries/Simple-Tiled-Implementation/sti'
    TileMap:loadMap()
end

function TileMap:loadMap()
    gameMap = sti("maps/LevelOne.lua")

    for i, obj in pairs(gameMap.layers["BrickOne"].objects) do
        BrickOne:SpawnBrick(obj.x, obj.y)
    end
    for i, obj in pairs(gameMap.layers["BrickTwo"].objects) do
        BrickTwo:SpawnBrick(obj.x, obj.y)
    end
    for i, obj in pairs(gameMap.layers["BrickThree"].objects) do
        BrickOne:SpawnBrick(obj.x, obj.y)
    end
    for i, obj in pairs(gameMap.layers["BrickFour"].objects) do
        BrickOne:SpawnBrick(obj.x, obj.y)
    end
    for i, obj in pairs(gameMap.layers["BrickFive"].objects) do
        BrickOne:SpawnBrick(obj.x, obj.y)
    end
end
