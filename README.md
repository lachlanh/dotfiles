# dotfiles

# to create the list of packages :

`sudo grep -oP "Unpacking \K[^: ]+" /var/log/installer/syslog \
  | sort -u | comm -13 /dev/stdin <(apt-mark showmanual | sort)

# taken from here : https://stackoverflow.com/questions/41007182/debian-listing-all-user-installed-packages/46144968
