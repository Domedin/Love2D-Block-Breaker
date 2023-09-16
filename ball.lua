Ball = {}

function Ball:load()
    Ball.startX = love.graphics.getWidth() * 0.5
    Ball.startY = love.graphics.getHeight() * 0.5
    Ball.sprite = love.graphics.newImage("sprites/Ball.png")
    Ball.width = Ball.sprite:getWidth()
    Ball.height = Ball.sprite:getHeight()
    ball = world:newRectangleCollider(Ball.startX, Ball.startY, Ball.width, Ball.height, {collision_class = "Ball"})
    ball:setFixedRotation(true)
end

function Ball:update(dt)

end

function Ball:draw()
    local bx, by = ball:getPosition()
    love.graphics.draw(Ball.sprite, bx - Ball.width / 2, by - Ball.height / 2)
end