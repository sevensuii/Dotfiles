#!/bin/bash

## Using feh to set the background on startup
# You can uncomment the line below, if you are doing the setup on your own.
# If you are running the setup script, it will add this line.
# feh --bg-scale <Path_To_Dotfiles>/Dotfiles/Wallpapres/5120x2880.jpg

## Using nitrogen to set wallpaper on startup
#nitrogen --restore &

## Starting compton compositor on startup for transparency
# If transparency is not working, try with vsync
picom &

#################################
# Start pulseaudio #            #
####################            #
                                #
pulseaudio --start              #
                                #
#################################

#################################################################################################
# Start polkit authentication agent #                                                           #
#####################################                                                           #
                                                                                                #
lxpolkit &                                                                                      #
#nitrogen --set-scaled /home/sevensuii/Git-Repos/Dotfiles/Wallpapers/Mountains.jpg --save       #
feh --bg-scale ./.config/qtile/Wallpapers/unix.jpg &
                                                                                                #
#################################################################################################

#############################
# NM Wifi applet #          #
##################          #
                            #
nm-applet &                 #
                            #
#############################

#####################################################################################
# Mouse options #                                                                   #
#################                                                                   #
                                                                                    #
xinput --set-prop 'ASUE120A:00 04F3:319B Touchpad' 'libinput Tapping Enabled' 1     #
                                                                                    #
#####################################################################################

#########################################################################################################################
# Screen options #                                                                                                      #
##################                                                                                                      #
                                                                                                                        #
#connected2k=false                                                                                                       #
dpVal=$(xrandr | grep "DP-1-0.8" | cut -d ' ' -f 2)                                                                     #
#hdmiVal=$(xrandr | grep "HDMI-1" | cut -d ' ' -f 2)                                                                     #
                                                                                                                        #
# if main 2k monitor is connected                                                                                       #
#if [[ $dpVal == 'connected' ]];                                                                                         #
#then                                                                                                                    #
    #xrandr --output DP-1-0.8 --mode 2560x1440 --pos 1920x0 --rotate normal       #
#    ~/.screenlayout/test.sh
#    autorandr docked-setup
#    connected2k=true                                                                                                    #
#fi                                                                                                                      #
                                                                                                                        #
# this is not in use rn
# if secondary monitor is connected                                                                                     #
#if [[ $hdmiVal == 'connected' ]];                                                                                       #
#then                                                                                                                    #
#    if $connected2k;                                                                                                    #
#    then         # checks of main 2k monitor is connected and set it on the right                                       #
 #       xrandr --output HDMI-1 --mode 1920x1080 --pos 4480x180 --rate 75 --rotate normal --right-of DP-1-0.8            #
#    else                                                                                                                #
#        # if main 2k monitor is not connected                                                                           #
  #      xrandr --output HDMI-1 --mode 1920x1080 --pos 4480x180 --rate 75 --rotate normal --right-of eDP-1               #
#    fi                                                                                                                  #
#fi                                                                                                                      #
                                                                                                                        #
######################                                                                                                  #
# End Screen options #                                                                                                  #
#########################################################################################################################

#################################################
# Optimus manager graphical interface #         #
#######################################         #
                                                #
optimus-manager-qt &                            #
                                                #
#################################################

#############################################
# Keyboard RGB initialization #             #
###############################             #
                                            #
~/.config/qtile/Scripts/kb_start &
#rogauracore initialize_keyboard            #
#rogauracore rainbow_cycle 2                #
#rogauracore brightness 2                   #
                                            #
#############################################


