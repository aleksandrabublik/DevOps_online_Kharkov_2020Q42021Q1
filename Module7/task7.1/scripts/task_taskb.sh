#!/bin/bash

file_out=file_output1
grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" $1 | sort | uniq -c | sort -gr | head -n 1 > $file_out
{
read line1
} < $1
echo "From which ip were the most requests?"
echo "$line1"

file_out=out_script2
awk '{print$7}' $1 | sort | uniq -c | sort -gr | head -n 1 > $file_out
{
read line2
}< $1
echo "What is the most requested page?"
echo $line2

file_out=out_script3
cut -d ' ' -f 1 $1 | sort | uniq -c| sort -gr  > $file_out
#grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" $1 | sort | uniq -c | sort -gr  > $file_out
{
read line3
}< $1
echo "How many requests were there from each ip?"
echo $line3

file_out=out_script4
grep "404" $1  > $file_out
{
read line4
}< $1
echo "What non-existent pages were clients referred to?"
echo $line4

file_out=out_script5
grep "" $1 | cut -d[ -f2 | cut -d] -f1 | awk -F: '{print $2":00"}' | sort | uniq -c |sort -gr  > $file_out
{
read line5
}< $1
echo "What time did site get the most requests?"
echo $line5

file_out=out_script6
awk '{print $16,$7}' $1 | grep [b,B]ot 1>&2  > $file_out
#grep -vE 'Googlebot|msnbot-media|YandexBot|bingbot' $1 | sort | uniq -c | sort -nr | head -n 1 > $file_out
{
read line6
}< $1
echo "What search bots have accessed the site?"
echo $line6
