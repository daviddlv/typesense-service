FROM typesense/typesense:0.23.1
ENV TYPESENSE_API_PORT 8108
ENV TYPESENSE_API_KEY=gzxUsKlX69Yh47vY
ENV TYPESENSE_DATA_DIR=/data
EXPOSE 8108
RUN mkdir ${TYPESENSE_DATA_DIR}
VOLUME /data
HEALTHCHECK --interval=1m --timeout=30s --retries=3 CMD curl --fail http://localhost:8108/health || exit 1
