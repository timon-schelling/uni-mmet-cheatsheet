
#text(size: 3em, weight: "bold", fill: red)[Muss noch überarbeitet werden!]

#heading(level: 1, numbering: none)[Differentiation Rules]
<differentiation-rules>
+ #strong[Power Rule]
  $ frac(upright(d), upright(d) x) x^n = n x^(n - 1) $ Applies to
  functions where the variable is raised to a constant power.

+ #strong[Product Rule]
  $ frac(upright(d), upright(d) x) [f (x) g (x)] = f' (x) g (x) + f (x) g' (x) $
  Used when differentiating the product of two functions.

+ #strong[Quotient Rule]
  $ frac(upright(d), upright(d) x) [frac(f (x), g (x))] = frac(f' (x) g (x) - f (x) g' (x), [g (x)]^2) $
  For differentiating ratios of two functions.

+ #strong[Chain Rule]
  $ frac(upright(d), upright(d) x) f (g (x)) = f' (g (x)) dot.op g' (x) $
  Used for composite functions (function-of-a-function).

+ #strong[Exponential Function]
  $ frac(upright(d), upright(d) x) e^x = e^x , quad frac(upright(d), upright(d) x) a^x = a^x ln a $

+ #strong[Trigonometric Functions]
  $ frac(upright(d), upright(d) x) sin x = cos x , quad frac(upright(d), upright(d) x) cos x = - sin x $

#heading(level: 1, numbering: none)[Integration Rules]
<integration-rules>
+ #strong[Power Rule for Integration]
  $ integral x^n thin upright(d) x = frac(x^(n + 1), n + 1) + C quad (n eq.not - 1) $
  The reverse process of the differentiation power rule.

+ #strong[Substitution Rule]
  $ integral f (g (x)) g' (x) thin upright(d) x = integral f (u) thin upright(d) u quad upright("where ") u = g (x) $
  Reverse of the chain rule, used for composite functions.

+ #strong[Integration by Parts]
  $ integral u thin upright(d) v = u v - integral v thin upright(d) u $
  Derived from the product rule of differentiation.

+ #strong[Exponential Functions]
  $ integral e^x thin upright(d) x = e^x + C , quad integral a^x thin upright(d) x = frac(a^x, ln a) + C $

+ #strong[Trigonometric Functions]
  $ integral sin x thin upright(d) x = - cos x + C , quad integral cos x thin upright(d) x = sin x + C $

+ #strong[Partial Fractions]
  $ integral frac(P (x), Q (x)) thin upright(d) x = sum integral frac(A, a x + b) thin upright(d) x + sum integral frac(B x + C, a x^2 + b x + c) thin upright(d) x $
  Used for rational functions where degree of $P (x) < Q (x)$.

#heading(level: 1, numbering: none)[Special Rules for $e^x$]
<special-rules-for-ex>
#heading(level: 2, numbering: none)[Differentiation]
<differentiation>
+ #strong[Basic Rule]
  $ frac(upright(d), upright(d) x) e^x = e^x quad upright("(Unique property: derivative = original function)") $

+ #strong[Chain Rule for $e^(f (x))$]
  $ frac(upright(d), upright(d) x) e^(f (x)) = e^(f (x)) dot.op f' (x) $
  Example: $frac(upright(d), upright(d) x) e^(x^2) = 2 x e^(x^2)$

+ #strong[Product Rule with $e^x$]
  $ frac(upright(d), upright(d) x) [e^x dot.op g (x)] = e^x dot.op g (x) + e^x dot.op g' (x) = e^x [g (x) + g ' (x)] $
  Highlight: $e^x$ factors out neatly.

+ #strong[Higher-Order Derivatives]
  $ frac(upright(d)^n, upright(d) x^n) e^(k x) = k^n e^(k x) quad upright("(Applies for any integer ") n gt.eq 1 \) $

#heading(level: 2, numbering: none)[Integration]
<integration>
+ #strong[Basic Integral] $ integral e^x thin upright(d) x = e^x + C $

+ #strong[Integral of $e^(k x)$]
  $ integral e^(k x) thin upright(d) x = 1 / k e^(k x) + C quad (k eq.not 0) $

+ #strong[Integration by Parts with $e^x$] \
  For integrals like $integral e^x dot.op g (x) thin upright(d) x$:
  $ upright("Let ") u & = g (x) , quad upright(d) v = e^x thin upright(d) x\
  upright(d) u & = g' (x) thin upright(d) x , quad v = e^x $ Then:
  $ integral e^x dot.op g (x) thin upright(d) x = e^x dot.op g (x) - integral e^x dot.op g' (x) thin upright(d) x $
  Example: $integral x e^x thin upright(d) x = x e^x - e^x + C$

+ #strong[Integrals with Trigonometric Functions]
  $ integral e^(a x) sin (b x) thin upright(d) x = frac(e^(a x), a^2 + b^2) (a sin (b x) - b cos (b x)) + C $
  Similarly:
  $ integral e^(a x) cos (b x) thin upright(d) x = frac(e^(a x), a^2 + b^2) (a cos (b x) + b sin (b x)) + C $
  Derived using integration by parts twice.

+ #strong[Substitution for $e^(g (x))$] \
  For $integral e^(g (x)) dot.op g' (x) thin upright(d) x$, let
  $u = g (x)$:
  $ integral e^u thin upright(d) u = e^u + C = e^(g (x)) + C $

+ #strong[Gaussian Integral (Advanced)]
  $ integral_(- oo)^oo e^(- x^2) thin upright(d) x = sqrt(pi) quad upright("(Fundamental in probability)") $

+ #strong[Integral of $e^x \/ x$]
  $ integral e^x / x thin upright(d) x = "Ei" (x) + C quad upright("(Exponential Integral, a special function)") $

#heading(level: 2, numbering: none)[Differential Equations]
<differential-equations>
- #strong[Solution to $y' = k y$];:
  $ y (x) = y (0) dot.op e^(k x) quad upright("(Exponential growth/decay)") $

- #strong[Integrating Factor] \
  For linear DEs $y' + P (x) y = Q (x)$, use:
  $ mu (x) = e^(integral P (x) thin upright(d) x) $

#heading(level: 2, numbering: none)[Multivariable Calculus]
<multivariable-calculus>
- #strong[Partial Derivatives] \
  For $f (x , y) = e^(x y)$:
  $ frac(partial f, partial x) = y e^(x y) , quad frac(partial f, partial y) = x e^(x y) $

- #strong[Laplace Transform];:
  $ cal(L) { e^(a t) } = frac(1, s - a) quad (s > a) $
