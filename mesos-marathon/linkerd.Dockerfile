ARG  CODE_VERSION=1.6.3
FROM buoyantio/linkerd:${CODE_VERSION}

COPY linkerd-config.yml /linkerd-config.yml

# frm docker history the entrypoint from upstream docker image 
#   seems to be ENTRYPOINT ["/io.buoyant/linkerd/1.6.3/bundle-exec"]
# so building the full command by attaching log.level and the config file location
CMD ["-log.level=DEBUG", "/linkerd-config.yml"]
