require("player")
require("tilemap")
require("physics")
require("bricks")
require("ball")
require("gameManager")

function love.load()
    Colors:load()
    Physics:load()
    Player:load()
    TileMap:load()
    Ball:load()
    gameManager.load()
end

function love.update(dt)
    Player:update(dt)
    Physics:update(dt)
    Ball:update(dt)
    Brick:checkDead()
    TileMap:update(dt)
    gameManager.update(dt)
end

function love.draw()
    Player:draw()
    Physics:draw()
    TileMap:draw()
    Ball:draw()
    gameManager.draw()
end

function checkCollision(a, b)
    if a.x + a.width > b.x and a.x < b.x + b.width and a.y + a.height > b.y and a.y < b.y + b.height then
        return true
    else
        return false
    end
end