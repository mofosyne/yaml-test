default: help

help:
	@echo 'Targets: doc help'

doc: ReadMe.pod

ReadMe.pod: doc/yaml-test.swim
	swim --to=pod --complete --wrap $< > $@
