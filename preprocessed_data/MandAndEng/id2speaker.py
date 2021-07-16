import json

with open('speakers.json', 'r') as json_file:
	speakers = json.load(json_file)
id2speaker = dict()
for key, value in speakers.items():
	id2speaker[value] = key
with open('id2speaker.json', 'w') as json_file:
	json.dump(id2speaker, json_file, indent=2)