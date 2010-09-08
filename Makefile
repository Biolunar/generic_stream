PREFIX = /usr/local

all: install

install:
	@echo Installing header files to ${PREFIX}/include
	@mkdir -p ${PREFIX}/include
	@cp -f generic_extractor.hpp generic_inserter.hpp ${PREFIX}/include
	@echo Done.

uninstall:
	@echo Uninstalling header files from ${PREFIX}/include
	@rm -f ${PREFIX}/include/generic_extractor.hpp ${PREFIX}/include/generic_inserter.hpp
	@echo Done.

.PHONY: all install uninstall
