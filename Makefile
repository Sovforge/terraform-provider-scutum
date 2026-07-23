default: build

.PHONY: build
build:
	go build ./...

.PHONY: install
install:
	go install .

.PHONY: test
test:
	go test -v -cover ./...

.PHONY: vet
vet:
	go vet ./...

.PHONY: docs
docs:
	go generate ./...

.PHONY: fmt
fmt:
	gofmt -s -w .
