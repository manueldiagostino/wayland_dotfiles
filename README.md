# wayland_dotfiles

<div align = "center">
    <img src="https://img.shields.io/github/languages/top/manueldiagostino/wayland_dotfiles">
</div>

<br>

Hi, this is my personal 🐧 linux-rice 🐧 :)

Assuming you have already installed Wayland on your distro, the following are **required**:
- [Hyprland](https://github.com/hyprwm/Hyprland)
- [waybar](https://github.com/Alexays/Waybar)
- [wofi](https://man.archlinux.org/man/wofi.1.en)
- [dunst](https://dunst-project.org)
- [pamixer](https://github.com/cdemoulins/pamixer)
- [brightnessctl](https://github.com/Hummer12007/brightnessctl)
- [swaybg](https://github.com/swaywm/swaybg)
- [nautilus](https://github.com/GNOME/nautilus)
- [swaylock-effects](https://github.com/mortie/swaylock-effects)
- [swayidle](https://github.com/swaywm/swayidle)
- [imv](https://github.com/eXeC64/imv)
- [wlrobs-hg](https://aur.archlinux.org/wlrobs-hg.git)
- [Blueman](https://wiki.archlinux.org/title/Blueman)
- [v4l2loopback-dkms](https://github.com/umlaeute/v4l2loopback)
- [wf-recorder](https://github.com/ammen99/wf-recorder)
- [Vundle](https://github.com/VundleVim/Vundle.vim)

> Remember to change */home/manuel* in `.config/hypr/hyprland.conf` with your current home path.


# Screensharing
Apps like Discord still doesn't support screensharing on Wayland. My personal solution
(a bit tricky) is to create a virtual webcam with `v4l2loopback-dkms` and stream the screen content into it through `wf-recorder`; since Discord sees a flipped version of the screen from the virtual cam, I use `ffmpeg` to take that input and to output a straight stream into another virtual webcam.
The commands are in `.config/hypr/stream.sh`.

# Bar
I'm using [Eww](https://github.com/elkowar/eww). 


# Gallery
![screen1](https://github.com/manueldiagostino/wayland_dotfiles/blob/main/.wayland_dotfiles/screen_1.jpeg)
<br>
![screen2](https://github.com/manueldiagostino/wayland_dotfiles/blob/main/.wayland_dotfiles/screen_2.jpeg)
<br>
![screen3](https://github.com/manueldiagostino/wayland_dotfiles/blob/main/.wayland_dotfiles/screen_3.jpeg)
