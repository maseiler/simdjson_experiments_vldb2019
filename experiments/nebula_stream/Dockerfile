FROM gcc:9.1
COPY . /usr/src/
WORKDIR /usr/src/experiments/nebula_stream
RUN ./build.sh
CMD ["bash", "run.sh"]
