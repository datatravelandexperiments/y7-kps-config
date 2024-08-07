y7arrayarrange y7_path \
  '-9:*/prefer/*' \
  '-7:/usr/local/buildtools/java/jdk/bin' \
  '-1:*/python/*' \
  '1:*/anaconda/*'

if [[ -n $LC_Y7TAG && -n $WINDOWID && $TERM == mlterm* ]]
then
    y7_windowid=$(xwininfo -tree -id $WINDOWID |
                  sed -n \
                      -e 's/.*Parent window id: \(0x[[:xdigit:]]\+\).*/\1/p') &&
        xprop -id $y7_windowid -remove WM_CLASS &&
        mlicon ${LC_Y7TAG/~(E)^[^[:digit:]]*/}
fi

