local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Sightless Hub Salapakjai", "BloodTheme")
local Tab = Window:NewTab("Players")
local Section = Tab:NewSection("Teleport")
 
--------------------
 
players = {}
 
for i,v in pairs(game:GetService("Players"):GetChildren()) do
   table.insert(players,v.Name)
end
 
Section:NewDropdown("Select Player", " ", players, function(abc)
    Select = abc
end)
 
 
Section:NewButton("Refresh", " ", function()
    table.clear(players)
for i,v in pairs(game:GetService("Players"):GetChildren()) do
   table.insert(players,v.Name)
end
end)
 
Section:NewButton("Auto YedHee", "Respawn For Stop", function()
while wait() do
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[Select].Character.HumanoidRootPart.CFrame
end
end)


local Tab = Window:NewTab("Misc")
local Section = Tab:NewSection("Money")
Section:NewButton("INF Money", " ", function()
    local A_1 = 999999999999999
local Event = game:GetService("ReplicatedStorage").Fishing
Event:FireServer(A_1)
end)

local Section = Tab:NewSection("Fly")
Section:NewButton("Click E Fly", " ", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/6QGKLRD2"))();
end)


local Section = Tab:NewSection("Teleport")
Section:NewButton("Get Item Teleport", " ", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/6QGKLRD2"))();
end)

local Section = Tab:NewSection("Keybind")
Section:NewKeybind("Keybind", " ", Enum.KeyCode.M, function()
	print("You just clicked the bind")
end)
