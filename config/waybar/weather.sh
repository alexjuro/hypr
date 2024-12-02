#!/bin/sh

json=$(curl -s "http://api.openweathermap.org/data/2.5/weather?zip=48153,de&appid=81c2fb13740d50e4109044e942e93f9c&units=metric")
main=$(echo "$json" | jq -r '.weather[0].main')
description=$(echo "$json" | jq -r '.weather[0].description')
sunrise=$(echo "$json" | jq -r '.sys.sunrise')
sunset=$(echo "$json" | jq -r '.sys.sunset')
current_time=$(date +%s)

case "$main" in
	"Thunderstorm")
		printf '{"text": "􀇓"}'
		;;
	"Drizzle")
		printf '{"text": "􀇅"}'
		;;
	"Rain")
		if [ "$description" = "light rain" ] || [ "$description" = "moderate rain" ]; then
            printf '{"text": "􀇇"}'
		elif  [ "$description" = "heavy intensity rain" ] || [ "$description" = "very heavy rain" ] || [ "$description" = "extreme rain" ]; then
            printf '{"text": "􀇉"}'
        elif [ "$description" = "freezing rain" ]; then
            printf '{"text": "􀇥"}'
		elif [ "$description" = "light intensity shower rain" ] || [ "$description" = "shower rain" ]; then
            printf '{"text": "􀇏"}'
		else
            printf '{"text": "􀇑"}'
        fi
		;;
	"Snow")
		printf '{"text": "􀇥"}'
		;;	
	"Atmosphere")
		printf '{"text": "􀇋"}'
		;;	
	"Clear")
		if [ "$current_time" -ge "$sunrise" ] && [ "$current_time" -le "$sunset" ]; then
			printf '{"text": "􀆮"}'
		else
			printf '{"text": "􀆺"}'
		fi
		;;
	"Clouds")
		if [ "$description" = "few clouds" ]; then
            if [ "$current_time" -ge "$sunrise" ] && [ "$current_time" -le "$sunset" ]; then
    			printf '{"text": "􀇕"}'
			else
				printf '{"text": "􀇛"}'
			fi
		elif [ "$description" = "scattered clouds" ]; then
            printf '{"text": "􀇃"}'
		else
            printf '{"text": "􀇣"}'
        fi
		;;
	"")
		printf '{"text": "􀌐"}'
		;;
	*)
		printf '{"text": "􀌔"}'
		;;
esac
