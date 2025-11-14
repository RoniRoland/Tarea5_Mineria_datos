# 📊 Resultados del Modelo 

## 🔎 Importancia del Modelo
El árbol de decisión identificó como variables con mayor poder predictivo:

1. VIC_ESCOLARIDAD  
2. AGR_ESCOLARIDAD  
3. VIC_TRABAJA  
4. VIC_SEXO  

Estas variables permitieron separar los casos entre área urbana (1) y rural (2) mediante divisiones basadas en escolaridad y características laborales.

---

## 🎯 Predicción del Caso de Prueba

Probabilidades estimadas por el modelo:

1 (Urbano): 0.6736  
2 (Rural):  0.2276  
9 (NS):     0.0987  

### ✔ Clasificación final: **Área urbana (1)**  
El modelo selecciona esta categoría al presentar la mayor probabilidad.

---

## 🧠 Conclusión 
La escolaridad de víctima y agresor es la variable más influyente en la clasificación, seguida por la condición laboral y el sexo de la víctima.  
El modelo indica que perfiles con escolaridad media/alta y empleo tienen mayor tendencia a clasificarse como urbanos, mientras que combinaciones de baja escolaridad y actividad económica favorecen la clasificación rural.
