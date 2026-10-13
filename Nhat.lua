local queue_on_teleport=(syn and syn.queue_on_teleport) or queue_on_teleport or (fluxus and fluxus.queue_on_teleport)

local BLFS2="https://raw.githubusercontent.com/tsnhat12-wq/Nhat-HiHi/refs/heads/main/Nhat.lua"
local BLFS2="https://raw.githubusercontent.com/tsnhat12-wq/Nhat-HiHi-RBL/refs/heads/main/NhatHiHi.lua"
local BLFS3="https://raw.githubusercontent.com/tsnhat12-wq/Nhat-HiHi-DEV/refs/heads/main/WalkNoStun-NhatHiHi"
local BLFS4="https://raw.githubusercontent.com/NhatHihi-dev/Font/refs/heads/main/Font-RBL.lua"

local Scripts={
    [79091703265657]={BLFS1,BLFS2,BLFS3,BLFS4},
    [2753915549]={BLFS1,BLFS2,BLFS3,BLFS4},
    [100117331123089]={BLFS1,BLFS2,BLFS3,BLFS4},
    [85211729168715]={BLFS1,BLFS2,BLFS3,BLFS4},
    [107778070777162]={BLFS1,BLFS4},
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
        local BLFS1="https://raw.githubusercontent.com/tsnhat12-wq/Nhat-HiHi/refs/heads/main/Nhat.lua"
        local BLFS2="https://raw.githubusercontent.com/tsnhat12-wq/Nhat-HiHi-RBL/refs/heads/main/NhatHiHi.lua"
        local BLFS3="https://raw.githubusercontent.com/tsnhat12-wq/Nhat-HiHi-DEV/refs/heads/main/WalkNoStun-NhatHiHi"
        local BLFS4="https://raw.githubusercontent.com/NhatHihi-dev/Font/refs/heads/main/Font-RBL.lua"

        local Scripts={
        [79091703265657]={BLFS1,BLFS2,BLFS3,BLFS4},
        [2753915549]={BLFS1,BLFS2,BLFS3,BLFS4},            [100117331123089]={BLFS1,BLFS2,BLFS3,BLFS4},
        [85211729168715]={BLFS1,BLFS2,BLFS3,BLFS4},
        [107778070777162]={BLFS1,BLFS4},
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
