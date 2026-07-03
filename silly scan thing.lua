local p = peripheral.find("geo_scanner")

local args = {...}

local radius = tonumber(args[1])

local results = p.scan(radius)

local tag = "c:ores"

for i, v in pairs(results) do
    for i2, v2 in pairs(v.tags) do
        if v2 == tag then
            print(v.name)
        end
    end
end
