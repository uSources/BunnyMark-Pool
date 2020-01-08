require "assets"
Bunny = require "Bunny"
Pool = require "pool"

pool = Pool:create(6)

function love.load()
end
function love.draw()
  pool:draw()
end

function love.update(dt)
  pool:update(dt)
end

function love.mousepressed(x, y, button, istouch)
  if button == 1 then
    pool:add(Bunny:create(x, y, 300))
  end
end
