Bricks = {}

Brick = {}

function Brick:checkDead()
    for i=#Bricks,1,-1 do
        local brickNum = Bricks[i]
        if brickNum.hit == true then
            if brickNum.sprite == Colors.RedBlock then
                brickNum.sprite = Colors.OrangeBlock
                brickNum.hit = false
            elseif brickNum.sprite == Colors.OrangeBlock then
                brickNum.sprite = Colors.YellowBlock
                brickNum.hit = false
            elseif brickNum.sprite == Colors.YellowBlock then
                brickNum.sprite = Colors.LightGreenBlock
                brickNum.hit = false
            elseif brickNum.sprite == Colors.LightGreenBlock then
                brickNum.sprite = Colors.GreenBlock
                brickNum.hit = false
            elseif brickNum.sprite == Colors.GreenBlock then
                table.remove(Bricks, i)
            end
        end
    end
end

function Brick:new (x, y, color)
    local newBrick = {}
    newBrick.x = x
    newBrick.y = y
    newBrick.sprite = color
    newBrick.width = newBrick.sprite:getWidth()
    newBrick.height = newBrick.sprite:getHeight()
    newBrick.hit = false
    table.insert(Bricks, newBrick)
end