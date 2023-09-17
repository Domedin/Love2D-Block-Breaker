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
    TileMap.gameMap = TileMap.sti("maps/LevelTwo.lua")
    TileMap:loadMap()
end

function TileMap:update(dt)
    if next(Bricks) == nil then
        print("Empty table")
        if TileMap.gameMap == TileMap.sti("maps/LevelTwo.lua") then
            TileMap.gameMap = TileMap.sti("maps/LevelOne.lua")
            TileMap:loadMap()
        end
     end
end

function TileMap:loadMap()
    for i, obj in pairs(TileMap.gameMap.layers["BrickOne"].objects) do
        Brick:new(obj.x, obj.y, Colors.GreenBlock)
    end
    for i, obj in pairs(TileMap.gameMap.layers["BrickTwo"].objects) do
        Brick:new(obj.x, obj.y, Colors.LightGreenBlock)
    end
    for i, obj in pairs(TileMap.gameMap.layers["BrickThree"].objects) do
        Brick:new(obj.x, obj.y, Colors.YellowBlock)
    end
    for i, obj in pairs(TileMap.gameMap.layers["BrickFour"].objects) do
        Brick:new(obj.x, obj.y, Colors.OrangeBlock)
    end
    for i, obj in pairs(TileMap.gameMap.layers["BrickFive"].objects) do
        Brick:new(obj.x, obj.y, Colors.RedBlock)
    end
end

function TileMap:draw()
    for i,obj in ipairs(Bricks) do
        love.graphics.draw(obj.sprite, obj.x, obj.y)
    end
end