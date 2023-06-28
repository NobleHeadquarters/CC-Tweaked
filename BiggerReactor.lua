local Reactor = peripheral.find("BigReactors-Reactor")

while true do
    local Stats = Reactor.getEnergyStats()
    local Stored = Stats.energyStored
    local Max = Stats.energyCapacity
    local CalcPerc = 100*(Stored/Max)
    
    Reactor.setAllControlRodLevels(CalcPerc)
    sleep(1)
end
