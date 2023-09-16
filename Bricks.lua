Bricks = {}

Brick = {}

function Brick:new (x, y, color)
    local newBrick = {}
    print(color, "x",x)
    print(color, "y", y)
    newBrick.collider = world:newRectangleCollider(x, y, 40, 40, {collision_class = "Danger"})
    newBrick.sprite = color
    table.insert(Bricks, newBrick)
end