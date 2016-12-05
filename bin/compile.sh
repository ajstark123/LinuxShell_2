
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

export BIN_HOME=$BUILD_HOME/bin


echo " "
echo " "
echo $OUT_HOME
ls -ld $OUT_HOME
ls -ld $OUT_HOME/*


echo " "
echo " "
echo $BIN_HOME
ls -ld $BIN_HOME
ls -ld $BIN_HOME/*


echo " "
echo " "
echo $SRC_HOME
ls -ld $SRC_HOME
ls -ld $SRC_HOME/*


echo " "
echo " "
echo $SRC_INPUT_OUTPUT
ls -ld $SRC_INPUT_OUTPUT
ls -ld $SRC_INPUT_OUTPUT/*


echo " "
echo " "
echo $SRC_CMD_INFRA
ls -ld $SRC_CMD_INFRA
ls -ld $SRC_CMD_INFRA/*


echo " "
echo " "
echo $SRC_CMD
ls -ld $SRC_CMD
ls -ld $SRC_CMD/*


echo " "
echo " "
echo $SRC_SHELL
ls -ld $SRC_SHELL
ls -ld $SRC_SHELL/*


echo " "
echo " "
echo $SRC_TEST
ls -ld $SRC_TEST
ls -ld $SRC_TEST/*

