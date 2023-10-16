#!/bin/bash

echo -e "Enter the information: \n"

#Taking input for component name
while true
do
	read -p "1. Component Name: " component
	case "$component" in	
 		INGESTOR|JOINER|WRANGLER|VALIDATOR)
			break
			;;
	*)
		echo "Invalid choice!!"
	esac
done

#Taking input for scale
while true
do
	read -p "2. Scale: " scale
	case "$scale" in    
                MID|HIGH|LOW)
                        break
                        ;;
        *)
                echo "Invalid choice!!"
        esac
done

#Taking input for view
while true
do
	read -p "3. View: " view
	case "$view" in    
                Auction|Bid)
                        break
                        ;;
        *)
                echo "Invalid choice!!"
        esac
done

#Taking input for count
while true
do
	read -p "4. Count: " count
	if [[ "$count" =~ ^[0-9]$ ]]
	then
		break
	else
		echo "Invalid choice!!"
	fi
done

echo "$view ; $scale ; $component ; ETL ; vdopia-etl=$count" > sig.conf
