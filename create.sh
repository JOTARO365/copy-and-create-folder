date_new=$(date)

echo "============================================="
echo "=                                           ="
echo "= start create folder and cut file today :D ="
echo "=      $date_new         ="
echo "=                                           ="
echo "============================================="


while true; do
	
	current_date=$(date +%d-%m-%Y)
	mk_folder="/mnt/c/Users/User/Desktop/scan/$current_date/"
	file_to_move="/mnt/c/Users/User/Desktop/scan/*.pdf"

	if [ ! -d "$mk_folder" ]; then
		mkdir -p "$mk_folder" 
		echo "Created folder : $mk_folder"
	else
		echo "Create folder $mk_folder is success !!!"
	fi
	sleep 1
	if ls $file_to_move 1> /dev/null 2>&1; then
		mv $file_to_move "$mk_folder/"
		echo "Moved files to : $mk_folder"
	else
		echo " No file Waiting to be created PDF files :D"
	fi

	sleep 1
done
