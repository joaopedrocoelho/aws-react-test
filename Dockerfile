FROM node:20-alpine AS builder

WORKDIR /app

# add env variable
ARG VITE_GA_MSG
ENV VITE_GA_MSG=${VITE_GA_MSG}

COPY package.json .

RUN npm install

COPY . .

RUN npm run build

FROM nginx:latest

COPY --from=builder /app/dist /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]