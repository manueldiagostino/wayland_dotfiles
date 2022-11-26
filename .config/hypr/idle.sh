swayidle -w \
	timeout 300 '~/.config/hypr/lock.sh' \
	timeout 360 'hyprctl dispatch dpms off eDP-1 && hyprctl dispatch dpms off DP-1' \
	resume '
		hyprctl monitors | grep HDMI
		ret=$?

		if [ $ret -eq 0 ]	
		then
			hyprctl dispatch dpms on DP-1
		else
			hyprctl dispatch dpms on eDP-1
		fi
		' \
	before-sleep '~/.config/hypr/lock.sh' \
	lock '~/.config/hypr/lock.sh'
