PREFIX=~/.local

all:
	@echo "run \"make install\" to install or just run \"./qc\" to run :)"
install:
	cp ./qc $(PREFIX)/bin/
