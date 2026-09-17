r = 'sin(1.6 * t)^2 + cos(n*t)^5'
fstr = {'@(t) (' .. r .. ') * cos(t)', '@(t) (' .. r .. ') * sin(t)'}
opts = {
  t = {0, 10*pi, 0.01}, xrange = {-2, 2}, n = {1, 12, 1},
  resolution = 6000,
  layout = {
    width = 640, height = 540,
    title = '<font size=5>Polar curve: <em>r</em>(<em>&theta;</em>) = sin<sup>2</sup>(1.6<em>&theta;</em>) + cos<sup>5</sup>(<em>n&theta;</em>)</font>',
    xaxis = { visible = false }, yaxis = { visible = false }
  }
}
manipulate(fstr, opts)
