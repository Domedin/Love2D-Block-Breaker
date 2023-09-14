Bricks = {}

BrickOne = {}

function BrickOne:SpawnBrick(x, y)
    local brickOne = world:newRectangleCollider(x, y, 40, 40, {collision_class = "Danger"})
    BrickOne.sprite = "GreenBlock.png"
    table.insert(Bricks, brickOne)
end

BrickTwo = {}

function BrickTwo:SpawnBrick(x, y)
    local brickTwo = world:newRectangleCollider(x, y, 40, 40, {collision_class = "Danger"})
    BrickTwo.sprite = "LightGreenBlock.png"
    table.insert(Bricks, brickTwo)
end

BrickThree = {}

function BrickThree:SpawnBrick(x, y)
    local brickThree = world:newRectangleCollider(x, y, 40, 40, {collision_class = "Danger"})
    BrickThree.sprite = "YellowBlock.png"
    table.insert(Bricks, brickThree)
end

BrickFour = {}

function BrickFour:SpawnBrick(x, y)
    local brickFour = world:newRectangleCollider(x, y, 40, 40, {collision_class = "Danger"})
    BrickFour.sprite = "OrangeBlock.png"
    table.insert(Bricks, brickFour)
end

BrickFive = {}

function BrickFive:SpawnBrick(x, y)
    local brickFive = world:newRectangleCollider(x, y, 40, 40, {collision_class = "Danger"})
    BrickFour.sprite = "RedBlock.png"
    table.insert(Bricks, brickFive)
end

function Bricks:draw()
    for i,b in ipairs(Bricks) do
        local ex, ey = b:getPosition()
        b.sprite.draw(b.sprite, ex, ey)
    end
end