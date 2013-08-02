NAME := node
VERSION := 0.2.0
ID := 4674

love:
	@echo "Feel like makin' love."

autotest:
	@bundle exec guard start --no-interactions

pack:
	rm -rf "$(NAME)-$(VERSION).zip" 
	zip -r "$(NAME)-$(VERSION).zip" * -x Makefile -x "*.zip" -x "./test/*"

publish:
	open "http://www.vim.org/scripts/add_script_version.php?script_id=$(ID)"

tag:
	git tag "v$(VERSION)"
	
.PHONY: love autotest pack publish tag
