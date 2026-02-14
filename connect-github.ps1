# Bill's Fine Woodworking - GitHub Connection Script
# This script connects your local repository to GitHub

Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Bill's Fine Woodworking - GitHub Setup" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Get GitHub URL from user
$gitHubUrl = Read-Host "Enter your GitHub repository URL (e.g., https://github.com/username/billsfinewoodworking.git)"

if ([string]::IsNullOrWhiteSpace($gitHubUrl)) {
    Write-Host "ERROR: GitHub URL is required!" -ForegroundColor Red
    exit 1
}

Write-Host ""
Write-Host "Connecting to GitHub..." -ForegroundColor Yellow
Write-Host ""

# Add remote
Write-Host "Adding remote origin..." -ForegroundColor Yellow
git remote add origin $gitHubUrl
if ($LASTEXITCODE -ne 0) {
    Write-Host "ERROR: Failed to add remote" -ForegroundColor Red
    exit 1
}
Write-Host "[OK] Remote added" -ForegroundColor Green
Write-Host ""

# Rename branch to main
Write-Host "Renaming branch to 'main'..." -ForegroundColor Yellow
git branch -M main
if ($LASTEXITCODE -ne 0) {
    Write-Host "ERROR: Failed to rename branch" -ForegroundColor Red
    exit 1
}
Write-Host "[OK] Branch renamed" -ForegroundColor Green
Write-Host ""

# Push to GitHub
Write-Host "Pushing to GitHub..." -ForegroundColor Yellow
Write-Host "(You may be prompted to log in to GitHub)" -ForegroundColor Gray
Write-Host ""
git push -u origin main

if ($LASTEXITCODE -eq 0) {
    Write-Host ""
    Write-Host "========================================" -ForegroundColor Green
    Write-Host "SUCCESS!" -ForegroundColor Green
    Write-Host "========================================" -ForegroundColor Green
    Write-Host ""
    Write-Host "Your repository is now on GitHub!" -ForegroundColor Green
    Write-Host ""
    Write-Host "Repository URL: $gitHubUrl" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "Next steps:" -ForegroundColor Yellow
    Write-Host "1. Tell Claude your GitHub URL above" -ForegroundColor White
    Write-Host "2. Claude will connect it to Netlify" -ForegroundColor White
    Write-Host "3. Then set up your GoDaddy domain" -ForegroundColor White
    Write-Host ""
} else {
    Write-Host ""
    Write-Host "ERROR: Failed to push to GitHub" -ForegroundColor Red
    Write-Host "Check your GitHub URL and credentials" -ForegroundColor Red
    Write-Host ""
    exit 1
}

Read-Host "Press Enter to exit"
