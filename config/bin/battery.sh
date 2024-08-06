#!/bin/zsh
# Give a battery name (Check the battery name from sys/class/power_supply/ e.g. BAT0 or BAT1 and pass it as an argument.

case $BLOCK_BUTTON in
3) pgrep -x dunst >/dev/null && notify-send "🔋 Battery module" "🔋: discharging
🛑: not charging
♻: stagnant charge
🔌: charging
⚡: charged
❗: battery very low!
- Text color reflects charge left" ;;
esac

for battery in /sys/class/power_supply/BAT1; do
    capacity=$(cat "$battery"/capacity) || exit
    status=$(cat "$battery"/status)
    left=$(acpi | awk '{print $5}')

    if [ "$capacity" -ge 75 ]; then
        color="#00ff00"
    elif [ "$capacity" -ge 50 ]; then
        color="#ffffff"
    elif [ "$capacity" -ge 25 ]; then
        color="#ffff00"
    else
        color="#ff0000"
        warn="❗"
    fi

    [ -z $warn ] && warn=" "

    [ "$status" = "Charging" ] && color="#ffffff"

    printf "%s%s%s%s\n" "$(echo "$status" | sed "s/,//;s/Discharging/🔋/;s/Not charging/🛑/;s/Charging/🔌/;s/Unknown/♻️/;s/Full/⚡/;s/ 0*/ /g;s/ :/ /g")" "$warn" "$(echo "$capacity" | sed -e 's/$/%/')" " $(echo "$left") "
done
