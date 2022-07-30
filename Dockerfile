FROM codercom/code-server:latest
COPY config.yaml .config/code-server/config.yaml
COPY --from=node:16 /usr/local/bin/node ./node16
COPY --from=node:16 /usr/local/bin/npm ./npm8

# FROM node:16
# ENTRYPOINT which npm

# RUN echo "hellO"



# RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
# RUN nvm install 16
# ENTRYPOINT which nvm
# ENTRYPOINT curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
# RUN bash ~/.nvm/nvm.sh
# FROM codercom/enterprise-node:latest

# RUN ls -al

# RUN mkdir -p ~/.config/code-server/config.yaml

# RUN cat ~/.config/code-server/config.yaml

# ENTRYPOINT ls -al


# FROM node:latest

# RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app

# WORKDIR /home/node/app

# COPY package*.json ./

# USER node

# RUN npm install

# COPY --chown=node:node . .

# EXPOSE 8080

# CMD [ "node", "app.js" ]
