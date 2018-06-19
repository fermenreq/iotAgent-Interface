from django.http import HttpResponse
from django.views.generic import TemplateView
from django.shortcuts import render
from django.template import loader


import requests
import json
from collections import namedtuple

headers = {	
	"Accept" :"application/json",
	"Fiware-Service":"myHome",
	"Fiware-ServicePath": "/environment"
	}
	

orion = "localhost"
port = "1026"

URL="http://"+orion+":"+port+"/v1/contextEntities/LivingRoomSensor"



def data(request):
	data = {}
	r = requests.get(URL,headers=headers)

	content = r.content

	x = json.loads(content, object_hook=lambda d: namedtuple('i', d.keys())(*d.values()))
	attributes = x.contextElement.attributes
	
	for attrs in attributes:
		if attrs[1] =='Temperature':
			temperature = attrs[2]	
			data['Temperature'] = float(temperature)
		elif attrs[1] == 'Luminosity':
			color= attrs[2]
			data['Luminosity'] =color
	json_data = json.dumps(data)
	
	return HttpResponse(json_data)
	