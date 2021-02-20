all:
	swift build -c release

install:
	ln -s ${PWD}/.build/release/sfsymbols /usr/local/bin/sfsymbols

clean:
	rm -rf .build

svg:
	sfsymbols --output symbols.svg --format svg --font-weight regular --symbol-size medium

iconset:
	sfsymbols --output symbols.icons --format iconset --font-weight thin --symbol-size large
