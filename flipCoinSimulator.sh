#! /bin/bash -x

echo "Welcome to flip coin simulator :"
sleep 1


result=$(( RANDOM%2 ))

if [ $result -eq 1 ]
then
	echo "Heads Wins!"
else
	echo "Tails Wins!"
fi
