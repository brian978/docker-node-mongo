FROM node:lts as runner

# Create app directory
WORKDIR /var/www/app

# ENV
ENV NODE_PATH=/var/www/app_modules/node_modules:$NODE_PATH

# Installing global dependencies
RUN npm install -g nodemon
RUN npm --prefix=/var/www/app_modules install express
RUN npm --prefix=/var/www/app_modules install mongoose

EXPOSE 80

CMD ["nodemon", "app.js"]