#!/bin/bash

curl -X POST -H "Content-Type: application/json" -H "Accept: application/json" -H "Fiware-Service: myHome" -H "Fiware-ServicePath: /environment" -d '{
    "entities": [
        {
            "isPattern": "false",
            "id": "R2-D2",
            "type": "robot"
        }
    ]
}' 'http://172.26.0.4:1026/NGSI10/queryContext'

