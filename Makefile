build:
	docker build -t berney/sqlmap --rm .

run:
	docker run -it --rm -v sqlmap-data:/work berney/sqlmap -s /work/session.sqlite

run-tmp:
	docker run -it --rm -v sqlmap-data:/work berney/sqlmap
