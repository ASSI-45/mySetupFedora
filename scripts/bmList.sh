BMFILE=~/.bash.bookmarks
[ -f "$BMFILE" ] && . "$BMFILE"

bmadd() {
    local abm
    if [[ $# = 0 ]]; then
        bm=$(basename $(pwd))
    else
        bm=$1
    fi

    abm="alias $bm='cd \"$(pwd)\"'"

    if grep -q " $bm=" "$BMFILE"; then
        echo "Overwriting existing bookmark $bm"
        bmdel "$bm"
    fi
    echo "$abm" >> "$BMFILE"
    eval "$abm"
    #source "$BMFILE"
}

bmdel() {
    local bms
    if [[ $# = 0 ]]; then
        bm=$(basename $(pwd))
    else
        bm=$1
    fi

    #sed -i.bak "/ $bm=/d" "$BMFILE"
    bms=$(grep -v " $bm=" "$BMFILE")
    echo "$bms" > "$BMFILE"
    unalias "$bm" 2> /dev/null
}

bmlist() {
    sed 's/alias \(.*\)=.cd "\(.*\)".$/\1\t\2/' "$BMFILE" | sort
}
