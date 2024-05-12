FROM apache/kyuubi:master-snapshot

RUN cd /opt/kyuubi/externals/spark-3.5.1-bin-hadoop3/jars \
    && wget https://repo1.maven.org/maven2/org/apache/hadoop/hadoop-aws/3.3.4/hadoop-aws-3.3.4.jar \
    && wget https://repo1.maven.org/maven2/org/apache/iceberg/iceberg-spark-runtime-3.5_2.12/1.4.3/iceberg-spark-runtime-3.5_2.12-1.4.3.jar \
    && wget https://repo1.maven.org/maven2/com/amazonaws/aws-java-sdk-bundle/1.12.262/aws-java-sdk-bundle-1.12.262.jar \
    && wget https://repo1.maven.org/maven2/org/apache/hadoop/hadoop-common/3.3.4/hadoop-common-3.3.4.jar \
    && wget https://repo1.maven.org/maven2/org/apache/kyuubi/kyuubi-spark-authz_2.12/1.9.0/kyuubi-spark-authz_2.12-1.9.0.jar \
    && wget https://repo1.maven.org/maven2/org/apache/ranger/ranger-plugins-common/2.4.0/ranger-plugins-common-2.4.0.jar \
    && wget https://repo1.maven.org/maven2/org/apache/ranger/ranger-plugins-audit/2.4.0/ranger-plugins-audit-2.4.0.jar \
    && wget https://repo1.maven.org/maven2/org/apache/kyuubi/kyuubi-util-scala_2.12/1.9.0/kyuubi-util-scala_2.12-1.9.0.jar \
    && wget https://repo1.maven.org/maven2/org/apache/kyuubi/kyuubi-util/1.9.0/kyuubi-util-1.9.0.jar \
    && wget https://repo1.maven.org/maven2/com/sun/jersey/jersey-client/1.19.4/jersey-client-1.19.4.jar \
    && wget https://repo1.maven.org/maven2/com/kstruct/gethostname4j/1.0.0/gethostname4j-1.0.0.jar \
    && wget https://repo1.maven.org/maven2/net/java/dev/jna/jna/5.7.0/jna-5.7.0.jar \
    && wget https://repo1.maven.org/maven2/com/sun/jersey/jersey-core/1.19.4/jersey-core-1.19.4.jar \
    && wget https://repo1.maven.org/maven2/org/codehaus/jackson/jackson-jaxrs/1.9.13/jackson-jaxrs-1.9.13.jar