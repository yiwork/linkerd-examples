ARG  CODE_VERSION=1.6.3
FROM buoyantio/linkerd:${CODE_VERSION}

# import the variable defined above, again.
ARG CODE_VERSION
ENV LINKERD_VERSION=${CODE_VERSION}


COPY linkerd-config.yml /linkerd-config.yml

CMD exec /io.buoyant/linkerd/${LINKERD_VERSION}/bundle-exec -log.level=DEBUG /linkerd-config.yml
