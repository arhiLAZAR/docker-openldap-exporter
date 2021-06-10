FROM ubuntu:18.04

ARG OPENLDAP_EXPORTER_VERSION=v2.1.3
ADD https://github.com/tomcz/openldap_exporter/releases/download/${OPENLDAP_EXPORTER_VERSION}/openldap_exporter-linux /usr/local/bin/openldap-exporter

RUN chmod +x /usr/local/bin/openldap-exporter

ENTRYPOINT [ "/usr/local/bin/openldap-exporter" ]
