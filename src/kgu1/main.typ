#import "../template.typ": *
#show: template

#strong[Kartesische Form: $z = x + j y$]

$"Re"{z} = x quad "Im"{z} = y$

$z^(\*) = x - y j$

$z_1 + z_2 = (x_1 + x_2) + j (y_1 + y_2)$

$z_1 - z_2 = (x_1 - x_2) + j (y_1 - y_2)$

$x = r cos(phi) quad y = r sin(phi)$

#pagebreak()

#strong[Polare Form: $z = r e^(j phi)$]

$z^(\*) = r e^(- j phi)$

$z_1 dot z_2 = r_1 r_2 e^(j (phi_1 + phi_2))$

$z_1 / z_2 = r_1 / r_2 e^(j (phi_1 - phi_2))$

$|z| = sqrt(x^2 + y^2)$

$arg(z) = phi in [-pi, pi]$

$phi = cases(
  arctan (y / x) quad & x > 0 \
  arctan (y / x) + pi quad & x < 0 quad & y > 0 \
  arctan (y / x) - pi quad & x < 0 quad & y < 0 \
  + pi / 2 quad & x = 0 quad & y > 0 \
  - pi / 2 quad & x = 0 quad & y < 0
)$

#pagebreak()

$e^(j phi) = cos(phi) + j sin(phi)$

$e^(- j phi) = cos(phi) - j sin(phi)$

$phi = pi / 180^circle.stroked.tiny dot phi^circle.stroked.tiny$

$j^2 = - 1 quad j^3 = -j quad j^4 = 1$

$e^(j dot 0) = 1 quad e^(j dot pi) = - 1$

$e^(j dot pi / 2) = j quad e^(- j dot pi / 2) = - j $

$e^(plus.minus j 2 pi k) = 1 quad k in NN$

$e^(plus.minus j 2 pi k) = (-1)^k quad k in NN$

$"Re"{z} = frac(z + z^(\*), 2) quad "Im"{z} = frac(z - z^(\*), 2 j)$
