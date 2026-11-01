

require("L5")


function setup()
  size(500, 500)

  -- Set the program title
  windowTitle("Project 2")

  
  

  rects = {}
  -- Creates 30 different array slots filled with different rectangle info. an x, a y, a length, a width, a dx speed, and a dy speed, and a color
  for i = 1, 30 do
    rects[i] = {x = floor(random(100, 400)), y = floor(random(100, 400)), l = floor(random(0, 100)), w = floor(random(0, 100)),
    dx = floor(random(1, 3)), dy = floor(random(1, 3)), colorPick = floor(random(0, 5))}
  end
  end

  function draw()

  -- Goes through each of the slots in the array, grabs the rect info, and uses it to draw it
  for i = 1, 30 do
    -- Adds the dx and dy value to the current x and y
    rects[i].x = rects[i].x + rects[i].dx
    rects[i].y = rects[i].y + rects[i].dy

    -- If the x goes below 0 or it goes above the canvas limit(500), then multiply the dx/dy value by -1 to change the directrion
    farEdgeX = rects[i].x + rects[i].w
    farEdgeY = rects[i].y + rects[i].l

    if (rects[i].x < 0) or (farEdgeX > 500) then
      rects[i].dx = rects[i].dx * -1
    end

    if (rects[i].y < 0) or (farEdgeY > 500) then
      rects[i].dy = rects[i].dy * -1
    end

    -- Basic if elseif statement to pick the fill for the color depending on a random value chosen in setup
    if rects[i].colorPick == 1 then
      fill(255, 72, 176)
    elseif rects[i].colorPick == 2 then
      fill(0, 0, 0)
    elseif rects[i].colorPick == 3 then
      fill(0, 120, 191)
    elseif rects[i].colorPick == 4 then
      fill(255, 232, 0)
    end
      
    -- Draws the rectangle
    rect(rects[i].x, rects[i].y, rects[i].l, rects[i].w)
  end
end

-- When the user clicks, it just adds to the dx and dy value to pick up the speed
function mousePressed()
  for i = 1, 30 do
    rects[i].dx = rects[i].dx + 1
    rects[i].dy = rects[i].dy + 1
  end
end





  






  



