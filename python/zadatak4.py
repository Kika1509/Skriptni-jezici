import urllib.request
import re
import sys


address = sys.argv[1]
site = urllib.request.urlopen(adresa)
site = site.read()
site = site.decode("utf8")

links = re.findall('href="[^"]+"', site)

print("Linkovi:")

for i in range(len(links)):
    links[i] = links[i].replace("href=", "")
    links[i] = links[i][1:-1]
    print("**", links[i])

hosts = {}

for link in links:
    if "http://" in link:
        host = link.replace("http://", "")
        host = host.replace("www.", "")
        host = host.split("/")
        if host in hosts.keys():
            hosts[host] += 1
        else:
            hostovi[host] = 1

print("\nHostovi:")

for line in hosts.keys():
    print("**", line, "se ponavlja", hosts[line], "puta")

print("\nE-MAIL-ovi:")

email = re.findall(".+@+\..+", site)
for line in email:
    print("**", line)

print("\nSlike:")

picture = re.findall('<img[\s]+src="[^"]+"[^>]+>', site)
print("**", len(slike), "slika")


