# vim:filetype=i3
# Should you change your keyboard layout some time, delete
# this file and re-run i3-config-wizard(1).

# Expected to be symlinked to ~/.config/i3/config

# i3 config file (v4)
# Please see http://i3wm.org/docs/userguide.html for a complete reference!

###--- Settings---###
set $mod Mod4
set $sup Mod1
set $term urxvt

set $innergap 10
set $outergap 0

# Use Mouse+$mod to drag floating windows to their wanted position
floating_modifier $mod

# Almost solely used in case of nagbar
font pango: xos4 Terminus 12

# Do not follow the mouse
focus_follows_mouse no

# Window border
new_window pixel 3
default_border pixel 3

# Setup gaps
gaps inner $innergap
gaps outer $outergap

###--- i3 coloring ---###
# Make it clear when failed using red - otherwise set i3 colors with wal from xresources
set_from_resource $bg           i3wm.color0 #ff0000
set_from_resource $bg-alt       i3wm.color14 #ff0000
set_from_resource $fg           i3wm.color15 #ff0000
set_from_resource $fg-alt       i3wm.color2 #ff0000
set_from_resource $hl           i3wm.color13 #ff0000

# class                 border      backgr. text indicator      child_border
client.focused          $fg-alt     $bg     $hl  $fg-alt        $hl
client.focused_inactive $fg-alt     $bg     $fg  $fg-alt        $fg-alt
client.unfocused        $fg-alt     $bg     $fg  $fg-alt        $fg-alt
client.urgent           $fg-alt     $bg     $fg  $fg-alt        $fg-alt
client.placeholder      $fg-alt     $bg     $fg  $fg-alt        $fg-alt

client.background       $bg

# ###--- Window bindings / Focus ---###
# #Web
# assign [class="(?i)firefox"] 1
# for_window [class="(?i)firefox"] focus
# assign [class="(?i)nightly"] 1
# for_window [class="(?i)nightly"] focus

# #Enternatain -> music and pdf
# for_window [class="Zathura"] focus
# assign [class="Zathura"] 3
# assign [instance="ncmpcpp"] 3
# for_window [instance="ncmpcpp"] focus
# assign [instance="dance"] 3
# for_window [instance="dance"] focus
# assign [instance="cava"] 3
# for_window [class="(?i)spotify"] focus
# assign [class="(?i)spotify"] 3

# # Communication
# assign [class="Slack"] 4
# for_window [class="Slack"] focus
# assign [class="(?i)discord"] 4
# for_window [class="(?i)discord"] focus
# assign [class="(?i)messenger for desktop"] 4
# for_window [class="(?i)messenger for desktop"] focus
# assign [instance="mutt"] 4
# for_window [instance="mutt"] focus
# assign [instance="weechat"] 4
# for_window [instance="weechat"] focus

# #Video
# assign [class="mpv"] 5
# for_window [class="mpv"] focus

# #Bit
# assign [instance="qbittorrent"] 6

# # Setup workspaces
# workspace 1 output HDMI-0
# workspace 2 output DVI-I-1
# workspace 3 output DP-0
# workspace 4 output DP-0
# workspace 5 output HDMI-0

###--- i3 navigation binds ---###
# change focus - vim style
bindsym $mod+j focus left
bindsym $mod+k focus down
bindsym $mod+l focus up
bindsym $mod+semicolon focus right

# change focus - cursor style
bindsym $mod+Left focus left
bindsym $mod+Down focus down
bindsym $mod+Up focus up
bindsym $mod+Right focus right

# move focused window - vim style
bindsym $mod+Shift+j move left
bindsym $mod+Shift+k move down
bindsym $mod+Shift+l move up
bindsym $mod+Shift+semicolon move right

# move focused window - cursor style
bindsym $mod+Shift+Left move left
bindsym $mod+Shift+Down move down
bindsym $mod+Shift+Up move up
bindsym $mod+Shift+Right move right

# workspace back and forth (with/without active container)
workspace_auto_back_and_forth yes
bindsym $mod+b workspace back_and_forth
bindsym $mod+Shift+b move container to workspace back_and_forth; workspace back_and_forth

# split orientation
bindsym $mod+h split h;exec notify-send 'tile horizontally'
bindsym $mod+v split v;exec notify-send 'tile vertically'
bindsym $mod+q split toggle

# enter fullscreen mode for the focused container
bindsym $mod+f fullscreen toggle

# change container layout (stacked, tabbed, toggle split)
bindsym $mod+s layout stacking
bindsym $mod+w layout tabbed
bindsym $mod+e layout toggle split

# toggle tiling / floating
bindsym $mod+Shift+space floating toggle

# change focus between tiling / floating windows
bindsym $mod+space focus mode_toggle

# togle sticky
bindsym $mod+Shift+s sticky toggle

# move currently focused windows to scratchpad

# focuse parent container
bindsym $mod+a focus parent

