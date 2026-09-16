-- "Neat Example" in the documentation of Mathematica 15.0.1.0

mathly = require('mathly')

opts = {
  xrange = {-4.5, 4.5}, yrange = {-4.5, 4.5},
  layout = {
    width = 500, height = 500, square = true,
    -- title = "<h3>Smiley Face</h3>",
    xaxis = { visible = false }, yaxis = { visible = false }
  },
  pdefault = 0.5,  -- start playing at the middle
  enhancements = { -- data and functions to be converted to JavaScript code by MathLua
    {x = '@(t) 3*cos(t)', y = '@(t) 1 + 3*sin(t)', t = {0, 2*3.15}, color = 'black'}, -- face
    {x = '@(t) -1 + 0.3*cos(t)', y = '@(t) 2 + 0.3*sin(t)', t = {0, 2*3.15}, fill = 'fs', color = 'black'}, -- left eye
    {x = '@(t)  1 + 0.3*cos(t)', y = '@(t) 2 + 0.3*sin(t)', t = {0, 2*3.15}, fill = 'fs', color = 'black'}, -- right eye
    {x = {0, 0}, y = {0.6, 1.6}, line = true, color = 'black'}, -- nose
    {x = '@(t) t', y = '@(t) p*(t^2 - 1) - (1 - p)*t^2', t = {-1, 1}, color = 'cyan'} -- mouth
  }
}
animate(
  {'@(t) 0', '@(t) 0'}, -- do nothing
  opts
)
