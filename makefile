GOPATH=${CURDIR}
export GOPATH

default: check test run
run: build
	bin/hello
build:
	go install 'hgapg/mains/hello'
test:
	go vet -v -x 'hgapg/tests'
	go test -v 'hgapg/tests'
	#cd src/hgapg/tests; go test -v
	#go test -v './src/hgapg/...'
check:
	echo "GOPATH=${GOPATH}"
	golint 'hgapg/tests'
	goimports -e -w src/hgapg/
fetch:
	go get -d -u github.com/gyuho/goraph
	rm -rf src/vendor/
	mkdir src/vendor/
	mv src/github.com src/vendor/
	rm -rf src/vendor/github.com/gyuho/goraph/testdata/*.png
	find src/vendor/ -name '.git' |xargs rm -rf
glide: # does not work for us
	# glide init
	glide --verbose get -s github.com/gyuho/goraph
clean:
	rm -rf bin/ pkg/
