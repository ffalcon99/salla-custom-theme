# Create New Theme from Salla Partners – Step by Step

You deleted the old GitHub repo. Use this guide to create a **new theme** and connect your local **salla theme** folder.

---

## Part 1: Put your theme on GitHub again

Your local folder `C:\Users\admin\Desktop\salla theme` must be in a GitHub repo so Salla can import it.

### Step 1.1: Create a new repo on GitHub

1. Go to **https://github.com/new**
2. Log in (e.g. **ffalcon99**).
3. **Repository name:** e.g. `salla-custom-theme` (or any name).
4. Choose **Public**.
5. Do **not** check “Add a README” (you already have files).
6. Click **Create repository**.

### Step 1.2: Push your local “salla theme” to the new repo

Open **Command Prompt** or **PowerShell** and run:

```cmd
cd "C:\Users\admin\Desktop\salla theme"
git remote remove origin
git remote remove salla904
git remote add origin https://github.com/YOUR_USERNAME/YOUR_NEW_REPO_NAME.git
git push -u origin master
```

Replace:
- `YOUR_USERNAME` = your GitHub username (e.g. `ffalcon99`)
- `YOUR_NEW_REPO_NAME` = the repo you just created (e.g. `salla-custom-theme`)

Example:

```cmd
git remote add origin https://github.com/ffalcon99/salla-custom-theme.git
git push -u origin master
```

If GitHub asks for login, use your username + a **Personal Access Token** (not your password).

---

## Part 2: Create the theme in Salla Partners Portal

### Step 2.1: Open the portal

1. Go to **https://salla.partners** (or **https://portal.salla.partners**).
2. Log in with your **Salla Partners** account.

### Step 2.2: Go to themes

1. In the menu, click **“My Themes”** (or **“Themes”** then **“My Themes”**).
2. Click **“Create theme”** (or **“Create your first theme”** if it’s your first).

### Step 2.3: Connect GitHub

1. When asked, **connect your GitHub account**.
2. Click **Authorize** / **Grant access** so Salla can read your repos.
3. Finish the GitHub authorization in the browser.

### Step 2.4: Choose “Import theme”

1. You’ll see two options: **Import a theme** and **Create a new theme**.
2. Choose **“Import a theme”** (because your code is already in the repo you created in Part 1).

### Step 2.5: Fill in import details

1. **Icon** – Upload an image for your theme (optional but good to have).
2. **GitHub account** – Select the account that owns the repo (e.g. ffalcon99).
3. **Theme repository** – Select the repo you created (e.g. **salla-custom-theme**).
4. **Theme category** – Pick a category if you want.
5. **Screenshots** – Up to 3 images (optional).
6. Click **“Import theme”**.

### Step 2.6: Wait for Salla to create the theme

1. Salla will read your repo and use **twilight.json** to create the theme.
2. When it’s done, you’ll see your new theme in **My Themes** with a new **Theme ID**.

---

## Part 3: Use the theme locally (CLI + preview)

### Step 3.1: Open CMD and run import (one time)

1. Open **Command Prompt** (Win + R → `cmd` → Enter).
2. Run:

```cmd
cd C:\Users\admin\Desktop
salla theme create
```

3. In the menu:
   - Select **Store Theme** → Enter.
   - Select **Import a theme** → Enter.
   - Select your **GitHub username** (e.g. ffalcon99) → Enter.
   - Select your **repo name** (e.g. salla-custom-theme) → Enter.

4. The CLI will create a folder (e.g. `salla-custom-theme` on Desktop) and link it to your new theme.

### Step 3.2: Copy your customizations (if the CLI made a new folder)

If the CLI created a **new** folder and you want to keep the customizations from your current **salla theme** folder:

1. Copy everything from `C:\Users\admin\Desktop\salla theme\` into the new folder (e.g. `C:\Users\admin\Desktop\salla-custom-theme\`).
2. Overwrite when asked.
3. Use the **new folder** for `npm run dev` from now on.

### Step 3.3: Run the theme preview

1. In CMD:

```cmd
cd "C:\Users\admin\Desktop\salla-custom-theme"
npm run dev
```

(Or use the new folder name the CLI gave you.)

2. When it asks **“Select a demo store”**, pick one with the arrow keys and press Enter.
3. The theme will open in your browser so you can test it.

---

## Quick checklist

| # | What to do |
|---|------------|
| 1 | Create a new **public** repo on GitHub (e.g. salla-custom-theme). |
| 2 | In `salla theme` folder: set `origin` to the new repo and **git push**. |
| 3 | Salla Partners → **My Themes** → **Create theme** → connect GitHub. |
| 4 | Choose **Import a theme** → select your repo → **Import theme**. |
| 5 | CMD: `salla theme create` → Store Theme → Import → your repo. |
| 6 | CMD: `cd salla-custom-theme` (or new folder) → `npm run dev` → choose demo store. |

---

## If you don’t want to use “Import” (create theme from scratch in portal)

If you prefer **“Create a new theme”** in the portal (Salla creates an empty theme and repo):

1. In Salla Partners: **Create theme** → connect GitHub → **Create a new theme**.
2. Fill in name, icon, support email, etc. → **Create theme**.
3. Salla will create a new GitHub repo with default theme files.
4. Then you can clone that repo, **replace** its contents with your `salla theme` folder, and push. After that, the portal will show your custom theme.

Using **Import a theme** (Part 1 + 2 above) is simpler when you already have the folder and repo.
