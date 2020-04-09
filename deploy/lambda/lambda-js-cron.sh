#!/bin/bash

# Load .env file
envPath="../../packages/lambda-js-cron"
if [ -f "$envPath/.env" ]; then
  source "$envPath/.env"
  export ENVKEY="${ENVKEY}"
else
  echo "[ERROR] .env file not found"
  exit 1
fi

# Build with Claudia.
claudia pack \
    --source ../../packages/lambda-js-cron \
    --output ../../dist/local/lambda-js-cron.zip \
    --use-local-dependencies \
    --force

# Invoke cron lambda.
echo '' | sam.cmd local invoke "LambdaJSCron"