require("player")
require("tilemap")
require("physics")
require("Bricks")

function love.load()
    Colors:load()
    Player:load()
    Physics:load()
    TileMap:load()
end

function love.update(dt)
    Player:update(dt)
    Physics:update(dt)
end

function love.draw()
    Player:draw()
    Physics:draw()
    TileMap:draw()
end