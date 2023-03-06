#!/bin/bash

# 变量 不关注类型
# 定义过的变量 需要加$符号使用
# 可以在语句中给变量赋值

MY_MESSAGE = "HELLO"
# echo $MY_MESSAGE
# for file in $(ls); do
#     echo $file
# done

for skill in Ada Coffe Action Java; do
    ## 单引号内部的变量不会被替换
    echo 'I am good at $skill Script'
    ## 双引号内部的变量会被替换 也可以出现转义符
    echo "I am good at $skill Script"
done

#删除变量
# unset MY_MESSAGE

## 字符串操作

# 字符串长度
# echo ${#MY_MESSAGE}

# 截取字符串
# echo ${MY_MESSAGE:1:3}

# 查找子字符串
# echo `expr index "$MY_MESSAGE" HELLO`

## 数组操作

# 传递参数
echo "Shell 传递参数实例！"
echo "执行的文件名：$0"
echo "第一个参数为：$1"
echo "第二个参数为：$2"
echo "第三个参数为：$3"
echo "process id: $$"

## 数组

# 定义数组
# array_name=(value0 value1 value2 value3)
# 读取数组
# echo ${array_name[1]}
# 获取数组长度
# echo ${#array_name[@]}
# 获取数组单个元素长度
# echo ${#array_name[1]}
my_array[0]=A
my_array[1]=B
my_array[2]=C
my_array[3]=D

echo "数组的元素为: ${my_array[*]}"
echo "数组的元素为: ${my_array[@]}"

## 运算符
## 原生bash不支持简单的数学运算，但是可以通过其他命令来实现，例如 awk 和 expr，expr 最常用。
sum$(expr 1 + 1)
echo "two sum :$sum"

## 控制流

: <<EOF
if condition
then
    command1
    command2
    ...
    commandN
else
    command
elif
    command
fi


for loop in 1 2 3 4 5
do
    echo "The value is: $loop"
done

int=1
while(( $int<=5 ))
do
    echo $int
    let "int++"
done
EOF
# 重定向深入讲解
# 一般情况下，每个 Unix/Linux 命令运行时都会打开三个文件：

# 标准输入文件(stdin)：stdin的文件描述符为0，Unix程序默认从stdin读取数据。
# 标准输出文件(stdout)：stdout 的文件描述符为1，Unix程序默认向stdout输出数据。
# 标准错误文件(stderr)：stderr的文件描述符为2，Unix程序会向stderr流中写入错误信息。
# 默认情况下，command > file 将 stdout 重定向到 file，command < file 将stdin 重定向到 file。

#如果需要重定向stderr到file command 2>file
#! 两个 ‘>’ 代表追加到文件末尾
