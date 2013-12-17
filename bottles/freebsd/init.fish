switch (uname)
case FreeBSD

  set -x LD_LIBRARY_PATH /usr/local/linux-sun-jdk1.6.0/jre/lib/i386
  set -x SDL_VIDEODRIVER vgl
  set -x XDG_DATA_DIRS /usr/local/kde4/share

  set -x http_proxy 127.0.0.1:3128

  #if test {$TERM} = "cons25"
  #if test -e (which jfbterm)
  #  jfbterm
  #end
  #end

end