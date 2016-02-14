FROM qnib/java8

ENV CRX_VER=0.1.1
RUN curl -fsL https://github.com/ChronixDB/chronix.server/releases/download/v${CRX_VER}/chronix-${CRX_VER}.zip |bsdtar xf - -C /opt/ && \
    mkdir -p /opt/chronix-ts/ && \
    cd /opt/chronix-ts/ && \
    wget -qO /opt/chronix-ts/chronix-timeseries-exploration.jar https://github.com/ChronixDB/chronix.examples/releases/download/v${CRX_VER}/chronix-timeseries-exploration-${CRX_VER}.jar
