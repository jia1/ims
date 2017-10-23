cp ../results/se2-lex/* ../results/se2-lex-proc
python proc-se3.py ../results/se2-lex-proc
python comb.py ../results/se2-lex-proc ../se2/1-lexical-sample/processed/test
./scorer.bash fin.result fin.key 2>&1 | tee score.out
cat score.out
