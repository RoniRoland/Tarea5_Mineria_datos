library(readxl)
library(rpart)
library(rpart.plot)

data <- read_excel("F:\\Documentos\\Docs Roni\\Documentos Roni\\Docs U AND Cursos\\USAC MAESTRIA\\MAESTRIA DATA ANLISIS\\Cursos\\Mineria de datos\\base-de-datos-violencia-intrafamiliar-ano-2024_v3.xlsx")



arbol_area <- rpart(
  HEC_AREA ~
    VIC_SEXO +
    VIC_EDAD +
    VIC_ESCOLARIDAD +
    VIC_TRABAJA +
    VIC_DEDICA +
    AGR_SEXO +
    AGR_EDAD +
    AGR_ESCOLARIDAD +
    AGR_TRABAJA,
  data = data,
  method = "class"
)

rpart.plot(
  arbol_area,
  type = 2,
  extra = 0,
  under = TRUE,
  fallen.leaves = TRUE,
  box.palette = "BuGn",
  main = "Árbol: Predicción del Área del Hecho",
  cex = 0.5
)

persona <- data.frame(
  VIC_SEXO        = 2,
  VIC_EDAD        = 25,
  VIC_ESCOLARIDAD = 40,
  VIC_TRABAJA     = 1,
  VIC_DEDICA      = 3,
  AGR_SEXO        = 1,
  AGR_EDAD        = 30,
  AGR_ESCOLARIDAD = 55,
  AGR_TRABAJA     = 1
)

result <- predict(arbol_area, persona, type = "prob")
result
