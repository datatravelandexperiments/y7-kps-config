umask 002

export LC_COLLATE=C

for y7e in nvim vim nvi vi
do
    if [[ $(y7which $y7e) == /* ]]
    then
        export VISUAL=$y7e
        break
    fi
done
export EDITOR=ex

export NO_COLOR=1

export GCC_COLORS="\
error=01;31:warning=01;35:note=01;34:range1=34:range2=34:locus=01:\
quote=01:path=01;34:fixit-insert=32:fixit-delete=31:\
diff-filename=01:diff-hunk=32:diff-delete=31:diff-insert=32:\
type-diff=01;32"

export COLOREDLOGS_FIELD_STYLES=
export COLOREDLOGS_LEVEL_STYLES='debug=22;verbose=21;notice=52;info=0;warning=136,bold;success=22;error=124,bold;critical=1,bold'


# vim:set filetype=sh et sts=4 sw=4 ai noci nosi:
