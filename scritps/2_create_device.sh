#!/bin/bash

curl -X POST -H "Fiware-Service: myHome" -H "Fiware-ServicePath: /environment" -H "Content-Type: application/json" -H "Cache-Control: no-cache" -d '{ 
    "devices": [ 
        { 
            "device_id": "sensor00", 
            "entity_name": "R2-D2", 
            "entity_type": "robot",
            "attributes": [
              {
                "name": "temperature",
                "type": "celsius"
              },
              {
                "name": "Position",
                "type": "string"
              }
            ]
        }
    ]
}

' 'http://localhost:4041/iot/devices'

