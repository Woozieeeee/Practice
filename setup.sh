#!/bin/bash

# 1. I-install ang dependencies
echo "Installing dependencies..."
pnpm install

# 2. I-setup ang .env (kopya mula sa .env.example)
echo "Creating .env file..."
cp .env.example .env

# 3. I-run ang prisma
echo "Syncing database..."
pnpm prisma db push

echo "Setup complete! Ready to code."