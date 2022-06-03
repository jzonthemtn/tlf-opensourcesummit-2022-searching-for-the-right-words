FROM apache/solr:9.0.0-SNAPSHOT

ADD model/model.onnx /opt/model.onnx
ADD model/vocab.txt /opt/vocab.txt

# This is required by Solr 9, but not in Solr 8!
RUN mkdir /var/solr/data
