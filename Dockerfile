FROM node:22-alpine   "Acá desde node descarga la version alpine que es como un tipo de version liviano e ideal"

ENV PORT=4000  "Acá estableció el puerto 4000 (la cual es una variable de entorno)"

WORKDIR /usr/src/app "Acá establece que el directorio sobre el cual vamos a trabajar será usr/src/app"

# Install dependencies
COPY package.json /usr/src/app/ "Acá copia el archivo package.json y su destino será esa ruta indicada"
RUN npm install "Acá corre un npm install para instalar las dependencias necesarias del proyecto"

# Copy source
COPY server.js /usr/src/app "Acá se copia el archivo server.js y el destino será la ruta indicada"

EXPOSE $PORT "Acá expone el puerto que antes definimos"
CMD [ "npm", "start" ] "Acá se definen los comandos que se ejecutarán al iniciar el contenedor"


"asdasda"