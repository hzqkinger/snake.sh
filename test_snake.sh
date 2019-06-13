#! /bin/bash

#---------------------------------------------------------这个是开始时的界面
#start show interface
function startShowInterface()
{
	seconds=$1
	printf "******************************************\n"
	printf "*                                        *\n"
	printf "*                                        *\n"
	printf "*******\033[42;31msnake start after: $seconds seconds\033[0m*******\n"
	printf "*                                        *\n"
	printf "*                                        *\n"
	printf "******************************************\n"
}
#start show 
function startShow()
{
	seconds=3;
	while [[ $seconds -gt 0 ]];
	do
		clear;
		startShowInterface $seconds;
		sleep 1;
		let seconds--;
	done
}

#--------------------------------------------------------------------------------------------------------------------------------------------------------

#下面是游戏界面的宽和高
# the width
with=42
# the height
height=22
#这个是游戏运行区域
# area
area=(
1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 9
1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 9
1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 9
1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 9
1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 9
1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 9
1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 9
1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 9
1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 9
1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 9
1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 9
1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 9
1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 9
1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 9
1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 9
1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 9
1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 9
1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 9
1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 9
1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 9
1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 9
1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 9
)
head=47
tail=45
originPos=(45 46 47)
snakeBody=2
snakeFood=3
curPos=(${originPos[*]})
#----------------------------------------------------------------------------------------------------------------------------------
function initSnake()
{
	for data in ${originPos[@]};
	do
		area[$data]=$snakeBody
	done
}
#绘制贪吃蛇
#draw snake
function drawSnake()
{
	for data in ${originPos[@]};
	do
		echo "originPos[$data]=${originPos[$data]}"
		area[$data]=0
	done
	for data in ${curPos[@]};
	do
		echo "curPos[$data]=${curPos[$data]}"
		area[$data]=$snakeBody
	done
	
	originPos=${curPos[*]}
}


foodPos=1
#随机生成食物位置
#generate food
function generateFood()
{
	if [ ${area[foodPos]} -eq 3 ];then
		return
	fi
	
	area_size=${#area[@]}
	while [ ! ${area[foodPos]} -eq 0 ]
	do
		newFoodPos=$(( RANDOM%$area_size ))
		[ ${area[newFoodPos]} -eq 0 ] && foodPos=$newFoodPos
	done
	area[foodPos]=3
}

# game main inteface
function gameMainInterface
{
	clear;
	pos=0
	echo -e "\e[1;42m"

	for data in ${area[@]};
	do
		
		case $data in
		[9])
			printf "\n"
			;;
		[1])
			printf "#"
			;;
		[0])
			printf " "
			;;
		[$snakeBody])
			printf "\e[1;31m"
			if [[ $pos = $head ]]; then
				printf "@"
			else
				printf "*"
			fi
			printf "\e[0m\e[1;42m"
			;;
		[$snakeFood])
			printf "\e[1;34m&\e[0m\e[1;42m"
			;;
		esac
		let pos++
	done
	echo -e "\e[0m"
}
#-------------------------------------------------------------------------------------------------------------------------

side=$$ #表示当前shell脚本的pid
#贪吃蛇移动的算法，用的一维数组
#move
moveDirection=-2
function snakeMove()
{
	originPos=(${curPos[*]})
	length=${#curPos[*]}
	head=${curPos[$(( $length-1 ))]}
	case $moveDirection in
	$left)
		let head--
	;;
	$right)
		let head++
	;;
	$up)
		let head=head-with
		let head--
	;;
	$down)
		let head=head+with
		let head++
	;;
	esac
	
	if [ $head -eq $foodPos ];then
		curPos[length]=$head
	else
		for ((i=0; i<$((length-1)); i++));
		do
			curPos[i]=${curPos[$((i+1))]}
		done
		curPos[$((length-1))]=$head
	fi
	echo "head=$head"
	[ ${area[head]} -eq 1 -o ${area[head]} -eq 2 ] && kill -35 $side
}


left=2
right=-2
up=3
down=-3
#游戏运行的进程，游戏主逻辑都在这里了
#main interface
function mainInterface
{
 	trap "moveDirection=$left" 36
 	trap "moveDirection=$right" 37
 	trap "moveDirection=$up" 38
 	trap "moveDirection=$down" 39
 
 	startShow
	initSnake
	while [ : ]
	do
		generateFood
		snakeMove $moveDirection
		[ ${area[head]} -eq 1 -o ${area[head]} -eq 2 ] && return
		drawSnake
		gameMainInterface
		
		sleep 0.3
	done
}
mainInterface&
main=$!

#--------------------------------------------------------------------------------------------------------------------------------------

# move snake
function moveDirectionUpdate()
{
	if [[ $(( $1+$2 )) -eq 0 || $1 -eq $2 ]];then   
		return;
	fi
	case $2 in
	$left)
		kill -36 $main
	;;
	$right)
		kill -37 $main
	;;
	$up)
		kill -38 $main
	;;
	$down)
		kill -39 $main
	;;
	esac
}

#监听上下左右键的输入
#watch input
function watchInput()
{
	curDirection=$left
	preDirection=$curDirection
	while :;
	do
		read -s -n 1 op;
		[[ $op = "q" ]] && kill -9 $! && return;
		[[ $op = "w" ]] && preDirection=$curDirection && curDirection=$up && moveDirectionUpdate $preDirection $curDirection;
		[[ $op = "s" ]] && preDirection=$curDirection && curDirection=$down && moveDirectionUpdate $preDirection $curDirection;
		[[ $op = "d" ]] && preDirection=$curDirection && curDirection=$right && moveDirectionUpdate $preDirection $curDirection;
		[[ $op = "a" ]] && preDirection=$curDirection && curDirection=$left && moveDirectionUpdate $preDirection $curDirection;
	done
}
watchInput
