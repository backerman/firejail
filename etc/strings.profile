# Firejail profile for strings
# This file is overwritten after every install/update
quiet
# Persistent local customizations
include /etc/firejail/strings.local
# Persistent global definitions
# added by included default.profile
#include /etc/firejail/globals.local

blacklist /tmp/.X11-unix

ignore noroot
net none
no3d
nodbus
nodvd
nosound
notv
novideo
shell none
tracelog

private-bin strings
private-cache
private-dev
private-etc none
private-lib

memory-deny-write-execute
noexec ${HOME}
noexec /tmp

include /etc/firejail/default.profile
