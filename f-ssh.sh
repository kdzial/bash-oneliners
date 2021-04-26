for dir in $(awk -F: '{print $6}' /etc/passwd); do if [ -d $dir ];then find $dir -maxdepth 1 -type d -name .ssh; fi; done
