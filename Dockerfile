FROM node:20-alpine
MAKEDIR /app
WORKDIR /app
COPY package*.json ./
COPY . .
RUN npm install --production
EXPOSE 3000
CMD ["npm", "start"]
