# Algoritmo de Booth - Multiplicador con signo 

## Funcionamiento del circuito y cada subsistema

El circuito tiene como función realizar el algoritmo de Booth el cual consiste en realizar una multiplicación de dos números binarios con signo en la notación de complemento a dos.

##### Decodificadores

Se implementan 3 módulos que decodifican An0, An1 y An2, este módulo decodifica la entrada a binario en componente a dos.

##### Desplazamiento.v

Módulo que carga el valor del multiplicador. Con capacidad de realizar shift

##### Displays.v
Crear modulo Top de conexión de los displays.

##### FFT.v
Modulos que implementan Flip Flops que se utilizan para la tasa de refresco.

##### FSM.v
Modulo que controla secuencialmente el multiplicador de Booth.

##### MUX3a1.v
Crear módulo que implemente un multiplexor para que los LEDs se enciendan de forma correcta.

##### MultSecuencial.v
Módulo de conexión de la máquina de estados con el multiplicador de Booth y el contador.

##### MultiplicadorBooth.v
Crear un módulo principal para la implementación del Multiplicador de Booth.

##### ProyectoCOMP.v
Crear modulo Top de conexión de todos los módulos.

##### RefreshCounte500ms.v
Módulo contador para alcanzar la tasa de refresco de 500ms para actualizar la display de 7 segmentos después de presionar el botón

##### RefreshCounter.v
Módulo contador para el display, lleva un conteo hasta alcanzar el valor máximo y tras refrescarse se reinicia y cuenta de nuevo.

##### RegDesLQ.v
Módulo que guarda el valor que se desea multiplicar.

##### Registro.v
Módulo que almacena el resultado de la suma o resta, con capacidad de realizar un shift.

##### Registro1bit.v
Módulo de un bit que almacena el valor anterior del Q0

##### SumadorRestador4bit.v
Módulo que suma o resta 4 bits con SEL = 1 SUMA y SEL=0 RESTA

##### Tbmult.v
Test para probar el funcionamiento del sistema completo

##### count.v
Contador descendente de 3 a 0 para iteración, finaliza el proceso

## Diagramas de bloque de cada subsistema y funcionamiento fundamental

![Imgur](https://i.imgur.com/Bx451SV.png)

## Diagrama de estado de todas las FSM

![Imgur](https://i.imgur.com/DpVkDB6.png)

## Ejemplo y simulación funcional del sistema completo

Para la comprobación del funcionamiento se utilizó el programa ISE Design Suite 14.7 y se hizo ejecución al código llamado “ProyectoCOMP.v”, seguidamente para la ejecución, se conecta una FPGA Nexus 3 por medio del puerto USB.
En la Nexys 3 se ingresa los dos número que se desean multiplicar (en números binario) utilizando los switch integrados de la FPGA, siendo la posición “arriba” un “1” o alto, y la posición “abajo” el “0” o el baja. De acuerdo al diseño, los números binarios ingresados se multiplican y en el display se muestra el valor de esa multiplicación en notación decimal.
En la siguiente imagen se muestra el resultado de ingresa el código binario 1010 y 0001, los cuales corresponden a 1 y -6, como se observa el valor en los Leds corresponde al valor del resultado de la multiplicación en conversión decimal

![Imgur](https://i.imgur.com/eDKNHmQ.jpg)

## Análisis de consumo de recursos 
Después de la ejecución se tomaron los datos de consumo de potencia y consumo de recursos que despliega la herramienta de diseño ISE de la Nexys 3.
Para el uso de potencia se consumen 33mW totales, con el siguiente detalle:

![Imgur](https://i.imgur.com/s6hPlXO.png)

Para el consumo de recursos se detalla de la siguiente forma:
![Imgur](https://i.imgur.com/0sV4qqQ.png)

## Reporte de velocidades máximas de reloj

La velocidad máximo del reloj es de 0.882ns, según se muestra en la siguiente tabla:

![Imgur](https://i.imgur.com/ApHX288.png)

## Problemas hallados y soluciones 
- En el registro HQ cuando se realizó el corrimiento no se estaba almacenando el bit más significativo, se solucionó utilizando dentro del mismo módulo el valor del bit del dato guardado anteriormente
- En la pantalla todos los 7 segmentos se encendían al mismo tiempo en los 4 display, se solucionó variando el valor de la tasa de refresco hasta iluminar únicamente los segmentos correspondientes.

