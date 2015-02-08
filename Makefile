default: help

help:
	@echo 'Targets: doc help'

doc: ReadMe.pod

ReadMe.pod: doc/yaml-test.swim
	swim --to=pod --complete --wrap $< > $@

check-symlinks:
	find tag -type l | xargs ls -l
