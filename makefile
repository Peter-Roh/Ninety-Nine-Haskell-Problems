.PHONY: tests, test

tests:
	cabal test --test-show-details=direct
test:
	cabal test --test-option=--pattern="$(PATTERN)" --test-show-details=direct
