-- https://iviveros.github.io/param-eq/
jscode = [[
function displaytitle() {
  return "<font size=5>Rose curves: polar function r(&theta;) = cos(n/d &bull; &theta;)</font>"
}
function displaytext() {
  return "&theta; &in; [0, 40&pi;]. See: <a href=https://iviveros.github.io/param-eq/ target=_blank>https://iviveros.github.io/param-eq/</a>"
}
]]

opts = {
  t = {0, 40 * pi, 0.01},
  n = {1, 10, 0.5, default = 3.5},
  d = {1, 10, 0.5, default = 2},
  javascript = jscode,
  xrange = {-1.2, 1.2}, yrange = {-1.2, 1.2},
  resolution = 5000,
  layout = {width = 600, height = 600, square = true}
}
manipulate({
    '@(t) cos(n/d*t)*cos(t)',
    '@(t) cos(n/d*t)*sin(t)'
  }, opts)
