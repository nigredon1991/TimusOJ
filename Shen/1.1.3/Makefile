PWD = $(shell pwd)
TARGET1 = main.c
DEBUG = '-g'
SHELL = /bin/sh

#obj-m	:= $(TARGET1).o

default:
	#$(MAKE) $(TARGET1) -o exe
	gcc $(DEBUG) $(TARGET1) -o out

clean:
	@rm -f *.o .*.cmd .*.flags *.mod.c *.order
	@rm -f .*.*.cmd *~ *.*~ TODO.*
	@rm -fR .tmp*
	@rm -rf .tmp_versions

disclean: clean
	@rm *.ko *.symvers

test:
	for i in 1 2; do \
		sed -n "/#$$i/{s/#$$i \(.*\)/\1/p}" input | ./out > temp ; \
		sed -n "/#$$i/{s/#$$i \(.*\)/\1/p}" exp> exp_$$i ; \
		diff temp exp_$$i && echo "test $$i OK" || echo "test $$i FAILED"  ; \
	done 
