local Passphrase = ""

oldPull = os.pullEvent
os.pullEvent = os.pullEventRaw

local function reset()
    shell.run("clear")
    print("This device is password protected.")
    write("Password> ")
end
reset()
while true do
    local typed = read("*")
    if typed == Passphrase then
        print("Successfully logged in.")
        os.pullEvent = oldPull
        sleep(1)
        shell.run("clear")
        break
    else
        print("Please try again.")
        sleep(1)
        reset()
    end
end
