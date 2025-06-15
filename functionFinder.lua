local p = peripheral.wrap("back")
local monitor = peripheral.find("monitor")

term.redirect(monitor)
monitor.setTextScale(0.5)

for fName, func in pairs(p) do
    print(fName)
end
