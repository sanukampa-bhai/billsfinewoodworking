# Bill's Fine Woodworking - Quick Start

## Files Included

- `index.html` - Your website
- `styles.css` - Styling
- `script.js` - Functionality
- `netlify.toml` - Netlify configuration
- `.gitignore` - Git ignore file
- `setup-git.bat` - Automated git setup (Windows batch)
- `connect-github.ps1` - GitHub connection script (PowerShell)
- `DEPLOYMENT_GUIDE.md` - Full deployment instructions

## Quick Setup (Windows)

### Option 1: Automated Setup (Easiest)

1. **Double-click `setup-git.bat`**
   - This will automatically initialize your local git repository
   - It will create your first commit

2. **Create a GitHub account** (if you don't have one)
   - Go to https://github.com/signup

3. **Create a new repository on GitHub**
   - Go to https://github.com/new
   - Name it: `billsfinewoodworking`
   - Do NOT initialize with README
   - Click "Create repository"
   - Copy the HTTPS URL provided

4. **Right-click in this folder → Open PowerShell here** (or open PowerShell and navigate here)
   
5. **Run the connection script:**
   ```powershell
   .\connect-github.ps1
   ```
   - Paste your GitHub URL when prompted
   - Log in to GitHub if asked

6. **Tell Claude your GitHub URL** - We'll finish the Netlify/GoDaddy setup!

---

### Option 2: Manual Setup (Step-by-step in PowerShell)

1. **Open PowerShell** in this folder
2. **Initialize git:**
   ```powershell
   git init
   git config user.email "bill@billsfinewoodworking.com"
   git config user.name "Bill"
   git add .
   git commit -m "Initial commit: Bill's Fine Woodworking website"
   ```

3. **Create GitHub repo at https://github.com/new**
   - Name: `billsfinewoodworking`
   - Copy the HTTPS URL

4. **Connect to GitHub:**
   ```powershell
   git remote add origin https://github.com/YOUR-USERNAME/billsfinewoodworking.git
   git branch -M main
   git push -u origin main
   ```

5. **Done!** Tell Claude your GitHub URL

---

## Check Your Setup

To verify everything is working:

```powershell
git log --oneline
```

You should see your commit(s).

```powershell
git remote -v
```

Should show your GitHub URL.

---

## Editing Your Site

After everything is set up:

1. Edit files (html/css/js) in this folder
2. Save changes
3. In PowerShell:
   ```powershell
   git add .
   git commit -m "Your message here"
   git push origin main
   ```
4. Netlify auto-deploys within seconds!

---

## Troubleshooting

**"git: command not found"**
- Git isn't installed. Download from https://git-scm.com

**PowerShell won't run scripts?**
- Run: `Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser`
- Say yes when prompted

**GitHub authentication fails?**
- Use a Personal Access Token instead of password
- Go to https://github.com/settings/tokens
- Create a "repo" token and paste that instead

---

## Next Steps After Git Setup

1. ✅ Local git initialized
2. ✅ Pushed to GitHub
3. ⏭️ Connect GitHub to Netlify
4. ⏭️ Add GoDaddy domain

Tell Claude when you've pushed to GitHub and we'll finish the rest!

---

**Questions?** Check `DEPLOYMENT_GUIDE.md` for detailed instructions.
