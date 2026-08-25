FROM node:22-slim
WORKDIR /app
COPY package*.json ./
RUN npm ci
COPY . .
ENV PORT=5000
CMD ["node", "app.js"]

# docker build -t <app-name>:<tag> .
# docker run -p <local-port>:<container-port> <image-name>