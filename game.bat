@echo off
title [the game]
color F1
if "%1" neq "" (goto %1)
:Menu
cls
echo 1. Matrix
echo 2. Password Generator
echo 3. Guessing Game
echo 5. Credits
echo 6. Exit
set /p answer=Type the number of you option and press enter :
if %answer%==1 goto Matrix
if %answer%==3 goto Guess
if %answer%==2 goto Password_Generator
if %answer%==5 goto Credits
if %answer%==6 goto Exit
:Guess
cls
color 0e
title Guessing Game by AMELIE
set /a guessnum=0
set /a answer=%RANDOM%
set variable1=surf33y
echo -------------------------------------------------
echo Welcome to the Guessing Game! 
echo. 
echo Try and Guess my Number! 
echo -------------------------------------------------
echo. 
:top
echo. 
set /p guess=
echo. 
if %guess% GTR %answer% ECHO Lower! 
if %guess% LSS %answer% ECHO Higher! 
if %guess%==%answer% GOTO EQUAL
set /a guessnum=%guessnum% +1
if %guess%==%variable1% ECHO Found the backdoor hey?, the answer is: %answer%
goto top
:equal
echo Congratulations, You guessed right!!! 
echo. 
echo It took you %guessnum% guesses. 
echo. 
pause
goto woo
:Exit
cls
echo Thanks for playing!
pause
exit /b
:Credits
cls
echo Credits
echo.
echo Thank you for playing [the game]!
pause
goto Menu
:Matrix
set loop=0
:loop
color 02
echo 1010100=011101010010849.77011110100100100101101001001094652010101011
echo 1010100011106301010010011110173100100100101101=00100100101011
echo 1010100011101010010011110-10010010010110100100100101011
echo 1010100011101010010011110100100100101101001003.14100101011
set /a loop=%loop%+1
if "%loop%"=="450" goto next
goto loop
:next
cls
color F1
echo Have fun?
set /P c=Return to menu?  [Y/N]
if /I "%c%" EQU "Y" goto :somewhere
if /I "%c%" EQU "N" goto :somewhere_else
:somewhere 
cls
goto Menu
:somewhere else
cls
echo Exiting...
pause
:Password_Generator
cls
color 8A
echo I will make you a new password. 
echo ---------------------------------------------------------------
echo 1) 1 Random Password
echo 2) Back to Menu
echo Input your choice
set input=
set /p input= Choice: 
if %input%==1 goto A if NOT goto Password_Generator
if %input%==2 goto B if NOT goto Password_Generator
:A
cls
echo Your password is %random%
echo Now choose what you want to do. 
echo 1) Go back to the menu
echo 2) Exit
set input=
set /p input= Choice: 
if %input%==1 goto woo if NOT goto  Password_Generator
if %input%==2 goto Exit if NOT goto  Password_Generator
:woo
cls
color F1
goto Menu
:B
cls
color F1
goto Menu