DOTS       := $(wildcard .??*)
EXCLUSIONS := .DS_Store .git .github .gitignore
DOTFILES   := $(filter-out $(EXCLUSIONS), $(DOTS))
DEST       := $(HOME)
DESTS      := $(addprefix $(DEST)/, $(DOTFILES))

.PHONY: list install

list:
	@ls -1 $(DOTFILES)

install: $(DESTS)

$(DEST)/%: %
	@ln -fnsv $(abspath $<) $@
