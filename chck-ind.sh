wget $1 | grep "href=" index.html &&  cat index.html | grep -o 'http[s]://[^"]*' | cut -d "/" -f 3 | sort -u > list.txt | cut -d "/" -f 3 | grep "\."

for url in $(cat list.txt); do host $url; done | grep "has address" | cut -d " " -f 4 | sort -u
