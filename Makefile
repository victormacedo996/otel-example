 help:           ## Show this help.
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'


install-otel-operator: ## Intstall OTEL operator
	@kubectl apply -f ./manifests/otel/opentelemetry-operator.yaml