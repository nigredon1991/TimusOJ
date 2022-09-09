
```
sudo apt install gdb build-essential libc6-dbg
git clone https://github.com/scwuaptx/Pwngdb.git ~/Pwngdb
cp ~/Pwngdb/.gdbinit ~/
git clone https://github.com/longld/peda.git ~/peda
```


gcc basic.c -o basic -ggdb

$ gdb

heapinfo
vmmap
hexdump
