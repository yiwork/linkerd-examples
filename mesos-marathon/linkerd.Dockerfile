ARG  CODE_VERSION=1.6.3
FROM buoyantio/linkerd:$(CODE_VERSION)

ARG CODE_VERSION    # import the variable defined above, again. 
COPY linkerd-config.yml /linkerd-config.yml

CMD exec /io.buoyant/linkerd/$CODE_VERSION/bundle-exec -log.level=DEBUG /linkerd-config.yml
