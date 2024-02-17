# Read from the file file.txt and output the tenth line to stdout
FNAME='file.txt'

#sed -n '10p' $FNAME

#awk 'NR==10' $FNAME

#if [ $(wc -l < "$FNAME") -ge 10 ]; then
#    head -n 10 "$FNAME" | tail -n 1
#fi

# Read from the file file.txt and output the tenth line to stdout.
n=1
while read line && [ $n -le 10 ]; do 
    if [ $n -eq 10 ]; then
        echo $line
        exit 0;
    fi
    (( n++ )) 
done < $FNAME