; @ ZArch with Sp. Att. sip on "5" --> approx. every 15 minutes
; Based on ZFisher

F9::
Toggle := !Toggle
rsClientID = 

Send, , Started , ,
loop
{
    If not Toggle
        break

    Random, , NewSeed

    ;Send, , Started , ,

    Random,miniR, 1040,3269
    Random,shortR, 3104,5216
    Random,archR, 125438,146402 

    Random, , NewSeed

    Sleep, % ran(3104,5216)
    ; -- it 1
    ;WinActivate, ahk_id %rsClientID%
    ControlSend, , {Space} , ahk_id %rsClientID%
    Sleep, % ran(125438,146402)


    Sleep, % ran(3104,5216)
    ; -- it 2
    ;WinActivate, ahk_id %rsClientID%
    ControlSend, , {Space} , ahk_id %rsClientID%
    Sleep, % ran(125438,146402)
    
    Sleep, % ran(3104,5216)
    ; -- it 3
    ;WinActivate, ahk_id %rsClientID%
    ControlSend, , {Space} , ahk_id %rsClientID%
    Sleep, % ran(125438,146402)

    Sleep, % ran(3104,5216)
    ; -- it 4
    ;WinActivate, ahk_id %rsClientID%
    ControlSend, , {Space} , ahk_id %rsClientID%
    Sleep, % ran(125438,146402)

    Sleep, % ran(3104,5216)
    ; -- it 5
    ;WinActivate, ahk_id %rsClientID%
    ControlSend, , {Space} , ahk_id %rsClientID%
    Sleep, % ran(125438,146402)

    Sleep, % ran(3104,5216)
    ;WinActivate, ahk_id %rsClientID%
    ControlSend, , {Space} , ahk_id %rsClientID%
    Sleep, % ran(125438,146402)

    Sleep, % ran(3104,5216)
    ; -- it 7 -- sip
    ;WinActivate, ahk_id %rsClientID%
    ControlSend, , {Space} , ahk_id %rsClientID%
    Sleep, % ran(3104,5216)
    ControlSend, , 5 , ahk_id %rsClientID%
    Sleep, % ran(125438,146402)


} 
return