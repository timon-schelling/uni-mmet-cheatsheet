#import "../template.typ": *
#show: template

$
delta[n] = cases(
  1"," & n = 0,
  0"," & n != 0,
)
quad
u[n] = cases(
  1\, & n >= 0,
  0\, & n < 0,
)
$

$ f[n] * g[n] &= sum_(k = - infinity)^(infinity) f[k] dot g[n - k] $

// wichtige reihen und folgen wie die geometrische reihe und die harmonische reihe

$ sum_(k = 0)^(n) q^k = frac(1 - q^(n + 1), 1 - q) $
$ sum_(k = 0)^(infinity) q^k = frac(1, 1 - q) quad |q| < 1 $
$ sum_(k = 1)^(n) k = frac(n (n + 1), 2) $
$ sum_(k = 1)^(n) k^2 = frac(n (n + 1) (2 n + 1), 6) $
$ sum_(k = 1)^(n) k^3 = frac(n^2 (n + 1)^2,4) $