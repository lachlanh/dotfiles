# dotfiles

# to create the list of packages :

`sudo grep -oP "Unpacking \K[^: ]+" /var/log/installer/syslog \
  | sort -u | comm -13 /dev/stdin <(apt-mark showmanual | sort)

# taken from here : https://stackoverflow.com/questions/41007182/debian-listing-all-user-installed-packages/46144968

# setting up nvidia to work with chrome on suspend and resume : https://askubuntu.com/questions/1273399/problems-with-chrome-browser-after-suspending-the-computer-on-ubuntu-20-04

# Getting keyboard defaults working properly, copy 00-keyboard.conf to /etc/X11/xorg.conf.d
