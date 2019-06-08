FROM mesosphere/mesos-slave:1.7.0

COPY wait-for-it.sh /usr/bin/
RUN mkdir -p /run/systemd/system
ENTRYPOINT ["/usr/bin/wait-for-it.sh","mesos-master:5050", "--", "mesos-slave"]
