FROM node:20-alpine

WORKDIR /app

COPY package*.json ./
RUN npm ci --omit=dev || npm install --production

COPY app.js .

EXPOSE 3000

CMD ["npm", "start"]
#1. se utilizara la image node: 20-alpine
#2.creara un directorio que sera /app
#3. copiara los archivos package.json y package-lock.json al directorio de trabajo
#4. Intalara dependencias
#5. copiara el archivo app.js al directorio de trabajo
#6. Expondra el puerto 3000
#7. Ejecutara el comando npm start para iniciar la aplicacion
