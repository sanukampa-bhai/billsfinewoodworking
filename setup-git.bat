@echo off
REM Bill's Fine Woodworking - Local Git Setup Script
REM This script initializes your local git repository

echo.
echo ========================================
echo Bill's Fine Woodworking - Git Setup
echo ========================================
echo.

REM Check if git is installed
git --version >nul 2>&1
if errorlevel 1 (
    echo ERROR: Git is not installed!
    echo Please download and install Git from: https://git-scm.com
    echo.
    pause
    exit /b 1
)

echo [OK] Git is installed
echo.

REM Initialize repository
echo Initializing git repository...
git init
if errorlevel 1 (
    echo ERROR: Failed to initialize git repository
    pause
    exit /b 1
)

echo [OK] Repository initialized
echo.

REM Configure user
echo Configuring git user...
git config user.email "bill@billsfinewoodworking.com"
git config user.name "Bill"

echo [OK] User configured
echo.

REM Add all files
echo Adding files to git...
git add .

echo [OK] Files added
echo.

REM Initial commit
echo Creating initial commit...
git commit -m "Initial commit: Bill's Fine Woodworking website"

if errorlevel 1 (
    echo WARNING: Initial commit may have failed, but repository is ready
) else (
    echo [OK] Initial commit created
)

echo.
echo ========================================
echo Setup Complete!
echo ========================================
echo.
echo Next steps:
echo 1. Create a GitHub account at https://github.com/signup
echo 2. Create a new repository called "billsfinewoodworking"
echo 3. Copy the GitHub URL provided
echo 4. Run the following commands in PowerShell:
echo.
echo    git remote add origin [YOUR_GITHUB_URL]
echo    git branch -M main
echo    git push -u origin main
echo.
echo Then tell Claude your GitHub URL and we'll connect it to Netlify!
echo.
pause
