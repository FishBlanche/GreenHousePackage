Set ws = CreateObject("Wscript.Shell") 
ws.run "cmd /c java -jar JavaPC.jar -open es 192.168.10.4:8002 @ -open es 192.168.10.3:8001 @ -open os 127.0.0.1:1300 @ -open ot 1:date > ./test.log",vbhide