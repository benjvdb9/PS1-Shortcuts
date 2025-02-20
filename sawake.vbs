set wsc = CreateObject("WScript.Shell")

WScript.Echo "Test 0"
loopCount = 0

WScript.Echo "Test 1"
If WScript.Arguments.Count > 0 Then
    WScript.Echo "Test 2a"
    maxLoops = CInt(WScript.Arguments(0))
    Do While loopCount < maxLoops
        WScript.Echo "Test 3a"
        WScript.Sleep(60*1000)
        wsc.SendKeys("{NUMLOCK}")
        loopCount = loopCount + 1
    Loop
Else
    WScript.Echo "Test 2b"
    Do
        'one minute
        WScript.Echo "Test 3b"
        WScript.Sleep(60*1000)
        wsc.SendKeys("{NUMLOCK}")
    Loop
End If