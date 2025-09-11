-- main.lua
local introText = {
    "The city doesn’t trust its own words anymore.",
    "Letters are censored. Packages are seized.",
    "Secrets travel faster than bullets — if they survive the journey.",
    "",
    "That’s where I come in. A courier.",
    "Not for money. Not for honor.",
    "Just to keep the world talking.",
    "Package and destination meet."
}

local currentLine = 1
local showTimer = 0
local lineDelay = 2 -- seconds per line
local finished = false

function love.load()
    love.graphics.setFont(love.graphics.newFont(18))
    love.graphics.setBackgroundColor(0, 0, 0) -- black
end

function love.update(dt)
    if not finished then
        showTimer = showTimer + dt
        if showTimer >= lineDelay then
            showTimer = 0
            currentLine = currentLine + 1
            if currentLine > #introText then
                finished = true
            end
        end
    end
end

function love.draw()
    love.graphics.setColor(1, 1, 1)
    local y = 100
    for i = 1, math.min(currentLine, #introText) do
        love.graphics.print(introText[i], 50, y)
        y = y + 30
    end

    if finished then
        love.graphics.setColor(1, 1, 0.5)
        love.graphics.printf("Press any key to continue...", 0, love.graphics.getHeight() - 50, love.graphics.getWidth(), "center")
    end
end

function love.keypressed(key)
    if finished then
        -- go to next scene (placeholder)
        introText = { "Day 1: First Delivery Begins..." }
        currentLine = 1
        finished = false
        showTimer = 0
    end
end
