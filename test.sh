echo $HOME
echo $USER
echo $(who -m)
echo $(eval echo "~$(who -m | awk '{ print $1 }')")
echo $(eval echo "~")
