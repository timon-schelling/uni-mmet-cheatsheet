#import "../template.typ": *
#show: template

$ s(t) & = A dot cos (omega dot t + phi) \
& = "Re"{A dot (cos (omega dot t + phi) + j dot sin (omega dot t + phi))} \
& = "Re"{A dot e^(j (omega dot t + phi))} = "Re"{X dot e^(j omega t)}$

$z(t) & = A dot e^(j (omega dot t + phi)) \
& = A dot cos (omega dot t + phi) + j dot A dot sin (omega dot t + phi) \
& = A dot e^(j omega t) dot e^(j phi) = X dot e^(j omega t) "mit" X = A dot e^(j phi)$

$quad X$ als "komplexe Amplitude" bzw. "Phasor"

#pagebreak()

$e^(j phi) & = cos (phi) + j sin (phi) \
e^(- j phi) & = cos (phi) - j sin (phi) \
cos(phi) & = 1 / 2 dot (e^(j phi) + e^(- j phi)) \
sin(phi) & = frac(1, 2 j) dot (e^(j phi) - e^(- j phi))$

#pagebreak()

$omega = 2 pi dot f = frac(2 pi, T) quad f = 1 / T$

$"Kreisfrequenz" [omega] = 1 / s$

$"Frequenz" [f] = H z$

$"Periode" [T] quad "Phase" [phi]$

#pagebreak()

$sin(phi) = cos(phi - pi / 2)$

#pagebreak()

$s(t) & = s_1 (t) + s_2 (t) \
& = A_1 cos (omega t + phi_1) + A_2 cos (omega t + phi_2) \
& = "Re"{ e^(j omega t) (A_1 e^(j phi_1) + A_2 e^(j phi_2)) } \
& = "Re"{ e^(j omega t) dot.op A e^(j phi) } = A cos (omega t + phi)$
