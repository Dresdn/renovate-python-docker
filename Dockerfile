# syntax = docker/dockerfile:1

# Development build stage
FROM python:3.11.9-alpine@sha256:0b5ed25d3cc27cd35c7b0352bac8ef2ebc8dd3da72a0c03caaf4eb15d9ec827a as development_build
WORKDIR /app
CMD echo "Hello World - Development"

# Production build stage
FROM development_build AS production_build
CMD echo "Hello World - Production"

