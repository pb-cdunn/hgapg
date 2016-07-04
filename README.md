# PacBio HGAP Go packages

## GOPATH
This repo directory should be on the colon-separated GOPATH.
It is *not* meant for use with `go get`.

## Installation

    go install hgapg/mains/hello

## Tests
To ensure that we test only the public API, we put tests into a separate
package, in the `tests/` directory.
