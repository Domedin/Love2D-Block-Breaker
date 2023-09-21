gameManager = {}

function gameManager.load()
    gameManager.gameState = false
end

function gameManager.update(dt)
    if love.keyboard.isDown("space") then
        gameManager.gameState = true
    end
end

function gameManager.draw()
    if gameManager.gameState == false then
        love.graphics.printf("Click Space to Begin!", 0, 50, love.graphics.getWidth(), "center")
    end
end