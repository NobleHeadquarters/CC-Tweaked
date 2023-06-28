local reactor = peripheral.find("BiggerReactors_Reactor")
local monitor = peripheral.find("monitor")

shell.run("clear")
print("Reactor controller is running...")

while true do
    monitor.clear()
    monitor.setCursorPos(1, 1)
    monitor.write(reactor.battery().stored().."FE")
    monitor.setCursorPos(1, 3)
    local percent = math.floor((reactor.battery().stored()/reactor.battery().capacity()*10000))/100
    monitor.write(tostring(percent).."%")
    local rodlevel = percent
    reactor.setAllControlRodLevels(rodlevel)
    sleep(0.25)
end
