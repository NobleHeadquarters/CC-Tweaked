local args = {...}
local knownIDs = {}

if #args > 0 then
    print("Running program with the following arguments:")
    for i = 1,#args do
        print(args[i])
    end
else
    print("Please provide arguments for this program. (Start, Stop, Debug, Etc.)")
end

local function err(errArg)
    print('Identified error... "'..errArg..'" is not a recognized argument.')
end

if string.lower(args[1]) == "debug" then
    print("Debug Success!")
elseif string.lower(args[1]) == "start"
    print("WIP Feature")
    if rednet.isOpen == false then
        print("RedNet port is currently closed. Cancelling.")
        return
    end
    print("Attempting to host LL2Net protocol...")
    rednet.host("LL2Net", "Server")
    print("Success!")
elseif string.lower(args[1]) == "ping" then
    if rednet.isOpen then
        if #knownIDs > 0 then
            print("Attempting to ping all known network devices...")
            for i = 1, #knownIDs do
                print("Pinging computer with ID: "..knownIDs[i])
                rednet.send(knownIDs[i], "Ping", "LL2Net")
                local id, message = rednet.receive("LL2Net", 3)
                if id == nil then
                    print("Connection timed out.")
                else
                    print(message)
                end
            end
            print("Finished pinging all devices!")
        else
            print("No known computers on network! Use DISCOVER argument.")
        end
    else
        print("RedNet port is currently closed. Cancelling")
    end
else
    err(args[1])
end