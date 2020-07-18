i="y"
while [ $i = "y" ]
do

echo "1. Create User Directory"
echo "2. Create Directory Inside User Directory"
echo "3. View Present Working Directory"
echo "4. View Directory Inside of User Directory"
echo "5. Create File"
echo "6. Search File"
echo "7. Delete File"
echo "8. Rename File"
echo "9. Change Directory"
echo "10. Exit"
echo "Enter Your Choice: "
read choice

case $choice in

1)
echo "Enter Name to Create User Directory: "
read uname
cd
if [ -f $uname ]
then
echo "Directory Already Exixts"

else
cd
mkdir $uname
echo "Directory Successfully Created"
fi;;

2)
echo "Enter the Name of User Directory in which you wish to Create new Directory: "
read uname1
cd
cd $uname1
echo "Enter the Name of Directory: "
read uname2
if [ -f $uname2 ]
then
echo "Directory Already Exists"

else
mkdir $uname2
cd $uname2
echo "Directory Successfully Created"
fi;;

3)
pwd;;

4)
echo "Enter the Name of User Directory to Access: "
read userdir1
cd
cd $userdir1
echo "Enter the Name of Directory: "
read direc
cd $direc
ls -l;;

5)
echo "Enter File Name: "
read fname
if [ -f $fname ]
then
echo "File Already Exists"

else
touch $fname
echo "File successfully created"
fi;;

6)
echo "Enter File Name: "
read sname
if [ -f $sname ]
then
echo "File Exists"

else
echo "No Such File Exists"
fi;;

7)
echo "Enter the File to be Deleted: "
read dname1
if [ -f $dname1 ]
then
rm $dname1
echo "File Successfully Deleted"

else
echo "No Such File Exists"
fi;;

8)
echo "Enter the File Name to be Renamed: "
read old_fname
echo "Enter the New File Name"
read new_fname
mv $old_fname $new_fname ;;

9)
echo "Go to 1.User Directory OR 2.Directory inside an User Directory"
read ch
if [ $ch = "1" ]
then
echo "Enter the Name of the User Directory: "
read name1
cd
cd $name1
ls

else
echo "Enter the Name of the User Directory: "
read name1
echo "Enter the Name of Directory inside of the mentioned User Directory"
read name2
cd
cd $name1
cd $name2
ls
fi;;

10)
i="n";;

esac
done
