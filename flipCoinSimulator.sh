#!/bin/bash -x

Heads=0;
Tails=0;
limit=20;	# limit = (Required limit - 1)

while [ $Heads -le $limit ] && [ $Tails -le $limit ];	# Either Heads or Tails reach limit, while loop will end.
do
        random=$(( RANDOM%2 ));		#Generating random number.

        if [ $random -eq 0 ];
        then
                Heads=$(( $Heads + 1 ));	#Assigning Heads.

        else
                Tails=$(( $Tails + 1 ));	#Assigning Tails.
        fi
done

echo "Welcome to flip coin simulator";
sleep 1

echo "Number of Heads : " $Heads;
echo "Number of Tails : " $Tails;


if [ $Heads -gt $Tails ];
then
	WinBy=$(( $Heads - $Tails ));
	echo "Heads win by margin of $WinBy !";

elif [ $Heads -lt $Tails ];
then
	WinBy=$(( $Tails - $Heads ));
	echo "Tails win by margin of $WinBy !";
elif [ $Heads -eq $Tails ];
then
	echo "It's a TIE!"
fi
