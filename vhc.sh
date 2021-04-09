#!/bin/bash

# Jesli brak parametrów wyjdź
if [ $# -eq 0 ]
then
echo "Nie podano parametów."
exit
fi

for i in $@ # dla każdego parametru
do

# informuje jeśli plik podany jako parametr istnieje

if [ -d $n ]
then
echo "Plik $n już istnieje."

else
# jesli nie istnieje tworzy go
cp default.conf $n.conf && ln -s $n /etc/apache2/sites-enabled && mkdir "$n" /var/www/html/ && cp /var/www/html/index.html /var/www/html/$n/
echo "Utworzono plik $n wraz z dowiązaniem symbolicznym w sites-enabled i skopiowano do niego zawartość default.conf."
fi

# chmod 751 $n
# ustawienie praw dostępu utworzonym plikom na drwxr-x--x

sed -e 's/\/var\/www\/html\/example.com/$n/' $n.conf>>$n.conf && sed -e 's/example.com/$n/' $n.conf>>$n.conf && sed -e 's/www.example.com/www.$n/' $n.conf>>$n.conf
done
