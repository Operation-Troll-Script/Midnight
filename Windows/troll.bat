:: Name: Midnight Troll Script
:: Platform: Windows 7 or higher
:: Author: Chandan & Kenny
:: Purpose: To create a funny script to troll a student in Windows.
:: Features: - Open 50 Pages/Tabs of Tastyblacks.com
::
:: PLEASE READ DOCS FOR HOW TO CHANGE THE VALUES, Thank you
@echo off

:: Opens 50 Pages of (http://www.google.com) 
FOR /L %%A IN (1,1,50) DO (
  start "" http://www.google.com ::A more appropriate link
)
