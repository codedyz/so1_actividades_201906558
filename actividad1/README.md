# Tipos de Kernel y sus diferencias

| Tipo de Kernel | Descripción | Ejemplos|
|----------------|-------------|---------|
| Kernel Híbrido| Combinación de características de monolítico y microkernel. Una característica especial con que cuenta el núcleo híbrido es que incluyen código extra con el objetivo de mejorar el rendimiento.| Windows NT (híbrido), macOS (híbrido).                   |
| Kernel Microkernel | Funciones esenciales se mantienen en un espacio mínimo de núcleo. Son núcleos de pequeño tamaño que fueron compilados sólo con las necesidades más básicas del sistema operativo. El resto de funcionalidades son añadidas mediante la adición de módulos externos al núcleo, lo que les proporciona flexibilidad y facilidad de ampliación.       | QNX, L4, MINIX.            |
| Kernel Monolítico     | Todas las funciones en el mismo espacio de núcleo. Un sistema operativo con núcleo monolítico concentra todas las funcionalidades posibles dentro de un gran programa.       | Linux, Windows (tradicional), UNIX.    |

## Modo de Usuario (User Mode):

:small_blue_diamond: En el modo de usuario, un programa o proceso se ejecuta con un conjunto limitado de privilegios y acceso a los recursos del sistema. Las instrucciones que se ejecutan en este modo generalmente están restringidas a operaciones seguras y no críticas para el funcionamiento del sistema. Las aplicaciones de usuario típicas, como procesadores de texto, navegadores web y juegos, se ejecutan en modo de usuario. Si un programa intenta realizar una operación que requiere privilegios más altos, como acceder al hardware directamente o modificar configuraciones del sistema, se genera una excepción.

## Modo de Kernel (Kernel Mode):

:small_blue_diamond: En el modo de kernel, el sistema operativo tiene acceso completo a todos los recursos del hardware y puede ejecutar instrucciones privilegiadas. El núcleo del sistema operativo se ejecuta en este modo y puede realizar operaciones críticas y de bajo nivel, como la gestión de memoria, la programación de interrupciones y la comunicación directa con el hardware. Los controladores de dispositivos y otros componentes del sistema operativo también operan en modo kernel. Solo el sistema operativo y sus componentes privilegiados pueden ejecutarse en modo kernel.

## Interrupciones (Interrupts):

:small_blue_diamond: Una interrupción es una señal o evento que indica la ocurrencia de un evento externo o interno que requiere la atención del procesador. Las interrupciones pueden ser generadas por hardware (como un temporizador, un dispositivo de entrada/salida, o una señal de hardware específica) o por software (a través de instrucciones de software específicas).
Cuando se produce una interrupción, el procesador suspende la ejecución normal del programa en curso y pasa a ejecutar una rutina de manejo de interrupciones conocida como rutina de servicio de interrupciones (ISR). 

## Trampas (Traps):

:small_blue_diamond: Una trampa, también conocida como excepción de software, es una interrupción generada deliberadamente por una instrucción específica en el código de programa. A diferencia de las interrupciones, las trampas son eventos controlados por software y se utilizan para cambiar de contexto o manejar situaciones excepcionales específicas.
Las trampas son comúnmente utilizadas para realizar llamadas al sistema (system calls), que permiten que un programa de usuario solicite servicios del sistema operativo. 

- _Universidad de San Carlos de Guatemala_
- _Facultad de Ingenieria_
- _Eddy Fernando Díaz Galindo_
- _201906558_