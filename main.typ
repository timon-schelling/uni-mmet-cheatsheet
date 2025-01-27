#import "src/template.typ": *
#show: template

#import "@preview/cetz:0.3.2"

#let color1 = rgb("#AA0000");
#let color2 = rgb("#0000AA");
#let color3 = rgb("#008800");
#let color4 = rgb("#8d00a3");

#let c1(content) = [
  #set text(fill: color1)
  #content
]
#let c2(content) = [
  #set text(fill: color2)
  #content
]
#let c3(content) = [
  #set text(fill: color3)
  #content
]
#let c4(content) = [
  #set text(fill: color4)
  #content
]

#cetz.canvas(length: 10cm, {
  import cetz.draw: *

  let scale = 4em;

  set-style(
    mark: (fill: black, scale: 2),
    stroke: (thickness: 0.4pt, cap: "round"),
    grid: (stroke: gray + 0.2pt)
  )

  line((0.5*scale, 0), (6*scale, 0), mark: (end: "stealth"))
  content((6*scale, 0), [$f"/"H z \ omega "/" s^(-1)$], anchor: "north-west")

  for (x, freq, amp, txt, color) in (
      (1, $-#c3[$f_c$]$, 0.11, $#c3[C] / 2 e^(-j #c3[$phi_c$])$, color3),
      (2, $-#c2[$f_b$]$, 0.06, $#c2[B] / 2 e^(-j #c2[$phi_b$])$, color2),
      (3, $0$, 0.13, $#c1[$A_0$]$, color1),
      (4, $#c2[$f_b$]$, 0.06, $#c2[B] / 2 e^(j #c2[$phi_b$])$, color2),
      (5, $#c3[$f_c$]$, 0.11, $#c3[C] / 2 e^(j #c3[$phi_c$])$, color3)
  ) {
    content((x*scale, -0.01), anchor: "north", freq)

    set-style(stroke: (thickness: 1pt, paint: color), mark: (fill: color, scale: 1))

    line((x*scale, 0), (x*scale, amp), mark: (end: "stealth"))
    content((x*scale, amp), txt, anchor: "south")

    set-style(mark: (fill: red))
  }

  content((0.5*scale, -0.05), anchor: "north-west")[
    #set text(size: 0.8em)
    $#c1[$A_0$] "Gleichanteil/Mittelwert" f = 0 , omega = 0$
  ]
  content((5.5*scale, 0.15), anchor: "north-west")[
    Für *reelle* Signale, d.h. $s (t) in bb(R)$,

    gilt immer *Spektrum ist*

    *symmetrisch* $arrow a_(- k) = a_k^(\*)$
  ]
})

#v(0.2em)

$s(t) & = #c1[$A_0$] & + & #c2[B] dot cos (#c4[$2 pi$] #c2[$f_b$] t + #c2[$phi_b$]) & + & #c3[C] dot cos (#c4[$2 pi$] #c3[$f_c$] t + #c3[$phi_c$]) \
& = #c1[$A_0$] & + & #c2[B] / 2 dot (e^(j dot (#c4[$2 pi$] #c2[$f_b$] t + #c2[$phi_b$])) + e^(- j dot (#c4[$2 pi$] #c2[$f_b$] t + #c2[$phi_b$]))) & + & #c3[C] / 2 dot (e^(j dot (#c4[$2 pi$] #c3[$f_c$] dot t + #c3[$phi_c$])) + e^(- j dot (#c4[$2 pi$] #c3[$f_c$] dot t + #c3[$phi_c$]))) \
& = #c1[$A_0$] & + & #c2[B] / 2 e^(j #c4[$2 pi$] #c2[$f_b$] t + #c2[$phi_b$]) + #c2[B] / 2 e^(- j #c4[$2 pi$] #c2[$f_b$] t + #c2[$phi_b$]) & + & #c3[C] / 2 e^(j #c4[$2 pi$] #c3[$f_c$] t + #c3[$phi_c$]) + C / 2 e^(- j #c4[$2 pi$] #c3[$f_c$] t + #c3[$phi_c$]) $
