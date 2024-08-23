#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Fri Aug 23 16:21:08 2024

@author: Estudiante
"""

#%%
import pandas as pd
import numpy as np 

# d = {'nombre':['Antonio','Brenda','Camilo','David'],'apellido':['Restrepo','Saenz','Torrez','Urondo'], 'LU':['78/23','449/22','111/24','1/21']}
# df = pd.DataFrame(data=d)
# df.set_index('LU',inplace = True)


#%%

# m = np.array ([[11,1,-5,3],[10,5,6,7],[3,8,10,-1]])
# df = pd.DataFrame(data = m)

df = pd.read_table('/home/Estudiante/Descargas/arbolado-en-espacios-verdes.csv',sep=',')
df2 = df[df['nombre_com'] == 'Jacarandá']
df3 = df[df['nombre_com'] == 'Palo borracho']

numero_de_filas = df2.shape[0]
print(f'Número de filas: {numero_de_filas}')

max_value = df2['altura_tot'].max()

print(f'Valor máximo en la columna "altura_tot": {max_value}')
min_value = df2['altura_tot'].min()
print(f'Valor minimo en la columna "altura_tot": {min_value}')

suma_valores = df2['altura_tot'].sum()

promedio = (suma_valores/numero_de_filas).round(2)
print(f'El promedio de las alturas es: {promedio}')

max_diametro = df2['diametro'].max()
min_diametro= df2['diametro'].min()
suma_diametros = df2['diametro'].sum()
promedio = (suma_diametros/numero_de_filas).round(3)
print(f'El diametro máximo es:{max_diametro}.\nEl mínimo diámetro es:{min_diametro}.\nY el promedio es:{promedio}')
