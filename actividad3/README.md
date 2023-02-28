# Actividad 3: Solución de Bug 

El bug ocurre al ingresar directamente a una ruta específica, aparece error 404 , mientras que al ingresar directamente a "localhost:3000" si se realiza el redireccionamiento de forma correcta a "http://localhost:3000/login". Tras analizar esta situación se determino que el error estaba en la configuración de nginx al querer redireccionar unicamente lo hace si estas coinciden con la ruta raiz.

## Solucionando el bug

Se debe agregar a nginx.conf lo siguiente

    location / {try_files $uri $uri/ /index.html; }

posterior a esto se tiene que modificar el archivo nginx.Dockerfile con lo siguiente:

    COPY nginx.conf /etc/nginx/conf.d/default.conf

tambien se tiene que indicar el puerto del contenedor que es el puerto 80

    EXPOSE 80

por ultimo usamos el DMD para ejecutar a nginx

    CMD ["nginx", "-g", "daemon off;"]

aplicadas estas correcciones se soluciona el bug y todo funciona de forma correcta.
