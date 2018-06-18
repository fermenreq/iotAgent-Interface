#!/bin/bash

mosquitto_pub -t /TEF/sensor00/attrs -m '{"temperature": 40.2,"Position": "left"}'

