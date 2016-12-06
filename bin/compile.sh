
#
#
#  used to build the Linux Shell out side of the intellij
#
#

BUILD_HOME=/Users/Albert/Documents/Development/build/LinuxShellBuild

cd $BUILD_HOME
pwd
echo " "
echo " "

export SRC_HOME=$BUILD_HOME/src
export SRC_INPUT_OUTPUT=$SRC_HOME/org/ajstark/LinuxShell/InputOutput
export SRC_CMD_INFRA=$SRC_HOME/org/ajstark/LinuxShell/CommandInfrastructure
export SRC_CMD=$SRC_HOME/org/ajstark/LinuxShell/Command
export SRC_SHELL=$SRC_HOME/org/ajstark/LinuxShell/Shell
export SRC_TEST=$SRC_HOME/org/ajstark/TestDriver/PojTestDriver

export CLASSES_HOME=$BUILD_HOME/out
export CLASSES_INPUT_OUTPUT=$CLASSES_HOME/org/ajstark/LinuxShell/InputOutput/*.class
export CLASSES_CMD_INFRA=$CLASSES_HOME/org/ajstark/LinuxShell/CommandInfrastructure/*.class
export CLASSES_CMD=$CLASSES_HOME/org/ajstark/LinuxShell/Command/*.class
export CLASSES_SHELL=$CLASSES_HOME/org/ajstark/LinuxShell/Shell/*.class

export CLASSES_TEST_DRIVERS=$BUILD_HOME/out_test_drivers

export LIB_HOME=$BUILD_HOME/lib

export BIN_HOME=$BUILD_HOME/bin


echo " "
echo " "
cd $CLASSES_HOME
pwd
echo "Deleting all package class files"
rm -Rf org

echo " "
echo " "
cd $CLASSES_TEST_DRIVERS
pwd
echo "Deleting all test driver class files"
rm -Rf org

echo " "
echo " "
cd $LIB_HOME
pwd
echo "Deleting all jar, ear, war files"
rm -Rf *.jar *.ear *.war

echo " "
echo " "
cd $BIN_HOME
pwd
ls -ld *

echo " "
echo " "
javac -version


echo " "
echo " "
echo "Compiling InputOutput package"
javac  -d $CLASSES_HOME  -classpath $CLASSES_HOME  $SRC_INPUT_OUTPUT/*.java

echo " "
echo " "
echo "Compiling CommandInfrastructure package"
javac  -d $CLASSES_HOME  -classpath $CLASSES_HOME  $SRC_CMD_INFRA/*.java

echo " "
echo " "
echo "Compiling Command package"
javac  -d $CLASSES_HOME  -classpath $CLASSES_HOME  $SRC_CMD/*.java

echo " "
echo " "
echo "Compiling Shell package"
javac  -d $CLASSES_HOME  -classpath $CLASSES_HOME  $SRC_SHELL/*.java

echo " "
echo " "
echo "Jaring LinuxShell"
cd $CLASSES_HOME
jar cf $LIB_HOME/linux_shell.jar  *
jar iv $LIB_HOME/linux_shell.jar


echo " "
echo " "
cd $BIN_HOME
pwd
echo "Compiling POJ Test Drivere"
javac  -d $CLASSES_TEST_DRIVERS  -classpath $LIB_HOME/linux_shell.jar  $SRC_TEST/*.java

