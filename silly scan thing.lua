local p = peripheral.find("geo_scanner")

local args = {...}

local radius = 16

local results = p.scan(radius)

local tag = "minecraft:block/c:ores"

print("cost: " .. p.cost(radius) .. "FE")

local counters = {}

for _, result in pairs(results) do
    for _, tagvalue in pairs(result.tags) do
        if tagvalue == tag then
            local exists = false
            for index, found in pairs(counters) do
                if index == result.name then
                    exists = true
                    break
                end
            end
            if exists == false then
                counters[result.name] = 0
            end
            counters[result.name] += 1
            break
        end
    end
end

for index, value in pairs(counters) do
    print("Found " .. value .. " " .. index .. " within " .. radius .. " blocks")
end
