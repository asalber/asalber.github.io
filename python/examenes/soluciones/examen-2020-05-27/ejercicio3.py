from urllib import request
# Leemos el fichero desde internet
f = request.urlopen('https://github.com/asalber/asalber.github.io/raw/master/python/examenes/soluciones/examen-2020-05-27/horas-trabajo.csv')
# Guardamos cada línea en una lista
lineas = f.read().decode('utf-8').splitlines()
# Extraemos los nombres de columnas de la primera fila
columnas = lineas[0].split(',')
operarios = {}
for linea in lineas[1:]:
  operario = {}
  campos = linea.split(',')
  for i in range(1, len(campos)):
    operario[columnas[i]] = campos[i]
  operarios[campos[0]] = operario

def salario(horas, operario, precio):
  horas = [int(i) for i in horas[operario].values() if i != '']
  total_horas = sum(horas)
  salario = total_horas * precio
  return total_horas, salario

print(salario(operarios, 'Antonio', 10))