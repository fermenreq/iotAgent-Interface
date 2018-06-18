# Accelerator Webinar 1 - Interface to the Internet of Things
This project shows you how to use and connect Fiware IotAgent in an easy way

## Getting started: Requirements
```
1. Linux SO
2. Docker & Docker-compose
3. Fiware IotAgent
     Iot Agent - JSON: https://github.com/telefonicaid/iotagent-json
     Iot Agent - Ultralight: https://github.com/telefonicaid/iotagent-ul

```

## Instalation Steps:
A good way is to start it using docker compose to deploy the necessary services. I’m using the following version:
```
    Image: Mongo 3.2
    Image: Fiware/orion image
    Image: Mosquitto 1.4.8
```
## How to run ?:
```
1. Deploy services [Orion context broker, Mongo 3.2, Mosquitto 1.4.8]

2. git clone https://github.com/telefonicaid/iotagent-json
3. Set up config.js Iotagent file, i.e docker containers IP address, apikey preferences,..

```


