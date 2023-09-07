SP ?=10022
HP ?=10880
DATA ?= "$(shell pwd)/data"
help: ## Display this help screen
		@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'
start: ## run gogs
		nohup docker run --name=gogs_jenson --rm -p $(SP):22 -p $(HP):3000 -v $(DATA):/data   gogs/gogs > gogs.log 2>&1 &
stop: ## stop gogs
		@echo "$(shell docker ps | grep 'gogs/gogs' && docker stop gogs_jenson||echo 'gogs not found')"
test: ## test gogs
		@echo "ssh port SP=: $(SP)"
		@echo "host port HP=: $(HP)"
		@echo "data path: $(DATA)"
		@echo "docker run --name=gogs --rm -p $(SP):22 -p $(HP):3000 -v $(DATA):/data   gogs/gogs"
status: ## show status
		@RESULT="$(shell docker ps | grep 'gogs/gogs'||echo 'gogs not found')"; echo $$RESULT
