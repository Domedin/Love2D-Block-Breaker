require("player")
require("tilemap")
require("physics")
require("bricks")
require("ball")

function love.load()
    Colors:load()
    Physics:load()
    Player:load()
    TileMap:load()
    Ball:load()
end

function love.update(dt)
    Player:update(dt)
    Physics:update(dt)
    Ball:update(dt)
end

function love.draw()
    Player:draw()
    Physics:draw()
    TileMap:draw()
    Ball:draw()
end