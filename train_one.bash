#!/bin/bash

if [ $# -lt 3 ]; then
    echo $0 train.xml train.key savedir s2 c2
    exit
fi
s2=0
if [ $# -gt 3 ]; then
    s2=$4
fi

c2=0
if [ $# -gt 4 ]; then
    c2=$5
fi

bdir=/home/limjiayee/ims_0.9.2
libdir=$bdir/lib
CP=$libdir/*:$bdir/ims.jar

export LANG=en_US

JAVA_HOME=/home/limjiayee/jdk1.8.0_131/bin
$JAVA_HOME/java -mx1900m -cp $CP sg.edu.nus.comp.nlp.ims.implement.CTrainModel \
    -prop $libdir/prop.xml \
    -ptm $libdir/tag.bin.gz \
    -tagdict $libdir/tagdict.txt \
    -ssm $libdir/EnglishSD.bin.gz $1 $2 $3 \
    -f sg.edu.nus.comp.nlp.ims.feature.CFeatureExtractorCombination \
    -s2 $s2 -c2 $c2 \
    -type directory

