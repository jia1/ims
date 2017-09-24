#!/bin/bash

if [ $# -lt 4 ]; then
    echo "$0 modelDir testFile savePath index.sense"
    exit
fi

bdir=/home/limjiayee/ims_0.9.2
ldir=$bdir/lib

modelDir=$1
testFile=$2
savePath=$3
senseIndex=$4

CLASSPATH=$ldir/*:$bdir/ims.jar
# mkdir -p $savePath

export LANG=en_US

JAVA_HOME=/home/limjiayee/jdk1.8.0_131/bin
$JAVA_HOME/java -mx2500m -cp $CLASSPATH sg.edu.nus.comp.nlp.ims.implement.CTester \
    -ptm $ldir/tag.bin.gz \
    -tagdict $ldir/tagdict.txt \
    -ssm $ldir/EnglishSD.bin.gz \
    -prop $ldir/prop.xml \
    -c sg.edu.nus.comp.nlp.ims.corpus.CAllWordsCoarseTaskCorpus \
    -r sg.edu.nus.comp.nlp.ims.io.CAllWordsResultWriter \
    -is $senseIndex \
    $testFile $modelDir $modelDir $savePath \
    -e sg.edu.nus.comp.nlp.ims.classifiers.CLibLinearEvaluator \
    -f sg.edu.nus.comp.nlp.ims.feature.CAllWordsFeatureExtractorCombination

