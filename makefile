GOPATH=${CURDIR}
export GOPATH

default: check
run: build
	bin/hello
build:
	go install 'hgapg/mains/hello'
check:
	echo "GOPATH=${GOPATH}"
	go vet -v -x 'hgapg/tests'
	golint 'hgapg/tests'
	goimports -e -w src/hgapg/
	go test -v 'hgapg/tests'
	#cd src/hgapg/tests; go test -v
	#go test -v './src/hgapg/...'
fetch-sans-glide:
	go get -d -u github.com/gyuho/goraph
	rm -rf src/hgapg/vendor/
	mkdir src/hgapg/vendor/
	mv src/github.com src/hgapg/vendor/
glide:
	# glide init
	glide --verbose get -s github.com/gyuho/goraph
