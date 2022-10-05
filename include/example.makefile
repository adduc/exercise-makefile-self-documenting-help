REQUIRE = $(shell echo '$*' | tr '[:lower:]' '[:upper:]')

##: ## Set VERBOSE=1 to echo commands while running

help: ## List targets & descriptions
	cat $(MAKEFILE_LIST) | grep -E '^[#a-zA-Z0-9_/-]+:.*?## .*$$' | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' | sort

ifndef VERBOSE
.SILENT:
endif