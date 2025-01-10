#! /usr/bin/python3 

import json
import requests
import os

WEATHER_CODES = {
    "113": "Sunny",
    "116": "PartlyCloudy",
    "119": "Cloudy",
    "122": "VeryCloudy",
    "143": "Fog",
    "176": "LightShowers",
    "179": "LightSleetShowers",
    "182": "LightSleet",
    "185": "LightSleet",
    "200": "ThunderyShowers",
    "227": "LightSnow",
    "230": "HeavySnow",
    "248": "Fog",
    "260": "Fog",
    "263": "LightShowers",
    "266": "LightRain",
    "281": "LightSleet",
    "284": "LightSleet",
    "293": "LightRain",
    "296": "LightRain",
    "299": "HeavyShowers",
    "302": "HeavyRain",
    "305": "HeavyShowers",
    "308": "HeavyRain",
    "311": "LightSleet",
    "314": "LightSleet",
    "317": "LightSleet",
    "320": "LightSnow",
    "323": "LightSnowShowers",
    "326": "LightSnowShowers",
    "329": "HeavySnow",
    "332": "HeavySnow",
    "335": "HeavySnowShowers",
    "338": "HeavySnow",
    "350": "LightSleet",
    "353": "LightShowers",
    "356": "HeavyShowers",
    "359": "HeavyRain",
    "362": "LightSleetShowers",
    "365": "LightSleetShowers",
    "368": "LightSnowShowers",
    "371": "HeavySnowShowers",
    "374": "LightSleetShowers",
    "377": "LightSleet",
    "386": "ThunderyShowers",
    "389": "ThunderyHeavyRain",
    "392": "ThunderySnowShowers",
    "395": "HeavySnowShowers",
}

WEATHER_SYMBOLS = {
    "Unknown":             " ",
    "Cloudy":              "󰅟  ",
    "Fog":                 "  ",
    "HeavyRain":           "  ",
    "HeavyShowers":        "  ",
    "HeavySnow":           "󰼶 ",
    "HeavySnowShowers":    "󰙿 ",
    "LightRain":           " ",
    "LightShowers":        " ",
    "LightSleet":          "  ",
    "LightSleetShowers":   "  ",
    "LightSnow":           " ",
    "LightSnowShowers":    "󰙿 ",
    "PartlyCloudy":        " ",
    "Sunny":               " ",
    "ThunderyHeavyRain":   " ",
    "ThunderyShowers":     " ",
    "ThunderySnowShowers": " ",
    "VeryCloudy": " ",
}

data = {}

try:
    weather = requests.get("https://wttr.in/tuebingen+germany?format=j1", timeout=5).json()

    weather_symbol = WEATHER_SYMBOLS[WEATHER_CODES[weather['current_condition'][0]['weatherCode']]]

    weatherIcon = "<span font='HurmitNerdFont' rise='0pt' size='16pt' font_weight='bold'>" + weather_symbol + "</span>"

    data['text'] = weatherIcon + weather['current_condition'][0]['temp_C'] + "°C"
except Exception as e:
    data['text'] = "…"

print(json.dumps(data))

#print(data)
