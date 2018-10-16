PWD = $(shell pwd)
TARGET1 = 1563.c
DEBUG = '-g'

#obj-m	:= $(TARGET1).o

default:
	#$(MAKE) $(TARGET1) -o exe
	gcc $(DEBUG) $(TARGET1) -o out
	./out < input

clean:
	@rm -f *.o .*.cmd .*.flags *.mod.c *.order
	@rm -f .*.*.cmd *~ *.*~ TODO.*
	@rm -fR .tmp*
	@rm -rf .tmp_versions

disclean: clean
	@rm *.ko *.symvers
