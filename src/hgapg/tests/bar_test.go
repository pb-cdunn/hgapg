package tests

import "testing"
import "hgapg/foo"

func ExampleBar() {
	// 'go test' will actually verify the Output below!
	foo.Bar()
	// Output: hello, bar
}

func TestBar(*testing.T) {
	// could call something here
}
