mathly = require('mathly')

r = 'a + sin(m*t)*sin(t/n)'
---------------------------------------------------------
fstr = {'@(t) (' .. r .. ') * cos(t)', '@(t) (' .. r .. ') * sin(t)'}
disp(fstr)
opts = {
  t = {0, 50 * pi, 0.01}, xrange = {-10, 10},
  a = {1, 8, default = 7}, m = {1, 10, default = 7}, n = {1, 35, default = 17},
  resolution = 5000,
  layout = {
    width = 500, height = 500, square = true,
    xaxis = { visible = false }, yaxis = { visible = false },
    title = '<font size=4>Polar curve: <em>r</em>(<em>&theta;</em>) = <em>a</em> + sin(<em>m&theta;</em>) sin(<em>&theta;/n</em>)</font>'
  }
}
manipulate(fstr, opts)
