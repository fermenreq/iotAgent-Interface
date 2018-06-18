#!/bin/bash

#Fernando Méndez Requena - fernando.mendez@atos.net

#Post request using IotAgent Ultraligth

curl -X POST -H "Fiware-Service: myHome" -H "Fiware-ServicePath: /environment" -H "Content-Type: application/json" -H "Cache-Control: no-cache" -d '{
     "devices": [
         {
             "device_id": "sensor03",
             "entity_name": "LivingRoomSensor",
             "entity_type": "multiSensor",
             "attributes": [
                   { "object_id": "t", "name": "Temperature", "type": "celsius" },
                   { "object_id": "c", "name": "Luminosity", "type": "string" }
             ],
	     "commands": [
			{ "object_id": "l", "name": "setOn", "type": "string", "value":"OFF" }
		]
         }
     ]
 }' 'http://localhost:4061/iot/devices'	

