local p = peripheral.find("geo_scanner")

local args = {...}

local radius = 10

local results = p.scan(radius)

local tag = "c:ores"

print("cost: " .. p.cost(radius) .. "FE")

for _, result in pairs(results) do
    if result.name == "minecraft:coal_ore" then
        for _, tagvalue in pairs(result.tags) do
            print(tagvalue)
        end
        break
    end
end
