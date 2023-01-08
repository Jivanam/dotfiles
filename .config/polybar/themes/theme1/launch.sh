#/!bin/bash
    # Detect if secondary monitor is connected, if so, add a specific bar and move tray to it
    # Else, keep tray on main monitor
    # see https://github.com/polybar/polybar/issues/763

    killall -q polybar

    # Wait until the processes have been shut down
    while pgrep -u $UID -x polybar > /dev/null; do sleep 1; done


    connectedMonitors=$(xrandr --query | grep " connected" | cut -d" " -f1)
    primaryMonitor=$(xrandr --query | grep " connected primary" | cut -d" " -f1)

    set -- $connectedMonitors
    countMonitor=($(echo "$connectedMonitors" | tr ' ' '\n'))

    if [ "${#countMonitor[@]}" >1 ]; then

    	for m in "${countMonitor[@]}"; do
    		if [ $m == $primaryMonitor ] 
    		then		
    			MONITOR1=$m polybar --reload mainbar-i3 -c $(dirname $0)/i3config &	
            else
    			MONITOR2=$m polybar --reload extra-i3 -c $(dirname $0)/i3config &
    	    fi
    	done
    
    else
        MONITOR1=$primaryMonitor polybar --reload mainbar-i3 -c $(dirname $0)/i3config &
    fi

    for m in "${countMonitor[@]}"; do
      	export MONITOR1=$1
      	export MONITOR2=$2
       	export TRAY_POSITION=none
        if [[ $m == $tray_output ]]; then
           TRAY_POSITION=right
        fi
    done

