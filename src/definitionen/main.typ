#import "../template.typ": *
#show: template

= Definitionen

Ein #strong[Signal] ist die physikalische Darstellung von
  Informationen.

#strong[Sampling] ist das Abtasten eines zeitkontinuierlichen Signals
  zu äquidistanten Zeitpunkten: $s [n] = s (n T_s)$ mit $r = 1 / T_s$.

#strong[Abtasttheorem]: Ein bandbegrenztes zeitkontinuierliches
  Signal $s (t)$ mit Frequenzen kleiner als $f_(upright("max"))$ kann
  fehlerfrei aus seinen Abtastwerten rekonstruiert werden, wenn die
  Abtastrate $r > 2 f_(upright("max"))$.

#strong[Aliasing]: Verschiedene zeitkontinuierliche Signale können
  nach Abtastung mit derselben Abtastrate dasselbe zeitdiskrete Signal
  ergeben.

#strong[Folding]: Vorzeichenwechsel der Phase nach dem Abtasten, um
  negative Kreisfrequenzen zu vermeiden.

#strong[AD-Wandler]: Abtastung $arrow.r$ Quantisierung $arrow.r$
  Bit-Codierung.

Ein #strong[Phasor] ist eine komplexe Amplitude der Form
  $X = A e^(j phi)$. Durch Multiplikation mit $e^(j omega t)$ entsteht
  ein rotierender Phasor, der ein komplexes Sinussignal beschreibt.

#strong[Periodische Signale] können durch Linearkombination
  (Fourierreihen) von Sinussignalen mit einer Grundfrequenz $omega_T$
  und ganzzahligen Vielfachen $k omega_T , thin k in bb(Z)$
  synthetisiert werden.

#strong[Fourieranalyse]: Bestimmung der komplexen Koeffizienten $a_k$
  für gegebenes periodisches Signal durch das normierte Skalarprodukt.
  #strong[Achtung Sonderfall für $a_0$];!

Die #strong[Fouriertransformation] entspricht der $z$-Transformation
  ausgewertet für $z = e^(j omega)$ auf dem Einheitskreis.

Das #strong[Spektrum] $S (omega)$ gibt an, mit welchen Amplituden
  $lr(|S (omega)|)$ und Phasen $theta (omega)$ ein Signal $s [n]$ aus
  komplexen Sinussignalen $e^(j omega n)$ synthetisiert wird.

Die #strong[Impulsantwort] $h [n]$ eines LSI-Systems ist gleich der
  Folge der Filterkoeffizienten ${ b_k }$ und ansonsten 0. Sie
  beschreibt das System eindeutig.

#strong[Kausalität]: Berechnung des aktuellen Ausgangswertes $y [n]$
  erfolgt nur aus aktuellen Eingangswerten $s [n]$ und Eingangswerten
  $s [n k]$ aus der Vergangenheit, d.h. mit $k gt.eq 0$:
  $n k lt.eq n$.

Ein #strong[Nullfilter] kann durch Vorgabe von Nullstellen auf dem
  Einheitskreis ausgewählte Frequenzen ausblenden.
