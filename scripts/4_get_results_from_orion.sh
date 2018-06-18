#!/bin/bash

curl -X POST -H "Content-Type: application/json" -H "Accept: application/json" -H "Fiware-Service: myHome" -H "Fiware-ServicePath: /environment" -d '{
   "entities": [
       {
           "isPattern": "false",
           "id": "LivingRoomSensor",
           "type": "multiSensor"
       }
   ]
}' 'http://localhost:1026/NGSI10/queryContext'
