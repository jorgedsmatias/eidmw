QT4=`readlink -f \`which qmake\``
QT4PATH=${QT4%/*}
QT4PATH=${QT4PATH}/..
#JAVACPATH=`which javac 2> /dev/null`

# Try to dynamic get javac version
#JAVACPATH=`readlink -f \`which javac\`` 

JAVACPATH=/usr/lib/jvm/java-6-sun/bin/javac
JAVAC=`echo $JAVACPATH | wc -l`
if [[ $JAVAC -eq 1 ]]
then
	JAVAINCPATH=${JAVACPATH%/*}
	JAVAINCPATH=$JAVAINCPATH/../include
fi

[ -f /etc/os-release ] && . /etc/os-release

if [[ "x${ID}" == "x" ]]; then
	echo "Couldn't find the Debian distribution flavor" >&2
	exit 1
fi

case $ID in
	"debian")
		LIBDIR="/usr/lib/x86_64-linux-gnu"	# Assuming x86 64bit only
		;;
	"raspbian")
		LIBDIR="/usr/lib/arm-linux-gnueabihf/"  # Assuming just armhf (32bit) for now
		;;
	*)
		LIBDIR="/usr/lib"
		;;
esac
	
	

./configure --lib+=-L${QT4PATH}/lib/ --lib+=-L/usr/lib/arm-linux-gnueabihf/ --include+=${QT4PATH}/include/Qt --include+=${JAVAINCPATH} --include+=${JAVAINCPATH}/linux  BUILD_SDK=1
