// Simple problem set library
#let thickk = h(0.6em)

#let show-solutions = state("show-solutions", false)

#let set-solutions(show_) = {
  show-solutions.update(show_)
}

#let solution(body) = {
  block(
        //fill: rgb("#9cccf7"),
        //fill : gradient.linear(rgb("#ac6969"), rgb("#7a3535")),
        fill : gradient.linear(rgb("#9cccf7"), rgb("#80bef5")),
        inset: 10pt,
        radius: 5pt,
        width: 100%,
        //stroke : rgb("fff000"),
        [
          *Solucion:*
          #body
        ]
  )
}

#let enunciado(body) = {
  block(
    fill : rgb("#e2cdee"),
    inset: 10pt,
    radius: 5pt,
    width: 100%, 
    [
      *Enunciado:*
      #body
    ]
  )
}

#let copiar-enunciado = "Falta copiar el enunciado..."

#let hacer = {
  block(
    fill : rgb("#eed0d0"),
    inset: 10pt,
    radius: 5pt,
    width:100%,
    [
      #align(center,
      [*Hacer ejercicio*]
      )
    ]
  )
}

#let agradecimientos(dict) = {
  let keys = dict.keys()
  let values = dict.values()
  [Gracias por tu aporte: ]
  set text(fill : rgb("#804141"),
           weight: "medium")
  for i in range(values.len()) {
    if i == values.len() - 1 {
      underline[#link(values.at(i))[#keys.at(i)] ]
    } else {
    underline[#link(values.at(i))[#keys.at(i)], ]
    }
  }
}

// 6 colors
// oft-coral: #FF6B6B
// golden-apricot: #FFB562
// sage-green: #A8C686
// powder-blue: #89CFF0
// lavender-mist: #CBA6F7
// slate-gray: #6E7B8B

#let star(n : 0) = {
  let colors = ("0":"FF6B6B",
            "1": "FFB562",
            "2": "A8C686",
            "3": "89CFF0",
            "4": "CBA6F7",
            "5": "6E7B8B",
            "err" : "000000",)
  let k = int((n / 6 - int(n/6))*6)
  if k == 0 {
    text(fill : rgb(colors.at(str(k),default:"err")))[$★^(#n)$]
  }
  else if k == 1 {
    text(fill : rgb(colors.at(str(k),default:"err")))[$★^(#n)$]
  }
  else if k == 2 {
    text(fill : rgb(colors.at(str(k),default:"err")))[$★^(#n)$]
  }
  else if k == 3 {
    text(fill : rgb(colors.at(str(k),default:"err")))[$★^(#n)$]
  }
  else if k == 4 {
    text(fill : rgb(colors.at(str(k),default:"err")))[$★^(#n)$]
  }
  else if k == 5 {
    text(fill : rgb(colors.at(str(k),default:"err")))[$★^(#n)$]
  }
  else {
    text(fill : rgb(colors.at("err")))[$★^(#n)$]
  }
}
