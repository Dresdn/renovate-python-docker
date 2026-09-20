# syntax = docker/dockerfile:1

# Development build stage
FROM python:3.11.16-alpine@sha256:0495f5559318affa673172ec7e35cd0a5213e4aaf4c76d0a66554c0af97b157e as development_build
WORKDIR /app
CMD echo "Hello World - Development"

# Production build stage
FROM development_build AS production_build
CMD echo "Hello World - Production"

