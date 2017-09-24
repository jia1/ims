#!/bin/bash

if [ $# -lt 5 ]; then
  echo "$0 modelDir testFile lexeltFile savePath index.sense"
  exit
fi

bdir=/home/limjiayee/ims_0.9.2
ldir=$bdir/lib

modelDir=$1
testFile=$2
lexeltFile=$3
savePath=$4
senseIndex=$5

CLASSPATH=$ldir/*:$bdir/ims.jar
# mkdir -p $savePath

export LANG=en_US

JAVA_HOME=/home/limjiayee/jdk1.8.0_131/bin
$JAVA_HOME/java -mx2500m -cp $CLASSPATH sg.edu.nus.comp.nlp.ims.implement.CTester \
    -ptm $ldir/tag.bin.gz \
    -tagdict $ldir/tagdict.txt \
    -ssm $ldir/EnglishSD.bin.gz \
    -prop $ldir/prop.xml \
    -c sg.edu.nus.comp.nlp.ims.corpus.CAllWordsFineTaskCorpus \
    -r sg.edu.nus.comp.nlp.ims.io.CAllWordsResultWriter \
    -is $senseIndex $testFile $modelDir $modelDir $savePath \
    -f sg.edu.nus.comp.nlp.ims.feature.CAllWordsFeatureExtractorCombination \
    -e sg.edu.nus.comp.nlp.ims.classifiers.CLibLinearEvaluator \
    -lexelt $lexeltFile

