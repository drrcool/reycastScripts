#!/usr/bin/python3
import sys, urllib.parse as ul

newval = ul.quote(sys.argv[1])
print(newval)