local queue_on_teleport=(syn and syn.queue_on_teleport) or queue_on_teleport or (fluxus and fluxus.queue_on_teleport)

local Nhat="https://raw.githubusercontent.com/tsnhat12-wq/Nhat-HiHi/refs/heads/main/Nhat.lua"
local NhatHiHi="https://raw.githubusercontent.com/tsnhat12-wq/Nhat-HiHi-RBL/refs/heads/main/NhatHiHi.lua"
local WalkNoStun="https://raw.githubusercontent.com/tsnhat12-wq/Nhat-HiHi-DEV/refs/heads/main/WalkNoStun-NhatHiHi"
local Font="https://raw.githubusercontent.com/NhatHihi-dev/Font/refs/heads/main/Font-RBL.lua"

local Scripts={
    [79091703265657]={Nhat,NhatHiHi,WalkNoStun,Font},
    [100117331123089]={Nhat,NhatHiHi,WalkNoStun,Font},
    [85211729168715]={Nhat,NhatHiHi,WalkNoStun,Font},
    [107778070777162]={Nhat,Font},
}

local function LoadScripts()
    local list=Scripts[game.PlaceId]
    if not list then return end

    for _,url in ipairs(list) do
        for _=1,3 do
            local ok,source=pcall(game.HttpGet,game,url)
            if ok and type(source)=="string" and source~="" then
                local chunk=loadstring(source)
                if chunk then
                    pcall(chunk)
                    break
                end
            end
            task.wait(0.5)
        end
    end
end

if queue_on_teleport then
    queue_on_teleport([[
        local Nhat="https://raw.githubusercontent.com/tsnhat12-wq/Nhat-HiHi/refs/heads/main/Nhat.lua"
        local NhatHiHi="https://raw.githubusercontent.com/tsnhat12-wq/Nhat-HiHi-RBL/refs/heads/main/NhatHiHi.lua"
        local WalkNoStun="https://raw.githubusercontent.com/tsnhat12-wq/Nhat-HiHi-DEV/refs/heads/main/WalkNoStun-NhatHiHi"
        local Font="https://raw.githubusercontent.com/NhatHihi-dev/Font/refs/heads/main/Font-RBL.lua"

        local Scripts={
            [79091703265657]={Nhat,NhatHiHi,WalkNoStun,Font},
            [100117331123089]={Nhat,NhatHiHi,WalkNoStun,Font},
            [85211729168715]={Nhat,NhatHiHi,WalkNoStun,Font},
            [107778070777162]={Nhat,Font},
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

LoadScripts()
