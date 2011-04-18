pos_x = 1
pos_y = 1
factor_x = 1
factor_y = 1
word = "Hello World!"

function message_length()
	pixels_per_char = 2
	return string.len(word) * pixels_per_char
end

function love.load()
end
function love.update()
	if pos_x >= love.graphics.getWidth() - message_length() or pos_x <= 0 then
		factor_x = factor_x * (-1)
	end
	if pos_y >= love.graphics.getHeight() or pos_y <= 0 then
		factor_y = factor_y * (-1)
	end
		
  pos_x = pos_x + 5 * factor_x
  pos_y = pos_y + 5 * factor_y
end
function love.draw()
  love.graphics.print('Hello World!', pos_x, pos_y)
	love.graphics.print(pos_x .. ", " .. pos_y,0,0 )
end
