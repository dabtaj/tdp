@echo off
echo RUNNING PING SO RDP CANT DIE...
:thisone
ping 127.0.0.1 > null
cls
echo PINGED !!
goto thisone
