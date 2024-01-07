date_new=$(date)

echo "============================================="
echo "=                                           ="
echo "= start create folder and cut file today :D ="
echo "=      $date_new         ="
echo "=                                           ="
echo "============================================="


while true; do
	
	current_date=$(date +%Y-%m-%d)
	mk_folder="/mnt/c/Users/User/Desktop/scan/$current_date/"
	file_to_move="/mnt/c/Users/User/Desktop/scan/*.pdf"

	if [ ! -d "$mk_folder" ]; then
		mkdir -p "$mk_folder" 
		echo "Created folder : $mk_folder"
	else
		echo " :D Create folder $mk_folder is already existed"
	fi
	sleep 1
	if ls $file_to_move 1> /dev/null 2>&1; then
		mv $file_to_move "$mk_folder/"
		echo "Moved files to : $mk_folder"
	else
		echo " move file not found :("
	fi

	sleep 2
done
