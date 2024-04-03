# Completely Fair Scheduler de Linux

El Completely Fair Scheduler (CFS) es un algoritmo de planificación de procesador utilizado en el kernel de Linux. A diferencia del enfoque clásico de programación preventiva, el CFS asigna dinámicamente el tiempo de CPU a cada tarea en función de su latencia objetivo, que es el tiempo mínimo ideal para que cada tarea se ejecute al menos una vez. Este modelo no se basa en intervalos fijos ni en prioridades explícitas, sino que asigna una porción equitativa de tiempo de CPU a cada tarea en competencia. Por ejemplo, si hay cuatro tareas en competencia y la latencia objetivo es de 20 ms, cada tarea obtendrá un intervalo de tiempo de 5 ms.

El CFS calcula la proporción de tiempo de CPU asignado a cada tarea en función de su "nice value", que es una medida de prioridad relativa que va desde -20 hasta +19. Las tareas con un "nice value" más bajo reciben una mayor proporción de tiempo de CPU que aquellas con un "nice value" más alto. El CFS registra el tiempo de ejecución virtual de cada tarea utilizando la variable "vruntime", la cual se asocia con un factor de deterioro basado en la prioridad de la tarea.

Para mantener una eficiencia adecuada, el CFS utiliza una estructura de datos eficiente para mantener la cola de ejecución de tareas. En lugar de una cola FIFO tradicional, se emplea un árbol rojo-negro, un árbol binario de búsqueda donde la llave es la "vruntime". Esto permite que las operaciones de inserción y eliminación se realicen en un tiempo logarítmico respecto al número de tareas en la cola, lo que garantiza un rendimiento eficiente del planificador.

- _Universidad de San Carlos de Guatemala_
- _Facultad de Ingenieria_
- _Eddy Fernando Díaz Galindo_
- _201906558_
