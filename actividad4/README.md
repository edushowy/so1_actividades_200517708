# Actividad 4:

Para ejecutar un script que muestre un saludo y la fecha actual, usando systemmd unit.

## Pasos:
<br/>

1. Crear un script  llamado actividad4.sh que contendra el codigo necesario para ejecutar la tarea indicada. Debemos darle permisos al script para que se pueda ejecutar.

contenido del archivo: actividad4.sh

    #!/bin/bash
    echo "Hola desde el script, la fecha actual es: $(date +%Y-%m-%d) "

<br/>
comando para dar permisos de ejecución
<br/>
<br/>

    chmod +x actividad4.sh

2. Hay que crear el archivo de systemmd unit dentro de la carpeta 
```/etc/ systemd/system/ ```, con el nombre actividad4.service este nos permitira ejecutar el servicio.
    
    sudo nano /etc/systemcd/system/actividad4.service

3. Luego de ejecutar el comando se se abrira una opcion para editar el archivo, donde podemos agregar las funciones del servicio.

Contenido del archivo actividad4.service

    [Unit]
    Description=Actividad 4 Saludo y fecha 

    [Service]
    Type=simple
    ExecStart=/home/Actividad4/actividad4.sh

    [Install]
    WantedBy=multi-user.target  

4. Luego debemos recargar los servicios con el comando
    
        sudo systemctl daemon-reload

5. Iniciar el servicio con el comando:

        sudo systemctl start actividad4.service

6. Para ver el saludo usamos el comando:

        sudo systemctl status actividad4.service   
