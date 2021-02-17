local turtle_wrapper = {}

function turtle_wrapper.moveForward(blocks)
  for n = 1, blocks, 1 do
    turtle.forward()
  end
end

function turtle_wrapper.digForward(blocks)
  for n = 1, blocks, 1 do
      turtle.dig()
      turtle.forward()
  end
end

function turtle_wrapper.moveUp(blocks)
  for n = 1, blocks, 1 do
    turtle.up()
  end
end

function turtle_wrapper.digUp(blocks)
  for n = 1, blocks, 1 do
    turtle.digUp()
    turtle.up()
  end
end

function turtle_wrapper.moveDown(blocks)
  for n = 1, blocks, 1 do
    turtle.down()
  end
end
  
function turtle_wrapper.digDown(blocks)
  for n = 1, blocks, 1 do
    turtle.digDown()
    turtle.down()
  end
end

function turtle_wrapper.moveLeft(blocks)
  turtle.turnLeft()
  moveForward(blocks)
  turtle.turnRight()
end

function turtle_wrapper.digLeft(blocks)
  turtle.turnLeft()
  digForward(blocks)
  turtle.turnRight()
end

function turtle_wrapper.moveRight(blocks)
  turtle.turnRight()
  moveForward(blocks)
  turtle.turnLeft()
end

function turtle_wrapper.digRight(blocks)
  turtle.turnRight()
  digForward(blocks)
  turtle.turnLeft()
end

function turtle_wrapper.moveBack(blocks)
  for n = 1, blocks, 1 do
    turtle.back()
  end
end

return turtle_wrapper