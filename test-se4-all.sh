# nohup time ./testCoarse.bash ../models-acl2010 ../se4-coarse/eng-coarse-all-words.xml ../results/se4-all-coarse-again.result ../WordNet-1.7.1/dict/index.sense &> nohup-test-se4-all-coarse.out &
# nohup time ./testFine.bash ../models-acl2010 ../se4/2-all-words/fine/test/english-all-words.test.xml ../se4/2-all-words/fine/test/zhong-zhi-file/se4.lexelt ../results/se4-all-fine-again.result ../WordNet-1.7.1/dict/index.sense &> nohup-test-se4-all-fine.out &

# nohup time ./testCoarse.bash ../models-omsti ../se4-coarse/eng-coarse-all-words.xml ../results/se4-all-coarse-omsti.result ../WordNet-1.7.1/dict/index.sense &> nohup-test-omsti-se4-all-coarse.out &
# nohup time ./testFine.bash ../models-omsti ../se4/2-all-words/fine/test/english-all-words.test.xml ../se4/2-all-words/fine/test/zhong-zhi-file/se4.lexelt ../results/se4-all-fine-omsti.result ../WordNet-1.7.1/dict/index.sense &> nohup-test-omsti-se4-all-fine.out &

# nohup time ./testCoarse.bash ../models-MUN-SC-wn30 ../se4-coarse/eng-coarse-all-words.xml ../results/se4-all-coarse-omsti-pre.result ../WordNet-1.7.1/dict/index.sense &> nohup-test-omsti-pre-se4-all-coarse.out &
nohup time ./testFine.bash ../models-MUN-SC-wn30 ../se4/2-all-words/fine/test/english-all-words.test.xml ../se4/2-all-words/fine/test/zhong-zhi-file/se4.lexelt ../results/se4-all-fine-omsti-pre.result ../WordNet-1.7.1/dict/index.sense &> nohup-test-omsti-pre-se4-all-fine.out &
