# dotfiles

# to create the list of packages :

`sudo grep -oP "Unpacking \K[^: ]+" /var/log/installer/syslog \
  | sort -u | comm -13 /dev/stdin <(apt-mark showmanual | sort)

# taken from here : https://stackoverflow.com/questions/41007182/debian-listing-all-user-installed-packages/46144968


ideas for mapping home row to ctrl and alt
https://github.com/alols/xcape

so map n to Control_L and then run xcape on Control_L to n (or keycode not sure?)
`xmodmap -e "keycode 44 = Control_R"` 
`xcape -e "Control_R=n"`

Think 44 is n in colemak, not in qwerty though j
