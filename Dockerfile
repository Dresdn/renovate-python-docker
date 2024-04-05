# syntax = docker/dockerfile:1

# Development build stage
FROM python:3.11.4-alpine as development_build
WORKDIR /app
CMD echo "Hello World - Development"

# Production build stage
FROM development_build AS production_build
CMD echo "Hello World - Production"

