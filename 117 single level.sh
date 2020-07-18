echo "Name the Directory: "
read dname
mkdir $dname
cd $dname

i="y"
while [ $i = "y" ]
do

echo "1. Create File"
echo "2. Search File"
echo "3. Delete File"
echo "4. Rename File"
echo "5. View Directory"
echo "6. Exit"
echo "Enter Your Choice"
read choice

case $choice in
1)
echo "Enter File Name: "
read fname
if [ -f $fname ]
then
echo "File already exists"

else 
touch $fname
echo "File Succesfully Created"
fi;;

2)
echo "Emter File Name: "
read sname
if [ -f $fname ]
then
echo "File exists"

else
echo "No such File exists"
fi;;

3)
echo "Enter the File to be Deleted: "
read dname1
if [ -f $dname1 ]
then
rm $dname1
echo "File Successfully Deleted"

else
echo "No such File exists"
fi;;

4)
echo "ENter the File Name to be renamed: "
read old_fname
echo "Enter the New File Name: "
read new_fname
mv $old_fname $new_fname ;;

5)
echo "Files in Directory " $dname
ls ;;

6)
i="n";;

esac
done