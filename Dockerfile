# syntax = docker/dockerfile:1

# Development build stage
FROM python:3.11.16-alpine@sha256:6857d2dae63e052057f2db389a7061188ac9a92a3fa8d402bde68f36df6fada1 as development_build
WORKDIR /app
CMD echo "Hello World - Development"

# Production build stage
FROM development_build AS production_build
CMD echo "Hello World - Production"

