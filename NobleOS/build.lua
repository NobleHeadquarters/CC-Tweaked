print("Are you sure you want to delete all files and install NobleOS? (Y/N)")

if string.lower(read()) == "y" then
    shell.run("delete *")
    shell.run("copy disk/newStartup.lua startup.lua")
    shell.run("copy disk/lock.lua lock.lua")
    shell.run("clear")
    print("Completed install!")
    sleep(1)
    os.reboot()
else
    print("Aborting install...")
end
