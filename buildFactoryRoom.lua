local tw = require("turtle_wrapper")

function digLine(height, length)
  for n = 1, length, 1 do
    tw.digForward(1)
    tw.digUp(height)
    tw.moveDown(height)
  end
  tw.moveBack(length)
end

function digSquare(height, side)
  for n = 1, side, 1 do
    tw.digUp(height-1)
    tw.moveDown(height-1)
    tw.digLine(height-1, side-1)
    if n < side then
      tw.digRight(1)
    end
  end
end

function initialPosition()
  tw.digForward(1)
  turtle.digUp()

  tw.digForward(1)
  turtle.turnLeft()
  tw.digForward(2)
  turtle.turnRight()
end

initialPosition()
digSquare(4,5)