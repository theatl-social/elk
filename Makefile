.PHONY: elk elk-push

BUILDVERSION ?= latest

elk:
	docker build --load --platform=linux/amd64 . -t theatl-social-elk-x86:$(BUILDVERSION)

elk-push:
	docker tag theatl-social-elk-x86:$(BUILDVERSION) mikehdev/theatl-social-elk-x86:$(BUILDVERSION)
	docker push mikehdev/theatl-social-elk-x86:$(BUILDVERSION)
