local url = "https://raw.githubusercontent.com/IveyPawz/Stargate-Dialing-Program/refs/heads/main/Dialing%20Program.lua"
local destination = "sgc.lua" 

local response = http.get(url)
if response then
    local content = response.readAll()
    response.close()

    local file = fs.open(destination, "w")
    file.write(content)
    file.close()

    print("Update complete: Stargate dialing program downloaded to '" .. destination .. "'")
else
    print("Failed to download the Stargate dialing program.")
end
