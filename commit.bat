@echo off
cd /d "C:\Users\Salierno\Desktop\Programming\Git Repos\activitypicker"

git add .

REM Check if there are any staged changes
git diff --cached --quiet
IF %ERRORLEVEL% EQU 0 (
    echo No changes to commit.
) ELSE (
    git commit -m "Auto upload from batch script"
    git push origin main
    echo Changes pushed to GitHub.
)

pause
