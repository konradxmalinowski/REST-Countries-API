import json
import requests

JSON_FILE = "data-transformed.json"
URL = "http://localhost:8080/countries"

with open(JSON_FILE) as json_file:
    data = json.load(json_file)

for country in data:
    try:
        response = requests.post(URL, json=country)
    except requests.exceptions.RequestException as e:
        print(e)
