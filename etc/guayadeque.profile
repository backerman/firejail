# Firejail profile for guayadeque
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/guayadeque.local
# Persistent global definitions
include /etc/firejail/globals.local

noblacklist ${HOME}/.guayadeque
noblacklist ${MUSIC}

include /etc/firejail/disable-common.inc
include /etc/firejail/disable-devel.inc
include /etc/firejail/disable-interpreters.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-xdg.inc

caps.drop all
netfilter
nogroups
nonewprivs
noroot
notv
novideo
protocol unix,inet,inet6,netlink
seccomp
shell none

private-bin guayadeque
private-dev
private-tmp

noexec ${HOME}
noexec /tmp
