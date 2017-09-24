#!/bin/bash

if [ $# -lt 1 ]; then
    echo "$0 answerfile keyfile"
    exit
fi

bdir=/home/limjiayee/ims_0.9.2
libdir=$bdir/lib

testfile=$1
modeldir=$2
savedir=$3

CLASSPATH=$libdir/*:$bdir/ims.jar

export LANG=en_US

JAVA_HOME=/home/limjiayee/jdk1.8.0_131/bin
$JAVA_HOME/java -mx1900m -cp $CLASSPATH sg.edu.nus.comp.nlp.ims.util.CScorer $*

