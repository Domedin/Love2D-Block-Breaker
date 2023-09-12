Player = {}

function Player:load()
    self.x = love.graphics.getWidth() * 0.5
    self.y = 860
    self.img = love.graphics.newImage("sprites/Paddle.png")
    self.width = self.img:getWidth()
    self.height = self.img:getHeight()
    self.speed = 500
end

function Player:update(dt)
    self:move(dt)
    self:constraints()
end

function Player:constraints()
    if self.x < 0 then
        self.x = 0
    elseif self.x + self.width > love.graphics.getWidth() then
        self.x = love.graphics.getWidth() - self.width
    end
end

function Player:move(dt)
    if love.keyboard.isDown("a") then
        self.x = self.x - self.speed * dt
    elseif love.keyboard.isDown("d") then
        self.x = self.x + self.speed * dt
    end
end

function Player:draw()
    love.graphics.draw(self.img, self.x, self.y)
end