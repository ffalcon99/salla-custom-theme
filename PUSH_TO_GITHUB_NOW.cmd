@echo off
cd /d "C:\Users\admin\Desktop\salla theme"
echo.
echo Step 1: Log in to GitHub (one time)
echo.
call gh auth login
echo.
echo Step 2: Create repo and push
echo.
call gh repo create salla-custom-theme --public --source=. --remote=origin --push
echo.
echo Done. Then go to salla.partners -^> My Themes -^> Create theme -^> Import a theme -^> select salla-custom-theme
pause
