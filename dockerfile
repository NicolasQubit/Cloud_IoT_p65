#Usar la imagen oficial
FROM node

#RUN apt-get update && apt-get install -y python3 make g++ && rm -rf /var/lib/apt/lists/*
#crear directorio de trabajo
WORKDIR /home/node/app

#copiar archivos necesarios
COPY mycode/package*.json ./
COPY mycode/tsconfig.json ./

#instalar las dependencias
#WORKDIR /home/node/app
RUN npm install --force 

#copia el codigo compilado desde la carpeta dis/
COPY mycode/dist ./dist

#expone el puerto
EXPOSE 3000

#comando para iniciar la aplicación
CMD ["node", "dist"]