local queue_on_teleport=(syn and syn.queue_on_teleport) or queue_on_teleport or (fluxus and fluxus.queue_on_teleport)

local Nhat="https://raw.githubusercontent.com/NhatHihi-dev/NhatHiHi/refs/heads/main/Nhat.lua"
local NhatHiHi="https://raw.githubusercontent.com/tsnhat12-wq/Nhat-HiHi-RBL/refs/heads/main/NhatHiHi.lua"
local WalkNoStun="https://raw.githubusercontent.com/tsnhat12-wq/Nhat-HiHi-DEV/refs/heads/main/WalkNoStun-NhatHiHi"
local Font="https://raw.githubusercontent.com/NhatHihi-dev/Font/refs/heads/main/Font-RBL.lua"

local Scripts={
    [79091703265657]={Nhat,NhatHiHi,WalkNoStun,Font},
    [100117331123089]={Nhat,NhatHiHi,WalkNoStun,Font},
    [85211729168715]={Nhat,NhatHiHi,WalkNoStun,Font},
    [107778070777162]={Nhat,Font},
}

local function GetCode()
    local t={}
    for _,url in ipairs(Scripts[game.PlaceId] or {}) do
        t[#t+1]='loadstring(game:HttpGet("'..url..'"))()'
    end
    return table.concat(t,"\n")
end

if queue_on_teleport then
    queue_on_teleport([[
        local Scripts={
            [79091703265657]={
                "https://raw.githubusercontent.com/NhatHihi-dev/NhatHiHi/refs/heads/main/Nhat.lua",
                "https://raw.githubusercontent.com/tsnhat12-wq/Nhat-HiHi-RBL/refs/heads/main/NhatHiHi.lua",
                "https://raw.githubusercontent.com/tsnhat12-wq/Nhat-HiHi-DEV/refs/heads/main/WalkNoStun-NhatHiHi",
                "https://raw.githubusercontent.com/NhatHihi-dev/Font/refs/heads/main/Font-RBL.lua"
            },
            [100117331123089]={
                "https://raw.githubusercontent.com/NhatHihi-dev/NhatHiHi/refs/heads/main/Nhat.lua",
                "https://raw.githubusercontent.com/tsnhat12-wq/Nhat-HiHi-RBL/refs/heads/main/NhatHiHi.lua",
                "https://raw.githubusercontent.com/tsnhat12-wq/Nhat-HiHi-DEV/refs/heads/main/WalkNoStun-NhatHiHi",
                "https://raw.githubusercontent.com/NhatHihi-dev/Font/refs/heads/main/Font-RBL.lua"
            },
            [85211729168715]={
                "https://raw.githubusercontent.com/NhatHihi-dev/NhatHiHi/refs/heads/main/Nhat.lua",
                "https://raw.githubusercontent.com/tsnhat12-wq/Nhat-HiHi-RBL/refs/heads/main/NhatHiHi.lua",
                "https://raw.githubusercontent.com/tsnhat12-wq/Nhat-HiHi-DEV/refs/heads/main/WalkNoStun-NhatHiHi",
                "https://raw.githubusercontent.com/NhatHihi-dev/Font/refs/heads/main/Font-RBL.lua"
            },
            [107778070777162]={
                "https://raw.githubusercontent.com/NhatHihi-dev/NhatHiHi/refs/heads/main/Nhat.lua",
                "https://raw.githubusercontent.com/NhatHihi-dev/Font/refs/heads/main/Font-RBL.lua"
            }
        }

        local list=Scripts[game.PlaceId]
        if list then
            for _,url in ipairs(list) do
                pcall(function()
                    loadstring(game:HttpGet(url))()
                end)
            end
        end
    ]])
end

local code=GetCode()
if code~="" then
    loadstring(code)()
end
