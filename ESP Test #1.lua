local Players = game:GetService("Players")

local function highlightPlayer(player)
    -- Ensure player has a character
    player.CharacterAdded:Connect(function(character)
        local highlight = Instance.new("Highlight")
        highlight.Parent = character
        highlight.FillColor = Color3.FromRGB(18, 175, 175)
        highlight.OutlineColor = Color3.FromRGB(0, 255, 255)
    end)
end

-- Highlight all players who are already in the game
for _, player in ipairs(Players:GetPlayers()) do
    highlightPlayer(player)
end

-- Ensure any new player who joins gets highlighted
Players.PlayerAdded:Connect(function(player)
    highlightPlayer(player)
end)
