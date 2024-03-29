# [2021.07.28-popurri.mp4](https://github.com/glandfried/videos/releases/download/bayes.2021.1/2021.07.28-popurri.mp4)

0. 33% Martín Amigo: introducción al dilema del prisionero (primera parte), basado en la tesis de Jorge Peña.
0. 33% Tobías Carreira Munich: Lecture 4 - Sampling y monte carlo. Curso de [probabilistic machine learning](https://youtube.com/playlist?list=PL05umP7R6ij1tHaOFY96m5uX3J21a6yNd)
0. 33% Gustavo Landfried: cooperación y no-ergodicidad, dilema en procesos multiplicativos.

# [2021.08.04-evolucionCooperacion.mp4](https://github.com/BayesDeLasProvinciasUnidasDelSur/curso/releases/download/2021.2/2021.08.04-evolucionCooperacion.mp4)

0. 70%. En base a la tesis de doctorado de Jorge Peña, Martín Amigo recuerda el dilema del prisionero, explica el concepto de "Estrategia evolutiovamente estable", presenta la estategia Tit-for-tat y explica en qué condiciones esa estrategia es capaz de resistir la invasión de estrategias desertoras.
Finalmente se introduce el problema de la selección multi-nivel o selección grupal: los grupos que contienen muchos estrategias cooperadoras poueden tener un fitness superior que los grupos que tienen muchos desertoras, y a pesar de que al interior de los grupos se favorezcan las estrategias desertoras, la selección grupal favorece la selección de los grupos cooperadores.
0. 10% Tobías cuenta por ariba el contenido del capitulo 14 del libro "Artificial Intelligence: A Modern Approach": algoritmos de aproximación de distribuciones de probabilidad. Destaca que los algoritmos que muestra no son eficientes. Por ejemplo, no se mete con el algoritmo de la suma y el producto, solo lo menciona.
0. 20% conversaciones aleatorias.

# [2021.09.02-seleccionModelos.mp4](https://github.com/BayesDeLasProvinciasUnidasDelSur/curso/releases/download/2021.2/2021.09.02-seleccionModelos.mp4)

0. 10% conversaciones aleatorias
0. 90% Clase de selección de modelos. Modelos Geocéntrico vs Heliocéntrico, misma predicción de distacias. ¿Cómo seleccionar modelo?. Ideas intuitivas, información a priori, predicción, simplicidad. Solución Bayesiana. Ejemplo con modelos alternativos en el problema Monty Hall. Código Julia que genera datos en base al modelos verdadero y calcula la probabilidad de los modelos. Con 16 datos se selecciona el verdadero modelo. Disgresión sobre datos erróneos (alguno que tenga predicción 0) [**Habría que extender este tema**]. Seguimos con modelos lineales [**Este tema es candidato a ser una segunda clase de selección de modelo, que debería estar después de una clase entera sobre modelos lineales.**] Se explica por arriba los modelos lineales, muestrando como se actualiza un modelo lineal con ordenada al origen y pendiente con dos datos. Finalmente intentamos modelar una sinoidal mediante modelos lineales (polinimios de grado 0 a 9). Ningún modelo es verdadero, pero si hacemos selección de modelo (mediante la evidencia) se selecciona naturalmente el modelo lineal que tiene la complejidad necesaria y suficiente, el polinomio de grado 3. Conlusión importante: la inferencia bayesiana pensaliza modelos que tienen más flexibilidad de la necesaria debido a que la evidencia usa todas las hipótesis de los modelos para predecir, y los modelos demasiados complejos tienen hipótesis muy lejanas que terminan afectando a la predicción. Evaluado los modelos en términos de máxima verosimulitud ocurre que siempre preferimos los modelos más complejos. [Se hace una disgresión acerca de regularizadores frecuentistas, que pueden ser interpretados como priors informativo, lo que hay que agregar explícitamente]. Finalmente mostramos que sólo los priors no-informativos son los que permiten seleccionar la complejidad necesaria y suficiente de los modelos. 



  




