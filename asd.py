from netifaces import ifaddresses
import psutil

asd = ifaddresses([ x for x in psutil.net_if_addrs() if x != 'lo' ][0])[2][0]['addr']
print(asd)