# toggle / untoggle gaps
# see https://www.reddit.com/r/i3wm/comments/5e593j/script_to_toggle_gaps_on_and_off/
# to make this into a single command
bindsym $mod+Shift+g gaps inner current set 0; gaps outer current set 0
bindsym $mod+g gaps inner current set $innergap; gaps outer current set $outergap

# open an empty container
bindsym $mod+o open

#nvigate workspaces
bindsym $mod+Ctrl+Left		workspace prev
bindsym $mod+Ctrl+Right		workspace next

#Exit i3
#bindsym $mod+Shift+e exec i3-msg exit
# Exit i3 (logs you out of your X session)
bindsym $mod+Shift+e exec "i3-nagbar -t warning -m 'You pressed the exit shortcut. Do you really want to exit i3? This will end your X session.' -b 'Yes, exit i3' 'i3-msg exit'"


# Kill all focused windows with Control+q
bindsym $mod+Shift+q kill


#Workspaces Names
set $ws1 1
set $ws2 2
set $ws3 3
set $ws4 4
set $ws5 5
set $ws6 6
set $ws7 7


# switch to workspace
bindsym $mod+1 workspace $ws1
bindsym $mod+2 workspace $ws2
bindsym $mod+3 workspace $ws3
bindsym $mod+4 workspace $ws4
bindsym $mod+5 workspace $ws5
bindsym $mod+6 workspace $ws6
bindsym $mod+7 workspace $ws7
bindsym $mod+8 workspace $ws8

# Move focused container to workspace
bindsym $mod+Ctrl+1 move container to workspace $ws1
bindsym $mod+Ctrl+2 move container to workspace $ws2
bindsym $mod+Ctrl+3 move container to workspace $ws3
bindsym $mod+Ctrl+4 move container to workspace $ws4
bindsym $mod+Ctrl+5 move container to workspace $ws5
bindsym $mod+Ctrl+6 move container to workspace $ws6
bindsym $mod+Ctrl+7 move container to workspace $ws7
bindsym $mod+Ctrl+8 move container to workspace $ws8

# Move to workspace with focused container
bindsym $mod+Shift+1 move container to workspace $ws1; workspace $ws1
bindsym $mod+Shift+2 move container to workspace $ws2; workspace $ws2
bindsym $mod+Shift+3 move container to workspace $ws3; workspace $ws3
bindsym $mod+Shift+4 move container to workspace $ws4; workspace $ws4
bindsym $mod+Shift+5 move container to workspace $ws5; workspace $ws5
bindsym $mod+Shift+6 move container to workspace $ws6; workspace $ws6
bindsym $mod+Shift+7 move container to workspace $ws7; workspace $ws7
bindsym $mod+Shift+8 move container to workspace $ws8; workspace $ws8



###--- Launch Applications Binds ---###
bindsym $mod+Return exec $term -e tmux
bindsym $mod+Shift+Return exec $term
bindsym $mod+F2 exec firefox
bindsym $sup+r exec $term -name ranger -e ranger
#bindsym $mod+r exec $term -name ranger -e ranger
#bindsym $sup+n exec $term -name ncmpcpp -e ncmpcpp; exec --no-startup-id mpc random on; exec --no-startup-id mpc repeat on
bindsym $sup+t exec $term -name gtop -e gtop
#bindsym $sup+c exec $term -name cava -e cava
#bindsym $sup+q exec qbittorrent
#bindsym $sup+m exec $term -name mutt -e sh ~/Scripts/mutt.sh
#bindsym $sup+s exec slack
#bindsym $sup+i exec $term -name weechat -e weechat
#bindsym $sup+w exec $term -name nmtui -e nmtui-connect
#bindsym $sup+j exec $term -name todo -e nvim ~/Dropbox/IRL/todo.txt

###--- Command Keybindings ---###

# reload the configuration file
bindsym $mod+Shift+r reload
# restart i3 inplace (preserves your layout/session, can be used to upgrade i3)
# bindsym $mod+Shift+r restart

# Resize keybinds
# bindsym $mod+plus resize grow width 10 px or 10 ppt
# bindsym $mod+Shift+plus resize grow height 10 px or 10 ppt
# bindsym $mod+minus resize shrink width 10 px or 10 ppt
# bindsym $mod+Shift+minus resize shrink height 10 px or 10 ppt

# Resize window (you can also use the mouse for that)
bindsym $mod+r mode "resize"
mode "resize" {
        # These bindings trigger as soon as you enter the resize mode
        # Pressing left will shrink the window’s width.
        # Pressing right will grow the window’s width.
        # Pressing up will shrink the window’s height.
        # Pressing down will grow the window’s height.
        bindsym j resize shrink width 5 px or 5 ppt
        bindsym k resize grow height 5 px or 5 ppt
        bindsym l resize shrink height 5 px or 5 ppt
        bindsym semicolon resize grow width 5 px or 5 ppt

        # same bindings, but for the arrow keys
        bindsym Left resize shrink width 10 px or 10 ppt
        bindsym Down resize grow height 10 px or 10 ppt
        bindsym Up resize shrink height 10 px or 10 ppt
        bindsym Right resize grow width 10 px or 10 ppt

        # exit resize mode: Enter or Escape
        bindsym Return mode "default"
        bindsym Escape mode "default"
}

