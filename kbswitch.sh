#!/bin/bash
(setxkbmap -query | grep -q "variant:\s\+colemak") && setxkbmap us || setxkbmap us -variant colemak
