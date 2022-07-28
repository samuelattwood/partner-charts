pull-scripts:
	./scripts/pull-scripts

TARGETS := prepare patch clean

$(TARGETS):
	@./scripts/pull-scripts
	@./bin/partner-charts-ci $@

charts:
	@./bin/partner-charts-ci stage

.PHONY: $(TARGETS) charts
