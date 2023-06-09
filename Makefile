
dirs = $(shell ls -F | grep '/$$' | shuf)

.PHONY:
pull: $(dirs)

.PHONY: $(dirs)
$(dirs):
	+cd $@ && git pull
	@echo
	@echo
