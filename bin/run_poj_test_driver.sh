
#
#
# runs the poj test driver
#
#

BUILD_HOME=/Users/Albert/Documents/Development/build/LinuxShellBuild

cd $BUILD_HOME
pwd
echo " "
echo " "

export CLASSES_TEST_DRIVERS=$BUILD_HOME/out_test_drivers

export LIB_HOME=$BUILD_HOME/lib

export BIN_HOME=$BUILD_HOME/bin

echo " "
echo " "
java -version


java -classpath $LIB_HOME/linux_shell.jar:$CLASSES_TEST_DRIVERS  org.ajstark.TestDriver.PojTestDriver.TestDrive

