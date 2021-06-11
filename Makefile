default: debug

image = atlas/analysisbase:22.2.27

debug:
	docker run --rm -ti \
		-v $(shell pwd):$(shell pwd) \
		-w $(shell pwd) \
		$(image)

build-docker:
	docker pull $(image)
	docker run --rm -ti \
		-v $(shell pwd):$(shell pwd) \
		-w $(shell pwd) \
		$(image) \
		/bin/bash -c 'bash build.sh'

tests-docker:
	docker pull $(image)
	docker run --rm -ti \
		-v $(shell pwd):$(shell pwd) \
		-w $(shell pwd) \
		$(image) \
		/bin/bash -c 'bash test_runner.sh'

ci-docker:
	docker pull $(image)
	docker run --rm -ti \
		-v $(shell pwd):$(shell pwd) \
		-w $(shell pwd) \
		$(image) \
		/bin/bash -c 'bash tests/ci.sh'

clean-artifacts:
	rm -rf build
	rm core
