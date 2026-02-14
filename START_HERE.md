# BILL'S FINE WOODWORKING - LOCAL GIT SETUP INSTRUCTIONS

## What You're Getting

All your website files are ready in this folder:
- ✅ `index.html` - Your website
- ✅ `styles.css` - Styling  
- ✅ `script.js` - Interactivity
- ✅ `netlify.toml` - Netlify config
- ✅ Setup scripts for Windows

---

## IMMEDIATE NEXT STEPS (Do These Now)

### Step 1: Download the Files

All files you see in this folder are what you need. They're already set up and ready to go.

### Step 2: Initialize Local Git

**EASIEST WAY:** Double-click `setup-git.bat`

**OR manually in PowerShell:**
```powershell
cd "C:\Users\corcoran\OneDrive - California Institute of Technology\Desktop\ProjectX\billsfinewoodworking"
git init
git config user.email "bill@billsfinewoodworking.com"
git config user.name "Bill"
git add .
git commit -m "Initial commit: Bill's Fine Woodworking website"
```

### Step 3: Create GitHub Account & Repo

1. Go to https://github.com/signup (create account if needed)
2. Go to https://github.com/new
3. Name it: `billsfinewoodworking`
4. **DO NOT** check "Initialize with README"
5. Click "Create repository"
6. Copy the HTTPS URL (example: `https://github.com/YOUR-USERNAME/billsfinewoodworking.git`)

### Step 4: Push to GitHub

**EASIEST WAY:** Run `connect-github.ps1` in PowerShell and paste your GitHub URL

**OR manually:**
```powershell
git remote add origin https://github.com/YOUR-USERNAME/billsfinewoodworking.git
git branch -M main
git push -u origin main
```

---

## DONE WITH LOCAL SETUP!

Once your code is on GitHub, **come back and tell me:**
1. Your GitHub username
2. Your GitHub repository URL (or just the username - I can figure out the rest)

I'll then:
- ✅ Connect it to Netlify for automatic deployment
- ✅ Set up your GoDaddy domain to point to Netlify
- ✅ Get you live on the web

---

## EDITING YOUR WEBSITE GOING FORWARD

After everything is set up, to make changes:

1. Edit files in this folder (index.html, styles.css, etc.)
2. Save the file
3. In PowerShell:
```powershell
git add .
git commit -m "Description of what changed"
git push origin main
```

Netlify will automatically deploy your changes within seconds!

---

## NEED HELP?

- **For git questions:** See `DEPLOYMENT_GUIDE.md`
- **For quick reference:** See `QUICK_START.md`
- **For git basics:** https://git-scm.com/book

---

## YOU'RE READY TO GO!

Everything is set up. Just:
1. Run the setup scripts (or follow manual commands)
2. Push to GitHub
3. Tell Claude your GitHub URL
4. We finish the rest

🚀 Let's go!
