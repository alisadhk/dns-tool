::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFBpYRTimOXixEroM1Oz1/KSCukh9
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off

title DNS - HK

color 07

echo.

echo [91m  ;                                                                                

echo   ED.                                                                              

echo   E#Wi        L.                      .                                   G:      

echo   E###G.      EW:        ,ft         ;W                       .    .      E#,    :

echo   E#fD#W;     E##;       t#E        f#E                       Di   Dt     E#t  .GE

echo   E#t t##L    E###t      t#E      .E#f                        E#i  E#i    E#t j#K;

echo   E#t  .E#K,  E#fE#f     t#E     iWW;                         E#t  E#t    E#GK#f  

echo   E#t    j##f E#t D#G    t#E    L##Lffi       .......         E#t  E#t    E##D.   

echo   E#t    :E#K:E#t  f#E.  t#E   tLLG##L        GEEEEEEf.       E########f. E##Wi   

echo   E#t   t##L  E#t   t#K: t#E     ,W#i                         E#j..K#j... E#jL#D: 

echo   E#t .D#W;   E#t    ;#W,t#E    j#E.                          E#t  E#t    E#t ,K#j

echo   E#tiW#G.    E#t     :K#D#E  .D#j                            E#t  E#t    E#t   jD

echo   E#K##i      E#t      .E##E ,WK,                             f#t  f#t    j#t     

echo   E##D.       ..         G#E EG.                               ii   ii     ,;     

echo   E#t                     fE ,                                                    

echo   L:                       ,                                                      

echo [97m

:menu
echo Select your network type:
echo 1 - Ethernet
echo 2 - Wi-Fi
set /p net_choice=Enter your choice (1 or 2): 

if "%net_choice%"=="1" set net_type=Ethernet
if "%net_choice%"=="2" set net_type=Wi-Fi
if not defined net_type goto menu

:menu_dns
cls
echo [91m  ;                                                                                

echo   ED.                                                                              

echo   E#Wi        L.                      .                                   G:      

echo   E###G.      EW:        ,ft         ;W                       .    .      E#,    :

echo   E#fD#W;     E##;       t#E        f#E                       Di   Dt     E#t  .GE

echo   E#t t##L    E###t      t#E      .E#f                        E#i  E#i    E#t j#K;

echo   E#t  .E#K,  E#fE#f     t#E     iWW;                         E#t  E#t    E#GK#f  

echo   E#t    j##f E#t D#G    t#E    L##Lffi       .......         E#t  E#t    E##D.   

echo   E#t    :E#K:E#t  f#E.  t#E   tLLG##L        GEEEEEEf.       E########f. E##Wi   

echo   E#t   t##L  E#t   t#K: t#E     ,W#i                         E#j..K#j... E#jL#D: 

echo   E#t .D#W;   E#t    ;#W,t#E    j#E.                          E#t  E#t    E#t ,K#j

echo   E#tiW#G.    E#t     :K#D#E  .D#j                            E#t  E#t    E#t   jD

echo   E#K##i      E#t      .E##E ,WK,                             f#t  f#t    j#t     

echo   E##D.       ..         G#E EG.                               ii   ii     ,;     

echo   E#t                     fE ,                                                    

echo   L:                       ,                                                      

echo [97m
echo Select DNS option:
echo 1 - Set custom DNS earthlink FTTH [92m(185.239.18.2 / 185.239.18.3)[97m
echo 2 - Set custom DNS earthlink.WIFI [92m(109.224.14.2 / 109.224.14.3)[97m
echo 3 - Set custom DNS earthlink.old dns [92m(109.222.14.2 / 109.222.14.3)[97m
echo 4 - Reset to automatic DNS [94m(DHCP)[97m
echo 5 - Return to network selection
echo 6 - Exit program
set /p choice=Enter your choice (1, 2, 3, 4, 5, or 6): 

if "%choice%"=="1" goto setdns1
if "%choice%"=="2" goto setdns2
if "%choice%"=="3" goto setdns3
if "%choice%"=="4" goto resetdns
if "%choice%"=="5" goto menu
if "%choice%"=="6" exit
goto menu_dns

:setdns1
echo Setting custom DNS 1...
netsh interface ip set dns "%net_type%" static 185.239.18.2
netsh interface ip add dns "%net_type%" 185.239.18.3 index=2
echo Custom DNS 1 has been set successfully.
pause
goto menu_dns

:setdns2
echo Setting custom DNS 2...
netsh interface ip set dns "%net_type%" static 109.224.14.2
netsh interface ip add dns "%net_type%" 109.224.14.3 index=2
echo Custom DNS 2 has been set successfully.
pause
goto menu_dns

:setdns3
echo Setting custom DNS 3...
netsh interface ip set dns "%net_type%" static 109.222.14.2
netsh interface ip add dns "%net_type%" 109.222.14.3 index=2
echo Custom DNS 3 has been set successfully.
pause
goto menu_dns

:resetdns
echo Resetting DNS to automatic [94m(DHCP)[97m...
netsh interface ip set dns "%net_type%" dhcp
echo DNS has been reset to automatic successfully.
pause
goto menu_dns