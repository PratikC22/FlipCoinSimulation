#!/bin/bash -x

Heads=0
Tails=0
limit=10

while [ $Heads -le $limit ] && [ $Tails -le $limit ]
do
        random=$(( RANDOM%2 ))

        if [ $random -eq 0 ]
        then
                Heads=$(( $Heads + 1 ))

        else
                Tails=$(( $Tails + 1 ))
        fi
done

echo "Welcome to flip coin simulator"
sleep 1

echo "Number of Heads : " $Heads
echo "Number of Tails : " $Tails
