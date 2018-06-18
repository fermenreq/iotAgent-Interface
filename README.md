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

1. Deploy services [Orion context broker, Mongo 3.2, Mosquitto 1.4.8]
```
docker-compose up -d
```

2. Clone the agent and install it:

```
git clone https://github.com/telefonicaid/iotagent-json
npm install
```

3. Set up config-blank.js Iotagent file, using docker containers IP address, apikey preferences,..


```
...
contextBroker: {
        host: 'docker service IP',
        port: '1026'
    },
    server: {
        port: 4041
    },
    deviceRegistry: {
        type: 'mongodb'
    },
    mongodb: {
        host: 'docker service IP',
        port: '27017',
        db: 'iotagentjson'
},

....
config.defaultKey = 'here the api key you want';

```
4. Run the agent.

```
bin/iotagent-json 
```

If everything is correct you will see the above iotAgent response:

```
...
p=IOTAUL.MQTT.Binding | srv=n/a | subsrv=n/a | msg=Starting MQTT binding | comp=IoTAgent
time=2018-06-18T09:45:29.105Z | lvl=INFO | corr=88c715fe-e5c6-43df-82e3-0c9a5b9b0b83 | trans=88c715fe-e5c6-43df-82e3-0c9a5b9b0b83 | op=IOTAUL.MQTT.Binding | srv=n/a | subsrv=n/a | msg=MQTT Client connected | comp=IoTAgent
...
```
