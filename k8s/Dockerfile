# Étape de build
FROM node:20-alpine AS builder

WORKDIR /app

# Copie des fichiers de dépendances
COPY package*.json ./
RUN npm ci

# Copie du reste des fichiers
COPY . .

# Build de l'application
RUN npm run build

# Étape de production
FROM node:20-alpine AS runner

WORKDIR /app

# Copie des fichiers nécessaires depuis l'étape de build
COPY --from=builder /app/.output /app/.output
COPY --from=builder /app/package*.json ./

# Installation des dépendances de production uniquement
RUN npm ci --production

# Exposition du port
EXPOSE 3000

# Commande de démarrage
CMD ["node", ".output/server/index.mjs"] 