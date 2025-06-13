while true do
    if turtle.detectDown() then
        print(turtle.inspectDown()[1])
    end
    os.sleep(1)
end
