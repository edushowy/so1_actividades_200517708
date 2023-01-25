# Actividad 1

<image src="/img/kernel.png" alt="iamgen kernel">

## Tipos de kernel y sus diferencias
Los kernel se pueden clasificar en dos grandes grupos: monolíticos y modulares.

Cuando no referimos al monolitico hablamos de todas las funcionalidades están compiladas juntas en un único binario. El cual incluye a los controladores de hardware y los servicios de red. Todo esto se ejecuta en el espacio de direcciones del kernel y comparten un mismo espacio de memoria, un ejemplo de kernel monolítico es el de Windows y el de Linux.

Un kernel modular se basa en modulos, estos se cargan y descargan cuando se necesitan, lo genara una mayor flexibilidad y escalabilidad, debidoa que tan solo es necesario realizar un cambio de modulos eliminando la necesidad de reiniciar el sistema. Podemos mencionar entre los kernel modulares a HURD.

También existen mas tipos de kernel, entre estos se encuentran los microkernel que unicamente proporciona servicios básicos, los kernel hibridos que son una combinacion de caracteristicas de kernel monolítico y modular y los exokernels que proporcionan un conjunto minimo de servicios, los que permiten a los programas un acceso directo al hardware.

## User vs kernel mode

Acá hacemos referencia a dos modos diferentes en que los cuales los procesos pueden utilizar los recursos del sistema.

Modo de usuario, los procesos tienen acceso limitado a un subconjunto de recursos del sistema como lo son la memoria y los dispositivos de entrada y salida, en este modo los procesos no pueden acceder directamente al hardware o a los recursos del kernel en sí, porque se su finalidad es aislar al sistema de posibles fallos o errores, logrando que si un proceso falla el usuario no afectará al sistema.

Modo kernel se dispone acceso ilimitado a todas las partes del kernel, los procesos que tienen acceso a este son procesos del sistema en si, lo que incluye, controladores de dispositivos y recursos de red.
