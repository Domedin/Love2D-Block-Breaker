Player = {}

function Player:load()
    Player.x = love.graphics.getWidth() * 0.5
    Player.y = 820
    Player.sprite = love.graphics.newImage("sprites/Paddle.png")
    Player.width = Player.sprite:getWidth()
    Player.height = Player.sprite:getHeight()
    Player.speed = 500
end

function Player:update(dt)
    Player:movement(dt)
    Player:constraints()
end

function Player:constraints()
    if Player.x < 0 then
        Player.x = 0
    elseif Player.x + Player.width > love.graphics.getWidth() then
        Player.x = love.graphics.getWidth() - Player.width
    end
end

function Player:movement(dt)
    if love.keyboard.isDown("a") then
        Player.x = Player.x - Player.speed * dt
    elseif love.keyboard.isDown("d") then
        Player.x = Player.x + Player.speed * dt
    end
end

function Player:draw()
    love.graphics.draw(Player.sprite, Player.x, Player.y)
end