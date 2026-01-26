# Verwenden Sie das offizielle Node.js-Image
FROM node:18

# Setzen Sie das Arbeitsverzeichnis
WORKDIR /usr/src/app

# Kopieren Sie die package.json und package-lock.json
COPY package\*.json ./

# Installieren Sie die Abhängigkeiten
RUN npm install

# Kopieren Sie den Rest des Codes
COPY . .

# Exponieren Sie die Ports
EXPOSE 3000
EXPOSE 3001

# Starten Sie die Anwendung
CMD ["npm", "start"]