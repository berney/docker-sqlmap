FROM alpine:3.5
MAINTAINER berney- https://github.com/berney

RUN apk --no-cache add python openssl git && \
	mkdir /opt && \
	cd /opt && \
	git clone https://github.com/sqlmapproject/sqlmap.git && \
	cd /opt/sqlmap && \
	chmod 755 /opt/sqlmap/sqlmap.py && \
	mkdir /work && \
	adduser -D -s /bin/ash user user && \
	chown -R user:user /work

USER user

VOLUME /work
WORKDIR /opt/sqlmap

ENTRYPOINT ["/opt/sqlmap/sqlmap.py"]

CMD ["--help"]
