#!/bin/bash

IMS_DIR=$(pwd)
LIB_DIR=$IMS_DIR/lib

JAVA_HOME=$HOME/jdk1.8.0_131/bin
CLASSPATH=$LIB_DIR/*:$IMS_DIR/ims.jar

export LANG=en_US

nohup time \
    $JAVA_HOME/java -Xmx30G -cp $CLASSPATH \
        sg.edu.nus.comp.nlp.ims.classifiers.GravesLSTMCharModellingExample \
> nohup-blstm.out 2>&1 &

