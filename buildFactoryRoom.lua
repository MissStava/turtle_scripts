function digForward(blocks)
  for n = 1, blocks, 1 do
    turtle.dig()
    turtle.forward()
  end
end

function digUp(blocks)
  for n = 1, blocks, 1 do
    turtle.digUp()
    turtle.up()
  end
end

function down(blocks)
  for n = 1, blocks, 1 do
    turtle.down()
  end
end

function foward(blocks)
  for n = 1, blocks, 1 do
    turtle.forward()
  end
end

function back(blocks)
  for n = 1, blocks, 1 do
    turtle.back()
  end
end

function right(blocks)
  turtle.turnRight()
  forward(blocks)
  turtle.turnLeft()
end

function digLine(height, length)
  if n = 1, length, 1 do
    digUp(height)
    down(height)
    if n < length then
      forward(1)
    end
  end
  back(length)
end

function digSquare(height, side)
  for n = 1, side, 1 do
    digLine(height - 1, side - 1)
    if n < side do
      right(1)
    end
  end
end

function initialPosition()
  digForward()
  turtle.digUp()

  digForward()
  turtle.turnLeft()
  digForward()
  digForward()
  turtle.turnRight()
end

initialPosition()
digSquare(4,5)