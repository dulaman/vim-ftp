HOST=$1
USER=$2
PASS=$3
LOCPATH=$4
MYPATH=$5
MYFILE=$6
METHOD=$7

MYFILE=`basename $MYFILE`

cd $LOCPATH$MYPATH
ftp -inv $HOST << EOF 
user $USER $PASS
cd $MYPATH
$METHOD $MYFILE
bye

EOF
