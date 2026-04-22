
#!/bin/bash
echo "i am $(basename $0) : Can your enter word " 

while read lines; 
do 

echo  $lines | cut -b 2-7;

done