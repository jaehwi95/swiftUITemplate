clean:
	rm -rf **/**/*.xcodeproj
	rm -rf **/**/Derived
	rm -rf **/**/**/*.xcodeproj
	rm -rf **/**/**/Derived
	rm -rf *.xcworkspace

generate:
	tuist install
	tuist generate

project:
	make clean
	make generate