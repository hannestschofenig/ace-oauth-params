.PHONY: all

all: draft-ietf-ace-oauth-params.txt

draft-ietf-ace-oauth-params.txt: draft-ietf-ace-oauth-params.xml
	xml2rfc draft-ietf-ace-oauth-params.xml && \
	xml2rfc --html draft-ietf-ace-oauth-params.xml &&\
	git add draft-ietf-ace-oauth-params.* && \
	git commit && git push

.PHONY: clean
clean:
	-rm draft-ietf-ace-oauth-params.txt
