#!/bin/bash

curl -X POST -H "Fiware-Service: myHome" -H "Fiware-ServicePath: /environment" -H "Content-Type: application/json" -H "Cache-Control: no-cache" -d '{
"services": [
  	{
          "resource": "/",
          "apikey": "TEF",
          "type": "multiSensor",
          "cbroker":"172.26.0.4:1026"
  	}
	]
}' 'http://localhost:4041/iot/services'

