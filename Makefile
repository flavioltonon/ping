check:
	@echo "# Checking for suspicious, abnormal, or useless code..."
	@go vet ./...

install:
	@echo "# Installing dependencies..."
	@go mod tidy

tidy:
	@echo "# Formatting code..."
	@go fmt ./...