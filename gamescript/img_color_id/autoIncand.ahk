#include mouse\bezier.ahk
#include mouse\wind.ahk
#include mouse\mouse.ahk

; Farming incand energy rs3
; REQUIREMENTS:
; Set in-game Graphics to 'MIN' preset, set Draw Distance to 'HIGH'
; Begin at the incand colony, press UP arrow key for birds-eye view of surroundings
; Zoom out as much as possible
;   - Zoom back in slightly to improve precision
; F1 to start script, F2 to close script

global onWisp := 0
global needsDeposit := 0
global timeout := 0
global muspah := 1                      ; MUSPAH SETTING: 0 = no muspah, 1 = muspah use,   Muspah pouch bound to '5' key, Super restore bound to {4} (for resummon)
SetTimer, Shutoff, 43200000             ; Default run timer - approx. 12 hours

; Script start, assumes above setup steps are completed
F1::
    SetTimer, task , 1000
    if (muspah = 1) {
        setTimer, muspah , 4680000      ; Assumes summ. totem for extended duration, otherwise use 3780000
        ControlSend, ,{5}, RSClient     ; Initial summoning of muspah
    }
    return


; Exits the script:
F2::
    ExitApp
    return


Shutoff:
    ExitApp
    return


muspah:
    ControlSend, ,{space}, RSClient     ; Closes any chat interface (i.e. full invent)
    Sleep, % ran(1320,1590)
    ControlSend, ,{4}, RSClient         ; Sip super restore
    Sleep, % ran(1320,1590)
    ControlSend, ,{5}, RSClient         ; Resummon with a new pouch
    return


task:
    if (onWisp = 1 && needsDeposit = 0) {
        ImageSearch, Ax, Ay, 0, 0, 3000, 3000, *40 divicon.png
            if (ErrorLevel) {
                onWisp = 0
                return
            } else {
            }
    }
    ImageSearch, Ax, Ay, 0, 0, 3000, 3000, *40 fullbackpack.png         ; TODO : Need full bp img
        if (ErrorLevel) { ; TODO : sort out ErrorLevel handling
        } else {
            needsDeposit = 1
        }
        if (needsDeposit = 1) {
            deposit()
            onWisp = 0
        }
        if (onWisp = 0 && needsDeposit = 0) {
            searchForWisp()
        }
        doAntiban := ran(1, 8)
        if (doAntiban = 8) {
            antiban(ran(100,1700),ran(100,1300))
        }
    return

searchForWisp() {
    while(onWisp = 0) {
        PixelSearch, Px, Py, 0, 0, A_ScreenWidth, A_ScreenHeight, 0x6605CA, 10, RGB, Fast   ; Search for the wisp here
            if (ErrorLevel) {
                Send {Right down}
                Sleep, % ran(320,590)
                Send {Right up}
                Sleep, % ran(520,1190)
                return
            } else {
                onWisp = 1
                Move2(Px-ran(1,2),Py-ran(1,2))
                Sleep, % ran(25,50)
                Click, L
                Sleep, % ran(5000,7000)
                ImageSearch, Ax, Ay, 0, 0, 3000, 3000, *40 divicon.png
                    if (ErrorLevel) {
                        onWisp = 0
                        return
                    } else {
                        onWisp = 1
                        return
                    }
            }
    }
}


deposit() {
    PixelSearch, Bx, By, A_ScreenWidth, A_ScreenHeight, 0xD6F395, 10, RGB, Fast
        if (Errorlevel) {
            PixelSearch, Kx, Ky, 0, 0, A_ScreenWidth, A_ScreenHeight, 0x67FCDF, 10, RGB, Fast
                if (ErrorLevel) {
                    ; Search for rift minimap icon
                    ImageSearch, Vx, Vy, 0, 0, 3000, 3000, *40 minimapicon.png
                        if (ErrorLevel) {
                            Send {Right down}
                            Sleep, % ran(320,590)
                            Send {Right up}
                            Sleep, % ran(520,1190)
                            timeout = timeout + 1
                            if (timeout >= 10) {
                                ExitApp
                            }
                            return
                        } else {
                            timeout = 0
                            Sleep, % ran(25,50)
                            Move(Vx,Vy,1)
                            Sleep, % ran(25,50)
                            Click, L
                            MouseGetpos, mousePosX, mousePosY
                            movement(mousePosX, mousePosY)
                            Sleep, % ran(25,50)
                            return
                        }
                } else {
                    Sleep, %ran(501,1000)
                    Move(Kx-ran(1,5),Ky-ran(25,30),0)
                    Sleep, % ran(25,50)
                    Click, R
                    Sleep, % ran(25,50)
                    ImageSearch, Wx, Wy, 0, 0, 3000, 3000, *40 deposit.png      ; Search for deposit rift
                        if (ErrorLevel) {
                            return
                        } else {
                            Sleep, % ran(501, 1000)
                            Move2(Wx, Wy-ran(1,4))
                            Sleep, % ran(52,100)
                            Click, L
                            Sleep, % ran(52,100)
                            MouseGetPos, mousePosX, mousePosY
                            movement(mousePosX, mousePosY)
                            Sleep, %ran(2003, 4000)
                            needsDeposit = 0
                            onWisp = 0
                            return
                        }
                }
        } else {
            Move2(Bx+ran(1,5),By+ran(25,50))
            Sleep, % ran(25,50)
            Click, R
            Sleep, % ran(25,50)
            ImageSearch, Jx, Jy, 0, 0, 3000, 3000, *40 deposit.png      ; Search for deposit rift - outer layer
                if (ErrorLevel) {
                    Move(ran(1,1000), ran(1,1000), 2)
                    return
                } else {
                    Move2(Jx, Jy-ran(1,4))
                    Click, L
                    Sleep, % ran(25,50)
                    MouseGetPos, mousePosX, mousePosY
                    movement(mousePosX, mousePosY)
                    Sleep, % ran(2003,4000)
                    needsDeposit = 0
                    return
                }
        }
}

    
