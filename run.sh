#!/bin/sh

GITHUB=avalonkl
WS_DIR=Workspace
REPO=HW_27
VERSION=1.0
MAIN_CLASS=core.Input_Scanner

if ! which java >/dev/null 2>&1; then echo Java not installed; return; fi
if ! which mvn >/dev/null 2>&1; then echo Maven not installed; return; fi
if ! which git >/dev/null 2>&1; then echo Git not installed; return; fi

git clone https://github.com/$GITHUB/$REPO.git
cd ./$REPO

mvn package
echo "Executing Java programm............................................."
java -cp $HOME/$WS_DIR/$REPO/target/$REPO-$VERSION-jar-with-dependencies.jar $MAIN_CLASS
