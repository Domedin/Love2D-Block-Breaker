Physics = {}

function Physics:load()
    wf = require 'Libraries/windfield/windfield'
    world = wf.newWorld(0, 0, false)

    world:addCollisionClass('BlockOne')
    world:addCollisionClass('BlockTwo')
    world:addCollisionClass('BlockThree')
    world:addCollisionClass('BlockFour')
    world:addCollisionClass('BlockFive')
    world:addCollisionClass('Ball')
    world:addCollisionClass('Paddle')
end

function Physics:update(dt)
    world:update(dt)
end

function Physics:draw()
    world:draw()
end