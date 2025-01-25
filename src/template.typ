#let template(content) = [
  #set text(size: 0.8em)
  #set par(spacing: 0.85em)
  #show math.equation.where(block: true): set block(spacing: 0.5em)
  #show math.equation.where(block: true): set par(leading: 0.5em)
  #set page(height: auto, width: auto, margin: 0.5em)
  #content
]
