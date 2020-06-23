#!/usr/bin/python
import socket
buffer=["A"]
count=100

while len(buffer) <= 30:
	buffer.append("A"*count)
	count=count+200
  for string in buffer:
  	print "Fuzzing with %s bytes" % len(string)
  	s = socket.socket (socket.AF_INET, socket.SOCK_STREAM)
  	s.connect(("192.168.1.120", 7001))
  	s.send('buffer')
  	s.close()
  
print "\nDone!"
  
