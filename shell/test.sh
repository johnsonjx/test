#!/bin/bash
#--------------------------------
# 这是递归已个shell程序

# 功能： 哈哈
# 特色： 没哟与
#--------------------------------

##### echo 宽诶是 #####
# echo simple
 a=1;
echo $a;
##### echo 结束 #####

##### for in start #####
# for in simple
for file in `ls /etc`;do
  echo ${file}dfdf;
done;
##### for in end #####
echo 'test quotation single double'
str_single_quotation='hello \n "" $a';
echo $str_single_quotation;

str_double_quotation="hello /r $a!\"";
echo $str_double_quotation;

your_name='johnson';
greeting="hello,"$your_name"!";
greeting_1="hello,${your_name}!";
echo $greeting $greeting_1;

#长度
echo ${#your_name}

#substr
a="123456789"
echo ${a:3:2}

# a="my name is johnson!";
# echo `expr index "$a" is`

a=3;
if [ $a -eq 2 ]
then
 echo 1;
 a=3;
elif [[ $a -eq 3 ]]; then
  echo $a;
else
  echo 'haha';
fi

echo $a;


for var in 1 2 3 4;
do
  echo $var;
done;

a='12345'
echo "长度：${#a}";
len=${#a};
for ((a=1;a<=len;a++))
do
  echo $a;
done;

b=$[ 1 + 2 ];
echo $b;
echo 'while test'
while [ $a -lt 10 ]
do
  echo "hello"$a;
  a=$((a+1));
done;

b=`expr 1 + 3`;
echo $b;
echo `expr 1 + 3`

# while :
# do
#    echo 'haha'
# done;

echo $a;
for((;;))
do
  read a ;
  echo "read:"$a;
case "$a" in "hello")
    echo $1;
    exit
    ;;
  esac
done;
