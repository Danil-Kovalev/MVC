# Встановлення базового образу
FROM node:16-alpine

# Створення робочої директорії
WORKDIR /usr/local/MVC

# Копіювання файлів package.json і package-lock.json (якщо є)
COPY package*.json ./

# Встановлення залежностей
RUN npm install

RUN npm install -g typescript

# Копіювання всіх інших файлів (включаючи типи TypeScript)
COPY . .

RUN tsc

# Трансляція TypeScript в JavaScript
RUN npm run build

# Відкриття порту, на якому працюватиме ваш сервер
EXPOSE 3000

# Запуск Node.js серверу
CMD ["npm", "run", "start"]
