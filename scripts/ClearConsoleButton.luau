local mainview = game:GetService("CoreGui").DevConsoleMaster.DevConsoleWindow.DevConsoleUI.MainView
local menu = mainview.UtilAndTab.MainFrame

local erasebutton = Instance.new("ImageButton", menu)
erasebutton.Position = UDim2.new(1, -58)
erasebutton.Size = UDim2.fromOffset(24, 24)
erasebutton.BackgroundTransparency = 1
erasebutton.Image = "rbxassetid://106575593043120"

erasebutton.MouseButton1Click:Connect(function()
    for _, object in mainview[mainview:FindFirstChild("ClientLog") and "ClientLog" or "ServerLog"]:GetDescendants() do
        if object:FindFirstChild("msg") then object:Destroy() end
    end
end)
