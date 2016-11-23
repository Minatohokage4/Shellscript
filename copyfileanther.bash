cd /home/webapps/project1/folder1
for f in *.csv
do 
   cp -v "$f" /home/webapps/project1/folder2/"${f%.csv}"$(date +%m%d%y).csv
done