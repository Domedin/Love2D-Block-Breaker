Bricks = {}

local Colors = {
    GreenBlock = "GreenBlock.png",
    LightGreenBlock = "LightGreenBlock.png",
    YellowBlock = "YellowBlock.png",
    OrangeBlock = "OrangeBlock.png",
    RedBlock = "RedBlock.png"
}

Brick = {}
function Brick:new (x, y, color)
    local newBrick = {}
    newBrick.collider = world:newRectangleCollider(x, y, 40, 40, {collision_class = "Danger"})
    newBrick.sprite = Colors[color]
    table.insert(Bricks, newBrick)
end