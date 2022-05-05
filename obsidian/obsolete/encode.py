import urllib.parse as ul
import sys

output = ul.quote(sys.argv[1])
print(output)