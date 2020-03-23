line_count: title makedate
	@echo "The number of lines of this code is" $$(wc -l < guessinggame.sh)

title: 
	@echo "Project Title: guessinggame"
	
makedate:
	@echo "The date and time at which make was run: \n" $$(date)
	
	
README:
	$(MAKE) > README.md

	
