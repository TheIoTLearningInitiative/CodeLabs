# Fetching usbs location and putting them in array
locIterator="0"
locArr=()
while read row
do
   loc=$( echo $row | grep -P '/media/.*?$' -o )
   if [ "$loc" != "" ]; then
      locArr[ $locIterator ]="$loc"
      (( locIterator++ ))
   fi
done < <(df)

# Fetching usbs serial numbers and putting them in array
snIterator="0"
snArr=()
while read row
do
   sn=$( echo $row | grep -P 'Serial Number:.*?$' -o )
   if [ "$sn" != "" ]; then
      snArr[ $snIterator ]="${sn:15}"
     (( snIterator++ ))
   fi
done < <(cat /proc/scsi/usb-storage/*)

# Generating Output by looping through the both arrays
output=""
for (( i = 0 ; i < ${#locArr[@]} ; i++ ))
do
   if [ "$i" != "0"  ]; then 
      output="$output|"
   fi
   output="$output${locArr[$i]}: ${snArr[$i]}"
done
echo $output

# https://amitgharat.wordpress.com/2012/03/31/how-to-find-usb-mounting-point-and-serial-number-in-bash/
