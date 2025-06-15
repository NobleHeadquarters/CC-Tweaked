local reactor = peripheral.wrap("back")
local monitor = peripheral.find("monitor")

term.redirect(monitor)
monitor.setTextScale(0.5)

while true do
    sleep(0.5)
    if reactor.isFormed() and reactor.getFuel()["amount"] > 0 then
        if reactor.getDamagePercent() > 0 then
            scram()
        else
            if not reactor.getStatus() then
                reactor.activate()
            end
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
