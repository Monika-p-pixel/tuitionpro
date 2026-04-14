# TuitionPro — Upload to GitHub & Get Your APK + EXE

## What happens after you upload this to GitHub?
GitHub will automatically build:
- **TuitionPro.apk** — install on any Android phone
- **TuitionPro-Setup-Windows.exe** — install on any Windows PC

Both files will appear as a public download link in ~10 minutes.

---

## Step-by-step: Upload to GitHub (FREE)

### Step 1 — Create a GitHub account
Go to https://github.com and sign up (free).

### Step 2 — Create a new repository
1. Click the **+** button (top right) → **New repository**
2. Name it: `tuitionpro`
3. Set it to **Public**
4. Do NOT check "Add README"
5. Click **Create repository**

### Step 3 — Upload the files
1. On your new empty repo page, click **"uploading an existing file"**
2. Drag and drop the entire contents of this ZIP (all folders and files)
3. Scroll down → click **"Commit changes"**

### Step 4 — Watch it build
1. Click the **"Actions"** tab at the top of your repo
2. You'll see **"Build TuitionPro (APK + EXE)"** running
3. Wait ~10 minutes for it to finish (green checkmark ✓)

### Step 5 — Download your files
1. Click **"Releases"** on the right side of your repo page
2. You'll see **TuitionPro v1.0.x**
3. Under "Assets" you'll find:
   - `TuitionPro.apk` ← share this link for Android install
   - `TuitionPro-Setup-Windows.exe` ← share this for Windows install

---

## How to install on Android
1. Download `TuitionPro.apk` on your phone
2. Go to **Settings → Security → Install unknown apps** → Allow
3. Tap the downloaded APK → Install
4. Done! TuitionPro appears on your home screen.

## How to install on Windows
1. Download `TuitionPro-Setup-Windows.exe`
2. Double-click it
3. Click "Install" (ignore any Windows SmartScreen warning — click "More info" → "Run anyway")
4. TuitionPro appears in your Start menu and Desktop.

---

## Share install links
Once released, your download page will be at:
```
https://github.com/YOUR-USERNAME/tuitionpro/releases/latest
```
Share this link with anyone — they can download and install in one click!

---

## Project structure
```
tuitionpro/
├── .github/workflows/build.yml   ← Auto-build instructions for GitHub
├── .gitignore
├── electron/
│   ├── main.js                   ← Desktop app entry point
│   ├── app.html                  ← The full TuitionPro app
│   └── package.json              ← Windows build config
└── android/
    ├── gradlew                   ← Android build script
    ├── build.gradle
    ├── settings.gradle
    └── app/
        ├── build.gradle
        └── src/main/
            ├── AndroidManifest.xml
            ├── assets/www/index.html  ← App (same as electron/app.html)
            ├── java/com/tuitionpro/
            │   └── MainActivity.java
            └── res/               ← App icons + styles
```
