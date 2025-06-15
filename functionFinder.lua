local p = peripheral.wrap("back")
for fName, func in pairs(p) do
    print(fName)
    print(func)
end
