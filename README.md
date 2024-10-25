# Ninety-Nine Haskell Problems

Learning haskell by solving famous ninety-nine problems series, which are inspired by [Ninety-Nine Lisp Problems](https://www.ic.unicamp.br/~meidanis/courses/mc336/problemas-lisp/L-99_Ninety-Nine_Lisp_Problems.html), which in turn was based on Prolog problem list by Werner Hett.

## Usage

### Tests

To run all tests:

```shell
$ make tests
```

To run tests for a specific problem:

```shell
$ make test PATTERN=p01
```

### Running interactively

To run code for a problem interactively:

```shell
$ cabal repl
...
Prelude> :l Problems.P01
```

## Reference

https://wiki.haskell.org/H-99:_Ninety-Nine_Haskell_Problems
