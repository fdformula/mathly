mathly = require('mathly')

r = 'cos(n*t)' -- r(θ) = cos(nθ); change this only
---------------------------------------------------------
fstr = {'@(t) (' .. r .. ') * cos(t)', '@(t) (' .. r .. ') * sin(t)'}
disp(fstr)
opts = {
  t = {0, 2 * pi, 0.01}, xrange = {-1.2, 1.2}, n = {1, 24, 1}, -- adjust options if needed
  resolution = 2000,
  fill = 'fs',
  layout = {width = 500, height = 500, square = true, title = '<font size=4>Polar curve: <em>r</em>(<em>&theta;</em>) = cos(<em>n&theta;</em>)</font>'}}
manipulate(fstr, opts)
