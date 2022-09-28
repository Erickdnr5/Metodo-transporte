#Problema 7
#Una escuela prepara una excursión para 600 alumnos.
#La empresa de transporte tiene 7 autobuses de 40 plazas 
#y 15 de 45 plazas, pero sólo dispone de 8 conductores.
#El alquiler de un autocar grande cuesta 4,500 pesos y 
#el de uno pequeño 2,600 pesos. Calcular cuántos autobuses
#de cada tipo hay que utilizar para que la excursión resulte 
#lo más económica posible para la escuela.

library(lpSolve)

# matriz de flete
costos<-matrix(c(2600, 4500, 0, 0), nrow = 2) 
costos

#Símbolo de restricción de salida
row.signs <-rep ("<=", 2) 
row.signs

# Vector de restricción de salida
row.rhs <-c (7, 15) 
row.rhs

#Símbolo de restricción 
col.signs <-rep ("=", 2) 
col.signs

# Vector de restricción 
col.rhs <-c (8, 14) 
col.rhs

# Ejecutamos la función y se guarda el resultado en res
res<-lp.transport(costos,"min",row.signs,row.rhs,col.signs, col.rhs)

# Se muestra el resultado de la función 
# objetivo o el costo total mínimo
res

# Se muestra la tabla con los totales de envío
res$solution

