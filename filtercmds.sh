
#!/bin/bash
echo "---FILTER COMMANDS---"

data="
HELLO GOODMORNING
HELLO  GOODEVENING
HELLO EVERYONE 
I AM SHREYA
I welcome you all
"
echo "1)GREP COMMAND"
echo "Option -i ignores case sensitivity"
echo "$data" | grep -i "hello" 
echo "----------------"
echo "Option -v inverts match"
echo "$data" | grep -vi "hello"
echo "-----------------"
echo "Option -c will count the number of matching lines"
echo "$data" | grep -i -c "hello"
echo "$data" | grep -vi -c "hello"
echo "------------------"
echo "Option -n displays number of lines with matches"
echo "$data" | grep -i -n "I"
 
echo "--------------------"
echo "2)AWK COMMAND"
echo "$data" | awk '{print $1,$2,$3}'
echo "-------------------"
echo "Option NR prints the line number"
echo "$data" | awk '{print NR,$1}'
echo "-------------------"
echo "Option FS prints the field separator"
echo "$data" | awk 'BEGIN {FS=""}{print $1,$2,$3,$4,$5}'
echo "$data" | awk 'BEGIN {FS=""}{print NR, $0}'
echo "---------------------"
echo "Option -F set custom field separator"
echo "$data" | awk -F' ' '{print $1, $2}'

echo "--------------------"
echo "3)SED COMMAND"
echo "$data" | sed 's/hello/hii/I'
echo "$data" | sed '2d'
echo "$data" | sed -n '/hello/p'
echo "--------------------"
echo "4)TEE COMMAND"
echo "$data" command | tee -i
