Physics = {}

function Physics:load()
    wf = require 'libraries/windfield/windfield'
    world = wf.newWorld(0, 0, false)

    world:addCollisionClass('BlockOne')
    world:addCollisionClass('BlockTwo')
    world:addCollisionClass('BlockThree')
    world:addCollisionClass('BlockFour')
    world:addCollisionClass('BlockFive')
    world:addCollisionClass('Ball')
end

function Physics:update(dt)
    world:update(dt)
end

function Physics:draw()
    world:draw()
end