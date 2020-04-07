# Yarn Lerna Monorepo Example

A test to get a monorepo running with yarn workspaces and lerna.

## Setup

1. Clone the repo.

`git clone https://github.com/codephobia/yarn-lerna-monorepo-example.git`

2. Install dependancies.

`yarn install`

## Website

An example Angular app.

Run the website:

`yarn run website:start`

## Server

An example express server.

Run the server:

`yarn run server:start`

## Server in Docker

An example of using a yarn workspace in a docker container.

Build the container:

`yarn run server:docker:build`

Run the container with docker compose:

`yarn run server:docker:compose`
