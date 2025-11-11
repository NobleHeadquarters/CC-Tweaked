local p = peripheral.find("")

local output = {}
for fName, func in pairs(p) do
    table.insert(output, type(func) .. " | " .. fName .. "\n")
end

io.output("FunctionFinderLog.txt")
io.write(table.unpack(output))
