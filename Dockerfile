FROM qnib/java8:oracle

RUN yum install -y bsdtar
ENV CRX_VER=0.1
RUN curl -fsL https://github.com/ChronixDB/chronix.server/releases/download/v${CRX_VER}/chronix-${CRX_VER}.zip |bsdtar xf - -C /opt/ && \
    mkdir -p /opt/chronix-ts/ && \
    cd /opt/chronix-ts/ && \
    wget -q https://github.com/ChronixDB/chronix.examples/releases/download/v${CRX_VER}/chronix-timeseries-exploration.jar 
