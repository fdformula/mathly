-- by David Wang, dwang@liberty.edu, on 09/21/2026
opts = {
  t = {0, 16 * pi, 0.01},
  k = {1, 20, default = 4},
  m = {-4, -0.1, 0.1, default = -0.4},
  xrange = {-1.2, 1.2}, yrange = {-1.2, 1.2},
  resolution = 10000,
  speed = -2,
  layout = {
    width = 600, height = 600, square = true,
    xaxis = { visible = false }, yaxis = { visible = false },
    title = "<font size=4>Exponential spiral: <em>x</em>(<em>t</em>) = sin(<em>kt</em>) <em>e<sup>mt</sup></em>, <em>y</em>(<em>t</em>) = cos(<em>kt</em>) <em>e<sup>mt</sup></em></font>"
  },
  enhancements={{x = 'X', y= 'Y', point = true, color = 'red'}}
}
animate({'@(t) sin(k*t)*exp(m*t)', '@(t) cos(k*t)*exp(m*t)'}, opts)
