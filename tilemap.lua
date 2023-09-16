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
    sti = require 'Libraries/Simple-Tiled-Implementation/sti'
    TileMap:loadMap()
end

function TileMap:loadMap()
    gameMap = sti("maps/LevelOne.lua")

    for i, obj in pairs(gameMap.layers["BrickOne"].objects) do
        Brick:new(obj.x, obj.y, Colors.GreenBlock)
    end
    for i, obj in pairs(gameMap.layers["BrickTwo"].objects) do
        Brick:new(obj.x, obj.y, Colors.LightGreenBlock)
    end
    for i, obj in pairs(gameMap.layers["BrickThree"].objects) do
        Brick:new(obj.x, obj.y, Colors.YellowBlock)
    end
    for i, obj in pairs(gameMap.layers["BrickFour"].objects) do
        Brick:new(obj.x, obj.y, Colors.OrangeBlock)
    end
    for i, obj in pairs(gameMap.layers["BrickFive"].objects) do
        Brick:new(obj.x, obj.y, Colors.RedBlock)
    end
end

function TileMap:draw()
    for i,obj in ipairs(Bricks) do
        local ex, ey = obj.collider:getPosition()   
        love.graphics.draw(obj.sprite, ex - obj.sprite:getWidth() / 2, ey - obj.sprite:getHeight() / 2)
    end
end