cat access.log | cut -d " " -f 1 | sort | uniq -c | sort -urn
