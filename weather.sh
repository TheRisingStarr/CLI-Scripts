export LANG=en_US.UTF-8
city=$1
data=$(curl -s "wttr.in/$city?format=j1")


temp=$(echo "$data" | jq -r '.current_condition[0].temp_C')
feel=$(echo "$data" | jq -r '.current_condition[0].FeelsLikeC')
hum=$(echo "$data" | jq -r '.current_condition[0].humidity')
wind=$(echo "$data" | jq -r '.current_condition[0].windspeedKmph')
desc=$(echo "$data" | jq -r '.current_condition[0].weatherDesc[0].value')

printf "┌──────────────────────────────────────┐\n"
printf "│ %-36s │\n" "Weather for $city"
printf "├──────────────────────────────────────┤\n"
printf "│ %-36s │\n" "Temp       : $temp C"
printf "│ %-36s │\n" "Feels like : $feel C"
printf "│ %-36s │\n" "Humidity   : $hum%"
printf "│ %-36s │\n" "Wind       : $wind Kmph"
printf "│ %-36s │\n" "Condition  : $desc"
printf "└──────────────────────────────────────┘\n"