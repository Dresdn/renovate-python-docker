# syntax = docker/dockerfile:1

# Development build stage
FROM python:3.11.18-alpine@sha256:1183ff3996670843850a0a6c1f10fd984c73ca4f771bc0cb74ea843ff54bafe3 as development_build
WORKDIR /app
CMD echo "Hello World - Development"

# Production build stage
FROM development_build AS production_build
CMD echo "Hello World - Production"

