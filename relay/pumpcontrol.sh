#!/bin/bash
argmsg="Invalid arguments, you must supply either -o / 'override' to override pump control or -d / default to return to defaults."
if [ ! $# -eq 1 ]
then
	echo $argmsg
else 
	case $1 in
		"override")
	      echo 1 > /mnt/ramdisk/tempoverride
		  ;;
		"-o")
		  echo 1 > /mnt/ramdisk/tempoverride
		  ;;
		"o")
		  echo 1 > /mnt/ramdisk/tempoverride
		  ;;
        "-d")
		  rm /mnt/ramdisk/tempoverride > /dev/null 2>&1
		  ;;
        "d")
		  rm /mnt/ramdisk/tempoverride > /dev/null 2>&1
		  ;;
	  "default")
		  rm /mnt/ramdisk/tempoverride > /dev/null 2>&1
		  ;;
	    *)
		  echo $argmsg
		  ;;
	esac
fi
