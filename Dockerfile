#Marcamos imagen base para node
FROM node:12.2.0

# Definimos directorio de trabajo:
WORKDIR /app

# Añadimos ruta de node_modules al Path
ENV PATH /app/node_modules/.bin:$PATH

# Cargamos e instalamos las dependencias necesarias
COPY package.json /app/package.json
RUN npm install
RUN npm install -g @angular/cli@7.3.9

# Añadimos el contenido a /app
COPY . /app

# Arrancamos el servidor:
CMD ng serve --host 0.0.0.0