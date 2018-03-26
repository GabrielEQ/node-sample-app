FROM node:carbon

# Diretório de exec. da aplicação
WORKDIR /usr/src/app

# Copiando dependencias
COPY package.json ./

# instalando dependencias
RUN npm install

# Copiar tudo que está no diretório para o $WORKDIR
COPY . .

# Porta onde a aplicacao recebe conexoes
EXPOSE 8080

# Execução da aplicação usando CMD (Comando a ser executado pelo container)
CMD [ "npm", "start" ]