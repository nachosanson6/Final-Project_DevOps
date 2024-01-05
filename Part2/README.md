# Part 2 - Deploy the application using Docker

## Deploy the postgres database

    $ docker pull postgres

    $ docker volume create postgres_data

    $ docker run --name basic-3tier-postgres -e
    POSTGRES_PASSWORD=admin123 -e POSTGRES_USER=postgres -e POSTGRES_DB=basic3tier -d -p 5432:5432 --volume postgres_data:/var/lib/postgresql/data postgres

## Deploy the front using nginx

    $ docker build -t front .

    $ docker run -d -p8080:80 front

## Deploy the back

	  $ docker run -d -p7000:80 -e ConnectionStrings__Basic3Tier="Host=172.17.0.2;Port=5432;Database=basic3tier;Username=postgres;Password=admin123" image_api

## (BONUS) -Creating Azure Devops Pipelines to push images to Docker Hub

1. Frontend Pipeline yaml file:

```bash
# Docker
# Build a Docker image
# https://docs.microsoft.com/azure/devops/pipelines/languages/docker

trigger:
- main

resources:
- repo: self

stages:
- stage: Build
  displayName: Build image
  jobs:
  - job: Build
    displayName: Build
    pool:
      vmImage: ubuntu-latest
    steps:
    - task: Docker@2
      inputs:
        containerRegistry: 'Ironclouders Docker Hub'
        repository: 'rodrigolsoria/ironclouders_final_project'
        command: 'buildAndPush'
        Dockerfile: '**/Dockerfile'
        tags: |
          Front
```

2. Backend Pipeline yaml file:

```bash
# Docker
# Build a Docker image
# https://docs.microsoft.com/azure/devops/pipelines/languages/docker

trigger:
- main

resources:
- repo: self

stages:
- stage: Build
  displayName: Build image
  jobs:
  - job: Build
    displayName: Build
    pool:
      vmImage: ubuntu-latest
    steps:
    - task: Docker@2
      inputs:
        containerRegistry: 'Ironclouders Docker Hub'
        repository: 'rodrigolsoria/ironclouders_final_project'
        command: 'buildAndPush'
        Dockerfile: '**/Dockerfile'
        tags: |
          Back
```


 ## CREATING A NETWORK

 ```bash
$ docker network create --driver bridge ironclouders-network
```