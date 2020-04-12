FROM elasticsearch:7.6.2

RUN ["/bin/bash", "-c", "elasticsearch-plugin install --batch https://github.com/medcl/elasticsearch-analysis-ik/releases/download/v7.6.2/elasticsearch-analysis-ik-7.6.2.zip"]

ADD config/IKAnalyzer.cfg.xml /usr/share/elasticsearch/config/analysis-ik/