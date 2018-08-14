-include libpaper/Make.rules

.PHONY: setup
setup: 
	if ! [ -d libpaper ]; then git clone git@github.com:NVSL/libpaper.git ./libpaper; fi

