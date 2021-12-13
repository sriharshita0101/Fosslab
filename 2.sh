echo "1 about your OS and version,release number, kernel version \n 2 show all available shells \n 3 show mouse settings \n 4 show computer CPU information like processor type,speed etc \n 5 show memory information \n 6 show hard disk information like size of hard_disk,cache memory,modeletc \n 7 file system("Mounted")"
echo "enter option"
read op
case $op in 
   1) echo "OS and version, release number, kernel version"
if [ -f/etc/os-release ]
then
echo "OS:"
cat /etc/os-release
fi
;;
2) echo "all available shells"
if [ -f/etc/shells ]
then
cat /etc/shells 
fi
;;
3) echo "mouse settings"
xinput -lists-props " PixArt USB Optical Mouse "
;;
4) echo "CPU information "
if [ -f/proc/cpuinfo ]
then
cat /proc/cpuinfo
fi
;;
5) echo "memory information"
if [ -f/proc/meminfo ]
then
cat /proc/meminfo 
fi
;;
6) echo "hard disk information"
echo "Driver:"
if [ -f/proc/driver/rtc ]
then
cat /proc/driver/rtc
fi
;;
7) echo "file system"
if [ -f/proc/mounts ]
then
cat /proc/mounts
fi
;;
*) echo "enter valid option only"
;;
esac
