FROM mesosphere/mesos-master:1.7.0

COPY wait-for-it.sh /usr/bin/
CMD ["--registry=in_memory"]
ENTRYPOINT ["/usr/bin/wait-for-it.sh","zookeeper:2181", "--", "mesos-master"]
