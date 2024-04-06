DOTS       := $(wildcard .??*)
EXCLUSIONS := .DS_Store .git .github .gitignore
DOTFILES   := $(filter-out $(EXCLUSIONS), $(DOTS))
DEST       := $(HOME)
DESTS      := $(addprefix $(DEST)/, $(DOTFILES))

.PHONY: list install

list:
	@ls -1 $(DOTFILES)

BUNDLE := $${HOME}/.bundle

install: $(DESTS)
	@mkdir -p $(BUNDLE)
	@ln -fnsv $(abspath bundle_config) $(BUNDLE)/config

$(DEST)/%: %
	@ln -fnsv $(abspath $<) $@
