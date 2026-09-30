local Nhat = "https://raw.githubusercontent.com/tsnhat12-wq/Nhat-HiHi/refs/heads/main/Nhat.lua"
local NhatHiHi = "https://raw.githubusercontent.com/tsnhat12-wq/Nhat-HiHi-RBL/refs/heads/main/NhatHiHi.lua"
local WalkNoStun = "https://raw.githubusercontent.com/tsnhat12-wq/Nhat-HiHi-DEV/refs/heads/main/WalkNoStun-NhatHiHi"
local Font = "https://raw.githubusercontent.com/NhatHihi-dev/Font/refs/heads/main/Font-RBL.lua"

local byPlaceId = {
    [79091703265657] = {Nhat, NhatHiHi, WalkNoStun, Font},
    [100117331123089] = {Nhat, NhatHiHi, WalkNoStun, Font},
    [85211729168715] = {Nhat, NhatHiHi, WalkNoStun, Font},
    [107778070777162] = {Nhat, Font},
}

local scripts = byPlaceId[game.PlaceId]
if not scripts then return end

for _, url in ipairs(scripts) do
    for _ = 1, 3 do
        local ok, source = pcall(game.HttpGet, game, url)
        if ok and type(source) == "string" and source ~= "" then
            local chunk = loadstring(source)
            if chunk then
                pcall(chunk)
                break
            end
        end
        task.wait(0.5)
    end
end
