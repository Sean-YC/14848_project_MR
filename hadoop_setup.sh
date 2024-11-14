git clone https://github.com/Sean-YC/14848_project_MR.git && \
                    echo 'Ready to get in project' && \
                    cd 14848_project_MR && \
                    echo 'Ready to put data into hdfs' && \
                    hadoop fs -put test_data.txt / && \
                    hadoop jar /usr/lib/hadoop/hadoop-streaming.jar -file mapper.py -mapper '/opt/conda/default/bin/python mapper.py' -file reducer.py -reducer '/opt/conda/default/bin/python reducer.py' -input /test_data.txt -output /output3 && \
                    hadoop fs -getmerge /output3 result2 && \
                    cat result2
