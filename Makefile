.PHONY:
build:
	@echo "Building..."
	@swift build

.PHONY:
release:
	@echo "Building for release..."
	@swift build -c release

.PHONY:
clean:
	@echo "Cleaning..."
	@swift package clean
	@rm -rf .build
