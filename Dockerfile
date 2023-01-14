# Indicar que version de node queremos
FROM node:18
# Crear un directorio en el contenedor para guardar nuestra app
RUN mkdir -p /home/app
# Copiar todos los archivos del proyecto al directorio creado
COPY . /home/app
# Usar un puerto para que otros contenedores o nosotros desde el sistema operativo anfitrion 
# nos podamos conectar
EXPOSE 3000
# Correr aplicacion
CMD ["node", "/home/app/index.js"]
