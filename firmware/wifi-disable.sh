#! /bin/sh
### BEGIN INIT INFO
# Provides:          cups
# Required-Start:    $syslog $remote_fs
# Required-Stop:     $syslog $remote_fs
# Should-Start:      $network avahi-daemon slapd nslcd
# Should-Stop:       $network
# X-Start-Before:    samba
# X-Stop-After:      samba
# Default-Start:     2 3 4 5
# Default-Stop:      1
# Short-Description: CUPS Printing spooler and server
# Description:       Manage the CUPS Printing spooler and server;
#                    make it's web interface accessible on http://localhost:631/
### END INIT INFO

# Author: Debian Printing Team <debian-printing@lists.debian.org>

PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin

nmcli radio wifi off
mv /etc/init.d/wifi-disable.sh /etc/init.d/wifi-disable.sh-bak
exit 0
