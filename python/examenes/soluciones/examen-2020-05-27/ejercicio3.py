from urllib import request
# Leemos el fichero desde internet
f = request.urlopen('https://github.com/asalber/asalber.github.io/raw/master/python/examenes/soluciones/examen-2020-05-27/horas-trabajo.csv')
# Guardamos cada línea en una lista
lineas = f.read().decode('utf-8').splitlines()
# Extraemos los nombres de columnas de la primera fila
columnas = lineas[0].split(',')
# Creamos el diccionario para guardar las horas de cada operario
operarios = {}
# Recorremos las líneas del fichero desde la primera hasta el final
for linea in lineas[1:]:
  # Creamos un diccionario para guardar las horas mensuales de cada operario
  operario = {}
  # Dividimos las línea en campos utilizando la coma como separador
  campos = linea.split(',')
  # Recorremos la lista de campos desde el tercer campo hasta el final (los dos primeros campos no contienen horas)
  for i in range(2, len(campos)):
    # Añadimos al diccionario las horas de cada mes
    operario[columnas[i]] = campos[i]
  # Añadimos el diccionario con las horas de un operario al diccionario de operarios
  operarios[campos[0]] = operario

print(operarios)

def salario(horas, operario, precio):
  # Creamos una lista con las horas correspondientes al operario. Las horas se convierten a enteros salvo si no hay horas. 
  horas = [int(i) for i in horas[operario].values() if i != '']
  # Sumamos el total de horas
  total_horas = sum(horas)
  # Calculamos el salario multiplicando el total de horas por el precio.
  salario = total_horas * precio
  return total_horas, salario

# Ejemplo
#print(salario(operarios, 'OP2', 10))