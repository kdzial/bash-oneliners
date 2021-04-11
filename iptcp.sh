tcpdump -n -r password_cracking_filtered.pcap | awk -F" " '{print $3}' | sort -u | head #extracting IP and port from dump
