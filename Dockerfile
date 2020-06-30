# DESDE LA IMAGEN DE NODE
FROM node:10 

# copia del contexto de build [<ubicacion de los archivos a copiar>,<destino de archivos copiados>]
COPY ["package.json","package-lock.json","/usr/src/"]

#es como un cd <entrar en la siguiente ruta>
WORKDIR /usr/src

#instalar dependencias node
RUN npm install

# estrategia para no tener que cargar todo si cambio algun bit
COPY [".", "/usr/src/"]

#expone el puerto del contenedor
EXPOSE 3000

#comando de arranque de la imagen
CMD ["npx","nodemon", "index.js"]ejecutar 

#ejecuta el comando index.js el cual levanta el servidor de express
#npx es una herramienta de cli que nos permite ejecutar paquetes de npm de forma mas sencilla
#nodemon nos permite escuchar el server de manera automatica

