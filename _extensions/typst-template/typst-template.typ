#let vub-blue = rgb("#003399")
#let vub-orange = rgb("#FF6600")
#let vub-black = rgb("#000000")

#let article(
  title: none,
  author: (),
  date: none,
  mypar: "",
  paper: "a4",
  logo-path: "_hdr_logo.png",
  email: "",
  website: "square.research.vub.be",
  body
) = {
  set document(title: title, author: author) 
  set page(
    paper: paper,
	margin: (bottom: 1.4cm, top: 1.4cm, left: 2.2cm, right: 2cm),
	header: [
      #place(
        top + right,
        dx: 0cm,  // Shift right (left with negative values)
        dy: 0.1cm,   // Shift down
        image(logo-path, height: 1.2cm)
      )
      #v(1.2cm)  // Make space for logo
    ],
    footer: [
      #line(length: 100%, stroke: 0.5pt + gray)
      #grid(
        columns: (1fr, 1fr),
        text(fill: vub-blue, size: 9pt)[#email],
        align(right, text(fill: vub-blue, size: 9pt)[#website]),
      )
    #h(.5cm)
    ],
	background: place(
	  top,
	  rect(
	    width: 1.8cm,
		height: 100%,
		fill: vub-blue
	  )
	),
  )
  page(align(left+top)[
    #h(-1cm)
    #box(
	  fill: vub-orange,
	  width: .7fr,
	  inset: 10pt,
	)[
	  #text(size: 2em, fill: vub-black)[#title]
	  #v(.5cm, weak: true)
	  #text(size: 1em, fill: vub-black)[#mypar : #author \@ #date]
	]
    #body
  ])
}