# Set shut down, restart and locking features
bindsym $mod+0 mode "$mode_system"
set $mode_system (l)ock, (e)xit, switch_(u)ser, (s)uspend, (h)ibernate, (r)eboot, (Shift+s)hutdown
mode "$mode_system" {
    bindsym l exec --no-startup-id i3exit lock, mode "default"
    bindsym s exec --no-startup-id i3exit suspend, mode "default"
    bindsym u exec --no-startup-id i3exit switch_user, mode "default"
    bindsym e exec --no-startup-id i3exit logout, mode "default"
    bindsym h exec --no-startup-id i3exit hibernate, mode "default"
    bindsym r exec --no-startup-id i3exit reboot, mode "default"
    bindsym Shift+s exec --no-startup-id i3exit shutdown, mode "default"

    # exit system mode: "Enter" or "Escape"
    bindsym Return mode "default"
    bindsym Escape mode "default"
}


# Screenshot region/monitor and uniquely identify in picture folder
bindsym $mod+z exec --no-startup-id sh Scripts/screenshot_region.sh
bindsym $mod+Shift+z exec --no-startup-id sh Scripts/screenshot_monitor.sh

# Rofi keybinds
bindsym $mod+d exec sh ~/Scripts/rofi.sh run
bindsym $mod+Shift+d exec sh ~/Scripts/rofi.sh window

# Lock screen
# bindsym $sup+l exec --no-startup-id sh ~/Scripts/lock.sh

###--- Scripts ran at start ---###
# Setup triple monitor setup
#exec --no-startup-id xrandr --auto --output DVI-I-1 --mode 1920x1080 --rate 144 --auto --output HDMI-0 --mode 1920x1080 --rate 60 --left-of DVI-I-1 --auto --output DP-0 --mode 1920x1080 --rate 60 --right-of DVI-I-1 --rotate right

# Merged nvidia monitor setup with nitrogen as nitrogen won't restore properly till screens are setup
# Nvidia setup instead of xrandr is to include fix for screen tearing with X and Nvidia proprietary driver
#exec --no-startup-id sh ~/Scripts/nvidia.sh; nitrogen --restore

# Restore wallpaper setup
#exec --no-startup-id nitrogen --restore

# Wal, dunst and polybar combined - waiting for wal values first
# Currently wait a bit before executing due to a known bug
# https://bbs.archlinux.org/viewtopic.php?id=200797
# Modify sleep time from machine to machine
exec --no-startup-id sleep 2; sh ~/Scripts/beautify.sh

###--- Launch Applications/Daemons At Start ---###

# Dropbox won't seem to start without a delay - tray issue
#exec --no-startup-id sleep 10; dropbox

# Setup NetworkManager
exec --no-startup-id nm-applet

# Start Mopidy Server
# exec --no-startup-id mopidy

# Save the eyes with redshift
# exec --no-startup-id redshift -l 59.334591:18.063240

###--- Input settings (mouse/keyboard) ---####
# Reduce mouse speed by 0%
exec --no-startup-id xinput --set-prop 9 'libinput Accel Speed' 0
#exec --no-startup-id xinput --set-prop 9 'libinput Accel Speed' -0.25

# Map Caps Lock to Esc
# Allow keyboard toggling using alt + space
# exec --no-startup-id sh ~/Scripts/keymap.sh

# Start unclutter to hide mouse-pointer when unused
# exec --no-startup-id unclutter

###--- Scratchpad terminal setup ---###
# for_window [instance="scratch"] floating enable
# for_window [instance="scratch"] resize set 625 400
# for_window [instance="scratch"] move position center
# for_window [instance="scratch"] move scratchpad
# exec --no-startup-id $term -name scratch -e tmux

# bindsym $mod+u [instance="scratch"] scratchpad show; move position center

# for_window [instance="password"] floating enable
# for_window [instance="password"] resize set 1366 768
# for_window [instance="password"] move position center
# for_window [instance="password"] move scratchpad
# exec --no-startup-id enpass -name password

bindsym $mod+Shift+u [instance="password"] scratchpad show; move position center

###--- Media key bindings ---###
# bindsym XF86AudioMute		    exec $mute
# bindsym XF86AudioLowerVolume	exec $dec
# bindsym XF86AudioRaiseVolume    exec $inc
# bindsym XF86MonBrightnessDown	exec --no-startup-id xbacklight -dec 15
# bindsym XF86MonBrightnessUp     exec --no-startup-id xbacklight -inc 15
# bindsym XF86KbdBrightnessDown	exec --no-startup-id kbdlight down
# bindsym XF86KbdBrightnessUp     exec --no-startup-id kbdlight up
# bindsym XF86AudioNext		    exec $next
# bindsym XF86AudioPlay		    exec $pause
# bindsym XF86AudioPrev           exec $prev
