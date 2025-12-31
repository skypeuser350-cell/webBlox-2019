local logs = {}
local oldPrint = _G.print

_G.print = function(...)
    local args = {...}
    local message = ""
    for i, v in ipairs(args) do
        message = message .. tostring(v) .. (i < #args and "\t" or "")
    end
    table.insert(logs, message) -- Store log for GUI
    oldPrint(message)           -- Still show in terminal
end

print("TESTING OUTPUTS")
