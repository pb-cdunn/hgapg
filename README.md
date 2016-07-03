PacBio HGAP Go packages
=======================

GOPATH
------
For now, this package should be directly under src/ on a directory
in GOPATH, since we do not yet know where we will host this.

Then, `go install hgapg/mains/hello`

Tests
-----
To ensure that we test only the public API, we put tests into a separate
package, in the `tests/` directory.
