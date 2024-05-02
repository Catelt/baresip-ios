#
# Makefile
#
# Copyright (C) 2010 - 2016 Alfred E. Heggestad
#


BUILD_DIR	:= build
CONTRIB_DIR	:= contrib

include mk/contrib.mk


all:	contrib


clean:
	@rm -rf $(BUILD_DIR) $(CONTRIB_DIR) \
	@rm -rf baresip rem re


.PHONY: download
download:
	rm -fr baresip re rem
	git clone https://github.com/Catelt/baresip.git -b v2.0.3 --single-branch
	git clone https://github.com/baresip/rem.git -b v2.0.1 --single-branch
	git clone https://github.com/baresip/re.git -b v2.2.2 --single-branch
