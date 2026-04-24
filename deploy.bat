@echo off
echo ========================================
echo  GET Token Whitepaper - Deploy Script
echo  GitHub: jaechulkim1973/get-whitepaper
echo  Domain: axg.kr
echo ========================================
echo.

cd /d "%~dp0"

echo [1/5] Initializing Git...
git init
git add -A
git commit -m "GET Token Whitepaper v2.0 - Gold Ecosystem Token"

echo.
echo [2/5] Adding GitHub remote...
git remote add origin https://github.com/jaechulkim1973/get-whitepaper.git 2>nul
git branch -M main

echo.
echo [3/5] Pushing to GitHub...
git push -u origin main

echo.
echo [4/5] Installing Vercel CLI...
call npm i -g vercel

echo.
echo [5/5] Deploying to Vercel...
call vercel --prod

echo.
echo ========================================
echo  DEPLOYMENT COMPLETE!
echo  Next: Connect axg.kr domain in Vercel
echo  1. Go to vercel.com/dashboard
echo  2. Select 'get-whitepaper' project
echo  3. Settings > Domains > Add 'axg.kr'
echo  4. Update DNS records as shown
echo ========================================
pause
