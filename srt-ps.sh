#oneliner to sort by the most memory-consuming processes

ps -o pid,user,%mem,command ax | sort -b -k3 -r
