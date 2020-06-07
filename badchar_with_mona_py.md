## !mona config -set workingfolder c:\logs\%p
###  This tells Mona.py where to log all its output.

### Now we need to generate a byte array for comparison. In Immunity Debugger run the command

## !mona bytearray

### Now run the updated exploit. Take note of the memory address where the badchars string should begin on the stack : 00AFFD44.

### Now in Immunity Debugger run

## !mona compare -f C:\logs\bytearray.bin -a 00AFFD44


## !mona bytearray –cpb "\x00"


## !mona bytearray -cpb "\x00\x0a\x0d\x40"
