
value=$(<./adblock-list)

echo $value

for entry in $value
 do
    ./adblock-update.sh $entry
done
