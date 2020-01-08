Pool = {}
Pool.__index = Pool

function Pool:create(ammout)
    local o = {}
    setmetatable(o, Pool)
    o.ammout = ammout or 15
    o.pool = {}
    return o
end

function Pool:draw()
    for i, obj in ipairs(self.pool) do
        obj:draw()
    end
end

function Pool:update(dt)
    for i, obj in ipairs(self.pool) do
        obj:update(dt)
    end
end

function Pool:add(obj)
    if self.ammout <= #self.pool then
        for i, obj in ipairs(self.pool) do
            if i < #self.pool then
                self.pool[i] = self.pool[i + 1]
            end
        end
        self.pool[#self.pool] = obj
    else
        table.insert(self.pool, obj)
    end
end

return Pool
