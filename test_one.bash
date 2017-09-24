#!/bin/bash

if [ $# -lt 3 ]; then
    echo "$0 modeldir testfile savedir index.sense(option)"
    exit
fi

bdir=/home/limjiayee/ims_0.9.2
libdir=$bdir/lib
CP=$libdir/*:$bdir/ims.jar

modeldir=$1
testfile=$2
savedir=$3

JAVA_HOME=/home/limjiayee/jdk1.8.0_131/bin
export LANG=en_US

if [ $# -ge 4 ]; then
    $JAVA_HOME/java -mx1900m -cp $CP sg.edu.nus.comp.nlp.ims.implement.CTester \
        -ptm $libdir/tag.bin.gz \
        -tagdict $libdir/tagdict.txt \
        -ssm $libdir/EnglishSD.bin.gz \
        -prop $libdir/prop.xml \
        -r sg.edu.nus.comp.nlp.ims.io.CResultWriter \
        $testfile $modeldir $modeldir $savedir \
        -is $4 \
        -f sg.edu.nus.comp.nlp.ims.feature.CFeatureExtractorCombination
else
    $JAVA_HONME/java -mx1900m -cp $CP sg.edu.nus.comp.nlp.ims.implement.CTester \
        -ptm $libdir/tag.bin.gz \
        -tagdict $libdir/tagdict.txt \
        -ssm $libdir/EnglishSD.bin.gz \
        -prop $libdir/prop.xml \
        -r sg.edu.nus.comp.nlp.ims.io.CResultWriter \
        $testfile $modeldir $modeldir $savedir \
        -f sg.edu.nus.comp.nlp.ims.feature.CFeatureExtractorCombination \
        # -type directory
fi

