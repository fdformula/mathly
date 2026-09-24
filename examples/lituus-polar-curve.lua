-- Lituus spiral: polar equation r(t)^2 = a^2 / t
mathly = require('mathly')

jscode = [[
  function displaytext() { return "Blue curve: <em>r</em>(<em>&theta;</em>) = <em>a</em> / sqrt(<em>&theta;</em>); Red curve: <em>r</em>(<em>&theta;</em>) = &minus;<em>a</em> / sqrt(<em>&theta;</em>)"; }
]]

r = 'a / sqrt(t)' -- try: a sqrt(t)
---------------------------------------------------------
fstr1 = {'@(t) (' .. r .. ') * cos(t)', '@(t) (' .. r .. ') * sin(t)'}
fstr2 = {'@(t) (-' .. r .. ') * cos(t)', '@(t) (-' .. r .. ') * sin(t)'}
opts = {
  t = {0, 10 * pi, 0.01}, xrange = {-7, 7}, color = 'blue',
  a = {1, 12, default = 9},
  javascript = jscode,
  layout = {
    width = 500, height = 500, square = true,
    xaxis = { visible = false }, yaxis = { visible = false },
    title = '<font size=4>Lituus spiral: polar equation <em>r</em><sup>2</sup> = <em>a</em><sup>2</sup> / <em>&theta;</em></font>'
  },
  enhancements={{x = fstr2[1], y = fstr2[2], color = 'red', width = 2}}
}
manipulate(fstr1, opts)
