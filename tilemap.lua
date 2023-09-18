Colors = {}

function Colors:load()
    Colors.GreenBlock = love.graphics.newImage("sprites/GreenBrick.png")
    Colors.LightGreenBlock = love.graphics.newImage("sprites/LightGreenBrick.png")
    Colors.YellowBlock = love.graphics.newImage("sprites/YellowBlock.png")
    Colors.OrangeBlock = love.graphics.newImage("sprites/OrangeBlock.png")
    Colors.RedBlock = love.graphics.newImage("sprites/RedBlock.png")
end

TileMap = {}

function TileMap:load()
    TileMap.sti = require 'Libraries/Simple-Tiled-Implementation/sti'
    TileMap.gameMap = 1
    TileMap:loadMap()
end

function TileMap:update(dt)
    print(TileMap.gameMap)
    if next(Bricks) == nil then
        print("Empty table")
        if TileMap.gameMap == 1 then
            TileMap.gameMap = 2
            TileMap:loadMap()
        elseif TileMap.gameMap == 2 then
            TileMap.gameMap = 3
            TileMap:loadMap()
        elseif TileMap.gameMap == 3 then
            TileMap.gameMap = 4
            TileMap:loadMap()
        elseif TileMap.gameMap == 4 then
            TileMap.gameMap = 5
            TileMap:loadMap()
        elseif TileMap.gameMap == 5 then
            TileMap.gameMap = 1
            TileMap:loadMap()
        end
    end
end

function TileMap:loadMap()
    if TileMap.gameMap == 1 then
        map = TileMap.sti("maps/LevelOne.lua")
    elseif TileMap.gameMap == 2 then
        map = TileMap.sti("maps/LevelTwo.lua")
    elseif TileMap.gameMap == 3 then
        map = TileMap.sti("maps/LevelThree.lua")
    elseif TileMap.gameMap == 4 then
        map = TileMap.sti("maps/LevelFour.lua")
    elseif TileMap.gameMap == 5 then
        map = TileMap.sti("maps/LevelFive.lua")
    end
    for i, obj in pairs(map.layers["BrickOne"].objects) do
        Brick:new(obj.x, obj.y, Colors.GreenBlock)
    end
    for i, obj in pairs(map.layers["BrickTwo"].objects) do
        Brick:new(obj.x, obj.y, Colors.LightGreenBlock)
    end
    for i, obj in pairs(map.layers["BrickThree"].objects) do
        Brick:new(obj.x, obj.y, Colors.YellowBlock)
    end
    for i, obj in pairs(map.layers["BrickFour"].objects) do
        Brick:new(obj.x, obj.y, Colors.OrangeBlock)
    end
    for i, obj in pairs(map.layers["BrickFive"].objects) do
        Brick:new(obj.x, obj.y, Colors.RedBlock)
    end
end

function TileMap:draw()
    for i,obj in ipairs(Bricks) do
        love.graphics.draw(obj.sprite, obj.x, obj.y)
    end
end