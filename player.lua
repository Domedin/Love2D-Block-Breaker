Player = {}

function Player:load()
    Player.startX = love.graphics.getWidth() * 0.5
    Player.startY = 820
    Player.sprite = love.graphics.newImage("sprites/Paddle.png")
    Player.width = Player.sprite:getWidth()
    Player.height = Player.sprite:getHeight()
    Player.speed = 500
    player = world:newRectangleCollider(Player.startX, Player.startY, Player.width, Player.height, {collision_class = "Paddle"})
    player:setType('static')
    player:setFixedRotation(true)
end

function Player:update(dt)
    Player:movement(dt)
    Player:constraints()
end

function Player:constraints()
    local px, py = player:getPosition()
    if px - Player.width / 2 < 0 then
        player:setX(0 + (Player.width / 2))
    elseif px + Player.width / 2 > love.graphics.getWidth() then
        player:setX(love.graphics.getWidth() - (Player.width / 2)) 
    end
end

function Player:movement(dt)
    local px, py = player:getPosition()
    if love.keyboard.isDown("a") then
        player:setX(px - Player.speed * dt)
    elseif love.keyboard.isDown("d") then
        player:setX(px + Player.speed * dt)
    end
end

function Player:draw()
    local px, py = player:getPosition()
    love.graphics.draw(Player.sprite, px - Player.width / 2, py - Player.height / 2)
end