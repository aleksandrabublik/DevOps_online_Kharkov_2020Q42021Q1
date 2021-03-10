#1/bin/bash
set -x

func1 (){
echo"Please select one of the keys:"
echo" --all - some description"
echo" --target some description"
}
elif [ "$1" -eg "--all" ]; then
func2 (){
arp -a
}

func3 (){
netstat -tulpn | grep LISTEN
}
if [ -z "$1" ] then
	func1;
elif [ "$1" == "--all" ]; then
	func2;
elif [ "$1" == "--target" ]; then
	func3;

fi