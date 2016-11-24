#!/bin/bash
file="README.md"
addTitle(){
  subFile=$1/$file;
  if [ -f $subFile ]
  then
      #  title=`grep ^\# $subFile`;
      title=`cat $subFile | head -n 1`
      echo -e "- [${title:1}]($subFile)\n" >> $file;
      echo "add $title";
  fi;
}
#判断README.md 存在，没有创建
# if [  -f "$file" ];
# then
#   rm $file;
#   echo "remove $file";
# fi
  touch  $file;
  # echo "create $file" ;
#读取子目录 子目录含有README.md 把# title 加入
echo "#test demo 主页" > $file;
for dir in `ls .`;
do
  if [ -d $dir ]
    then
      addTitle $dir;
    fi;
done
