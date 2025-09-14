#import "lib.typ": *
#include "preamble.typ"
#let cantidad = 2 // cant de problemas + 1

<index>

#v(100pt)
#text(size : 16pt)[#underline[Ejercicios de la guia:]] 
#v(25pt)

#align(center)[
#grid(
  columns: 2,
  gutter: 32pt,
  ..range(1,cantidad).map(i => link(label(str(i)))[#text(size : 22pt, fill : rgb("#2f4d2c"), font : "New Computer Modern Math" , weight : "medium")[#str(i)]#text(size : 22pt, fill : rgb("#000000"))[.]])
)]

#set page(footer : context [
  #text(weight : "medium", "Link del repo: " + link("www.github.com/sigfripro")+ h(18em) + link(locate(<index>).position())[#underline[#text(fill : blue, "Volver al indice")]])
])

#set page(header: context [
  #set par(leading : 0.4em, spacing : 0.4em);
  Algebra Lineal #h(33%) Guia X #h(33%) Pagina #counter(page).display() #h(0em) #line(length: 100%)
  ]
  )

#set page(margin : (top : 1.5cm)) 

// END PAGE STYLING

// START DOCUMENT

#context for i in range(1, cantidad) [
  
  = Ejercicio #str(i)
  #label(str(i))
  #include ("problem" + str(i) + ".typ")
]

// END DOCUMENT
