package foo

import "fmt"

import goraph "github.com/gyuho/goraph"

var _ = goraph.NewGraph()

func Bar() {
	fmt.Printf("hello, bar\n")
}
