-- Animating the definite integral of f(x) on [a, b]
-- by David Wang, dwang@liberty.edu, 09/16/2026

mathly = require('mathly')

jscode = [[
  function displaytext() { return "<em>x</em>(<em>t</em>) = 3 cos <em>t</em>, <em>y</em>(<em>t</em>) = 3 sin <em>t</em>"; }
]]

opts = {
  xrange = {-4.5, 4.5}, yrange = {-4.5, 4.5}, t = {0, 2*pi},
  javascript = jscode,
  layout = {
    width = 500, height = 500, square = true,
    title = "<font size=4><em>x</em><sup>2</sup> + <em>y</em><sup>2</sup> = 3<sup>2</sup> (Counterclockwise)</font>",
    xaxis = { showgrid = false }, yaxis = { showgrid = false }
  },
  enhancements = {
    {x = 'X', y = 'Y', color = 'red', size = 10, point = true}
  }
}
animate({'@(t) 3*cos(t)', '@(t) 3*sin(t)'}, opts)
