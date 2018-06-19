#! /bin/sh
# Copyright (c) 2006 Peter Denno
#
# Author: peter.denno@nist.gov based on adrian@suse.de slpd, based on template 
# from source package, which is Copyright (c) 2003 SuSE AG Nuernberg, Germany.
#
#
### BEGIN INIT INFO
# Provides:          mexico
# Required-Start:    $network $apache2
# Required-Stop:
# Default-Start:     3 5
# Default-Stop:      0 1 2 4 6
# Description: Server for the MEXICO EXPRESS Injector
### END INIT INFO

. /etc/rc.status

# Determine the base and follow a runlevel link name.
base=${0##*/}
link=${base#*[SK][0-9][0-9]}

# Force execution if not called by a runlevel directory.
test -x /local/lisp/mexico/mexico.exe || exit 0

case "$1" in
  start)
    echo -n 'Starting mexico '
    startproc /local/lisp/mexico/mexico.exe
    rc_status -v
    ;;
  stop)
    echo -n "Shutting down mexico "
    killproc -TERM /local/lisp/mexico/mexico.exe
    rc_status -v
    ;;
  restart)
    $0 stop
    $0 start
    rc_status
    ;;
  try-restart)
    $0 status
    if test $? = 0; then
	$0 restart
    else
	rc_reset
    fi
    rc_status
    ;;
  force-reload)
    $0 stop; sleep 1  &&  $0 start
    rc_status
    ;;
  reload)
    echo -n "Reload service mexico "
    killproc -HUP /local/lisp/mexico/mexico.exe
    rc_status -v
    ;;
  status)
    echo -n "Checking for mexico "
    checkproc /local/lisp/mexico/mexico.exe
    rc_status -v
    ;;
  *)
    echo "Usage: $0 {start|stop|try-restart|restart|force-reload|reload|status}"
    exit 1
esac
rc_exit
