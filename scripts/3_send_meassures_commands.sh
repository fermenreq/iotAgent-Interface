curl -X POST 'http://localhost:7896/iot/d?k=TEF&i=sensor03&getCmd=1' -H "Fiware-Service: myHome" -H "Fiware-ServicePath: /environment" -H "Cache-Control: no-cache" -H "Content-Type: application/json"
-d 't|25.6|c|intense'

