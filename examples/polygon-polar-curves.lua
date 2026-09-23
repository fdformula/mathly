mathly = require('mathly')

r = '1 / cos(acos(sin(n*t))/n)'
---------------------------------------------------------
fstr = {'@(t) (' .. r .. ') * cos(t)', '@(t) (' .. r .. ') * sin(t)'}
disp(fstr)
opts = {
  t = {0, 2 * 3.15, 0.01}, xrange = {-2.6, 2.6}, n = {3, 30, 1},
  resolution = 500,
  fill = 'fs',
  layout = {
    width = 500, height = 500, square = true,
    title = '<font size=4>Polar curve: <em>r</em>(<em>&theta;</em>) = sec(acos(sin(<em>n&theta;</em>))/<em>n</em>)</font>'
  }
}
manipulate(fstr, opts)
