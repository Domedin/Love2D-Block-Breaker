Ball = {}

function Ball:load()
    Ball.x = love.graphics.getWidth() * 0.5
    Ball.y = love.graphics.getHeight() * 0.5
    Ball.sprite = love.graphics.newImage("sprites/Ball.png")
    Ball.width = Ball.sprite:getWidth()
    Ball.height = Ball.sprite:getHeight()
    Ball.speed = 600
    Ball.xVel = 0
    Ball.yVel = Ball.speed
end

function Ball:update(dt)
    if gameManager.gameState then
        Ball:move(dt)
        Ball:collide()
    end
end

function Ball:move(dt)
    Ball.x = Ball.x + Ball.xVel * dt
    Ball.y = Ball.y + Ball.yVel * dt
end

function Ball:collide()
    Ball:collideWallX()
    Ball:collideWallY()
    Ball:collidePlayer()
    Ball:collideBrick()
    Ball:collideFloor()
end

function Ball:collideWallX()
    if Ball.x - (Ball.width / 2) < 0 then
        Ball.x = 0 + (Ball.width / 2)
        Ball.xVel = -Ball.xVel
    elseif Ball.x + (Ball.width / 2) > love.graphics.getWidth() then
        Ball.x = love.graphics.getWidth() - (Ball.width / 2)
        Ball.xVel = -Ball.xVel
    end
end

function Ball:collidePlayer()
    if checkCollision(Ball, Player) then
        Ball.xVel = -Ball.speed
        local middleBall = Ball.y + Ball.height / 2
        local middlePlayer = Player.y + Player.height / 2
        local collisionPosition = middleBall - middlePlayer
        Ball.yVel = collisionPosition * 5
    end
end

function Ball:collideWallY()
    if Ball.y < 0 then
        Ball.y = 0
        Ball.yVel = -Ball.yVel
    end
end

function Ball:collideBrick()
    for i,obj in ipairs(Bricks) do
        if checkCollision(Ball, obj) then
            Ball.xVel = -Ball.speed
            local middleBall = Ball.y + Ball.height / 2
            local middleBrick = obj.y + obj.height / 2
            local collisionPosition = middleBall - middleBrick
            Ball.yVel = collisionPosition * 5
            obj.hit = true
        end
    end
end

function Ball:collideFloor()
    if Ball.y > love.graphics.getHeight() - (Ball.height / 2) then
        TileMap:loadMap()
        Ball:load()
    end
end

function Ball:draw()
    love.graphics.draw(Ball.sprite, Ball.x - Ball.width / 2, Ball.y - Ball.height / 2)
end