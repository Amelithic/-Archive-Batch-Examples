@echo off
title RAINBOW
echo Hello!
echo This is an example of the colours available in batch
echo RAINBOW-RAINBOW-RAINBOW-RAINBOW-RAINBOW-RAINBOW-RAINBOW-RAINBOW
echo RAINBOW-RAINBOW-RAINBOW-RAINBOW-RAINBOW-RAINBOW-RAINBOW-RAINBOW
echo RAINBOW-RAINBOW-RAINBOW-RAINBOW-RAINBOW-RAINBOW-RAINBOW-RAINBOW
echo ===============================================================
echo 1234567890
echo abcdefghijklmnopqrstuvwxyz
echo ABCDEFGHIJKLMNOPQRSTUVWXYZ
echo ===============================================================
:rainbow
color 0F & color 07
color 08 & color 00
color 01 & color 09
color 03 & color 0B
color 02 & color 0A
color 06 & color 0E
color 0C & color 04
color 0D & color 05
goto rainbow