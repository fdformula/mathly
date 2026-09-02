-- by David Wang, dwang@liberty.edu, on 09/01/2026
-- See: https://iviveros.github.io/param-eq/
jscode = [[
function displaytitle() {
  return "<font size=5>Rose curves: polar function r(&theta;) = cos(n/d &sdot; &theta;)</font>"
}
function displaytext() {
  return "&theta; &in; [0, 40&pi;]"
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
