FROM apache/hive:3.1.3

USER root

RUN apt-get update && apt-get install wget -y  && apt-get install gettext-base && rm -rf /var/lib/apt/lists/*

RUN cd /opt/hive/lib && wget https://repo1.maven.org/maven2/org/apache/hadoop/hadoop-aws/3.1.0/hadoop-aws-3.1.0.jar && \
    wget https://repo1.maven.org/maven2/com/amazonaws/aws-java-sdk-bundle/1.11.271/aws-java-sdk-bundle-1.11.271.jar

CMD envsubst < /opt/hive/conf/hive-site-env.xml > /opt/hive/conf/hive-site.xml