
#
#
#  used to build the Linux Shell out side of the intellij
#
#

BUILD_HOME=/Users/Albert/Documents/Development/build/LinuxShellBuild

cd $BUILD
pwd
echo " "
echo " "

export SRC_HOME=$BUILD_HOME/src
export SRC_INPUT_OUTPUT=$SRC_HOME/org/ajstark/LinuxShell/InputOutput
export SRC_CMD_INFRA=$SRC_HOME/org/ajstark/LinuxShell/CommandInfrastructure
export SRC_CMD=$SRC_HOME/org/ajstark/LinuxShell/Command
export SRC_SHELL=$SRC_HOME/org/ajstark/LinuxShell/Shell
export SRC_TEST=$SRC_HOME/org/ajstark/TestDriver/PojTestDriver

export OUT_HOME=$BUILD_HOME/out

export LIB_HOME=$BUILD_HOME/out

export BIN_HOME=$BUILD_HOME/bin


echo " "
echo " "
cd $OUT_HOME
pwd
echo "Deleting all class files"
rm -Rf org

echo " "
echo " "
cd $LIB_HOME
pwd
echo "Deleting all jar, ear, war files"
rm -Rf *.jar *.ear *.war

cd $BIN_HOME
pwd
ls -ld *
