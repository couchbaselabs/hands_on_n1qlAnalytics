TO_REMOVE=$1

case TO_REMOVE in
    ''|![0-9]*) echo $TO_REMOVE is not a number; exit ;;
    *) echo removing slide-$TO_REMOVE.md ;;
esac

MAX=$(ls -1 slide-*.md | wc -l)

echo last slide is slide-$MAX.md
mv slide-$TO_REMOVE.md removed.md
for I in $(seq $TO_REMOVE $((MAX - 1)))
do
  ((J = I + 1))
  mv slide-$J.md slide-$I.md
done
