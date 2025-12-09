# Deploy Instructions

## Option A — Create GitHub repo & publish via GitHub Pages (recommended)
1. Install Git and GitHub CLI (`gh`) and authenticate (`gh auth login`).
2. In the project folder:
   ```
   git init
   git add .
   git commit -m "Initial commit - Bootstrap project"
   gh repo create yourusername/bootstrap-project --public --source=. --remote=origin --push
   ```
3. Enable GitHub Pages (deploy from `main` branch / root). You can do it on GitHub Settings -> Pages, or run:
   ```
   gh api -X POST repos/OWNER/REPO/pages --field source.branch=main
   ```
4. After a minute, your site will be at:
   `https://yourusername.github.io/bootstrap-project/`

## Option B — Deploy to Netlify
1. Install Netlify CLI and login:
   ```
   npm install -g netlify-cli
   netlify login
   ```
2. From project folder:
   ```
   netlify init
   netlify deploy --prod --dir=.
   ```
3. Netlify will provide a live site URL like `https://yourproject.netlify.app`

## Notes
- Replace `yourusername` and `bootstrap-project` with your actual GitHub username and desired repo name.
- Both GitHub CLI and Netlify CLI require authentication in your terminal (they open browser windows to login).
