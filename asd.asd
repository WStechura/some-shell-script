from netifaces import ifaddresses
import psutil

print(psutil.net_if_addrs())
print(ifaddresses([ x for x in psutil.net_if_addrs() if x != 'lo' ][0])[2][0]['addr'])
