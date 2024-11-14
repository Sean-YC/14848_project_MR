git clone https://github.com/jen1902/14848-project.git && \
                    echo 'Ready to get in project' && \
                    cd 14848_project_MR && \
                    echo 'Ready to put data into hdfs' && \
                    hadoop fs -put input_data.txt / && \
                    hadoop jar /usr/lib/hadoop/hadoop-streaming.jar -file mapper.py -mapper '/opt/conda/default/bin/python mapper.py' -file reducer.py -reducer '/opt/conda/default/bin/python reducer.py' -input /test_data.txt -output /output1 && \
                    hadoop fs -getmerge /output1 result && \
                    cat result