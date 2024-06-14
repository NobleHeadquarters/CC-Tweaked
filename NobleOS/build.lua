print("Are you sure you want to install NobleOS? (Y/N)")

local repo = "https://raw.githubusercontent.com/NobleHeadquarters/CC-Tweaked/main/NobleOS"

local filesToGrab = {"startup.lua", "lock.lua", "update.lua"}

if string.lower(read()) == "y" then
    for _, fileName in pairs(filesToGrab) do
        fs.delete(fileName)
    end
    for _, fileName in pairs(filesToGrab) do
        shell.run("wget " .. repo .. "/" .. fileName)
    end
    shell.run("clear")
    print("Completed install!")
    sleep(1)
    os.reboot()
else
    print("Aborting install...")
end
