VERSION ?= 0.1.0
PACKAGE := vanahub-test-addon-$(VERSION).zip

.PHONY: package

package:
	mkdir -p dist
	rm -f "dist/$(PACKAGE)"
	cd addon && zip -X -r "../dist/$(PACKAGE)" vanahub-test-addon
	shasum -a 256 "dist/$(PACKAGE)"
	wc -c < "dist/$(PACKAGE)"

