# Usa a imagem base do Node.js
FROM node:14

# Define o diretório de trabalho dentro do container
WORKDIR /usr/src/app

# Copia o package.json e o package-lock.json (se disponível)
COPY package*.json ./

# Instala as dependências
RUN npm install

# Copia o restante do código da aplicação
COPY . .

# Expõe a porta que a aplicação irá rodar
EXPOSE 3000

# Define o comando para iniciar a aplicação
CMD ["npm", "start"]
