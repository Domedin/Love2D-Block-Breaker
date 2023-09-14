require("player")
require("tilemap")
require("physics")

function love.load()
    Player:load()
    TileMap:load()
    Physics:load()
end

function love.update(dt)
    Player:update(dt)
    Physics:update(dt)
end

function love.draw()
    Player:draw()
    Physics:draw()
    Bricks:draw()
end