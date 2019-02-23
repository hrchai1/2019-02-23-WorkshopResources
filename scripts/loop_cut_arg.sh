# $1 $2 $3 are options for cut columns
# $4 is the lines for head
# $5 is the sort options(e.g. n or nr)
echo "columns for cut $1 $2 $3"
echo "number of lines for head $4"
echo "sort options $5"
for gapminderfile in [U-Z]*.txt
do
    echo $gapminderfile
    cut -f "$1","$2","$3" $gapminderfile | sort -"$5" | head -"$4"
done
