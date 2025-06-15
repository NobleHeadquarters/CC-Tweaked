local reactor = peripheral.wrap("back")

while true do
    sleep(0.5)
    if reactor.isFormed() and reactor.getFuel() > 0 then
        if reactor.getDamagePercent() > 0 then
            scram()
        else
            reactor.activate()
        end
    else
        scram()
    end
end

local function scram()
    print("Attempting to SCRAM!")
    local success = pcall(reactor.scram())
    if success then
        print("Successfully initiated SCRAM!")
    else
        print("FAILED TO INITIATE SCRAM!")
    end
end
