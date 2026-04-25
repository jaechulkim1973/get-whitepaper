@echo off
chcp 65001 >nul
echo ========================================
echo  GET Token Whitepaper - Deploy Script
echo  GitHub: jaechulkim1973/get-whitepaper
echo  Domain: axg.kr
echo ========================================
echo.

cd /d "%~dp0"

echo [1/4] Initializing Git...
if not exist ".git" (
    git init
    git remote add origin https://github.com/jaechulkim1973/get-whitepaper.git
)

echo.
echo [2/4] Staging all files...
git add -A
git status

echo.
echo [3/4] Committing...
git commit -m "DeFi v2.0 - Hotel Points, Smart Farm (SRP), GET Pay integration"

echo.
echo [4/4] Pushing to GitHub...
git branch -M main
git push -u origin main --force

echo.
echo ========================================
echo  PUSH COMPLETE!
echo  Check: https://github.com/jaechulkim1973/get-whitepaper
echo.
echo  Vercel deploy (if needed):
echo    vercel login --github
echo    vercel --prod
echo ========================================
pause
