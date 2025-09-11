function love.load()
    love.window.setTitle("Hello LOVE!")
    message = "Hellow World!!"
end

function love.update(dt)
    -- updage game logics here
end

function love.draw()
    love.graphics.print(message, 200, 200)
end