FROM node:20-alpine

WORKDIR /app

# Herramientas básicas y util para bajar privilegios
RUN apk add --no-cache bash git su-exec

# Silenciar telemetría (opcional)
ENV EXPO_NO_TELEMETRY=1

# Preinstalamos SOLO el módulo de túneles para que no lo pida en runtime
RUN npm i -g @expo/ngrok@^4.1.0

# Preinstalar Vite/creador para acelerar scaffolding de proyectos web
RUN npm i -g vite@latest create-vite@latest

# El contenedor arranca "en reposo" hasta que exista el proyecto
CMD ["sleep","infinity"]
