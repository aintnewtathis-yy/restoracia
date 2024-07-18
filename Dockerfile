# Build stage
FROM node:18-alpine AS build-stage
WORKDIR /usr/src/app

ARG TZ=Europe/Moscow

COPY . /usr/src/app
RUN apk --no-cache add curl tzdata
RUN cp /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Install dependencies and build the app
RUN npm install
RUN npm run build

# Production stage
FROM node:18-alpine
WORKDIR /usr/src/app

ARG TZ=Europe/Moscow
RUN apk --no-cache add curl tzdata
RUN cp /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Install serve globally to serve static files
RUN npm install -g serve

# Copy package.json and package-lock.json for npm ci
COPY --from=build-stage /usr/src/app/package*.json ./
RUN npm ci --only=production

# Copy the built app from the build-stage
COPY --from=build-stage /usr/src/app/dist /usr/src/app/dist

EXPOSE 5000

CMD ["serve", "-s", "dist"]
