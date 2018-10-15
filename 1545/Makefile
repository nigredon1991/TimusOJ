PWD = $(shell pwd)
TARGET1 = 1545.c
#DEBUG = '-g'

#obj-m	:= $(TARGET1).o

PARAM = -static -fno-strict-aliasing -DONLINE_JUDGE -lm -s -std=c11 -W -O2

default:
	#$(MAKE) $(TARGET1) -o exe
	gcc $(DEBUG) $(PARAM) $(TARGET1) 
	./out < input

clean:
	@rm -f *.o .*.cmd .*.flags *.mod.c *.order
	@rm -f .*.*.cmd *~ *.*~ TODO.*
	@rm -fR .tmp*
	@rm -rf .tmp_versions

disclean: clean
	@rm *.ko *.symvers
