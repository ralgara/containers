NAME			= containers/k8s-client
K8S_VERSION		= 1.14.3
HELM_VERSION    = 2.11.0
TAG             = k$(K8S_VERSION)h$(HELM_VERSION)
COMMIT			= $$(git rev-parse HEAD)
IMAGE			= $(NAME):$(TAG)
SOURCE_BRANCH	= $$(git rev-parse --abbrev-ref HEAD)
SOURCE_COMMIT	= $$(git rev-parse HEAD)
SOURCE_REPO		= $$(git config --get remote.origin.url)
SOURCE_FILE		= $$(git ls-files --full-name Dockerfile)
GIT_STATUS		= $$(if [ -z "$(git status --porcelain)" ]; then echo clean; else echo dirty; fi)
BUILD_DATE		= $$(date -u +"%Y-%m-%dT%H:%M:%SZ")


build:
	$(eval BUILD_DATE := $(shell date -u +%F))
	@echo "## Building image $(IMAGE) ... "
	@docker build . \
		-t $(IMAGE) \
		--label SOURCE_BRANCH=$(SOURCE_BRANCH) \
		--label SOURCE_COMMIT=$(SOURCE_COMMIT) \
		--label SOURCE_REPO=$(SOURCE_REPO) \
		--label SOURCE_FILE=$(SOURCE_FILE) \
		--label GIT_STATUS=$(GIT_STATUS) \
		--label BUILD_DATE=$(BUILD_DATE) \
		--build-arg K8S_VERSION=$(K8S_VERSION) \
		--build-arg HELM_VERSION=$(HELM_VERSION)


