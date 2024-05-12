FROM jupyter/pyspark-notebook:spark-3.4.1

USER root

RUN rm /usr/local/spark/jars/guava-14.0.1.jar
RUN cd /usr/local/spark/jars && wget https://repo1.maven.org/maven2/com/google/guava/guava/30.1.1-jre/guava-30.1.1-jre.jar && wget https://repo1.maven.org/maven2/org/apache/hadoop/hadoop-aws/3.3.0/hadoop-aws-3.3.0.jar && wget https://repo1.maven.org/maven2/com/amazonaws/aws-java-sdk-bundle/1.11.563/aws-java-sdk-bundle-1.11.563.jar

COPY ./spark-defaults.conf /usr/local/spark/conf

USER jovyan