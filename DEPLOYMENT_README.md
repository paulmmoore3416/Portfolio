# 🚀 Deployment Tools & Configuration

This document explains all the deployment-related files and how to use them.

---

## 📁 Deployment Files Overview

### Configuration Files

#### `netlify.toml`
**Purpose**: Netlify platform configuration  
**Features**:
- Security headers (X-Frame-Options, X-XSS-Protection, etc.)
- Asset caching (1 year for static files)
- HTTPS redirects
- www to non-www redirects

**Usage**: Automatically detected by Netlify when you deploy

#### `vercel.json`
**Purpose**: Vercel platform configuration  
**Features**:
- Static site build configuration
- Security headers
- Cache control for assets
- Domain redirects

**Usage**: Automatically detected by Vercel CLI or dashboard

#### `.htaccess`
**Purpose**: Apache server configuration  
**Features**:
- Force HTTPS
- Remove www prefix
- Enable compression
- Browser caching
- Security headers

**Usage**: Upload to root directory on Apache servers

#### `_redirects`
**Purpose**: Netlify redirects (alternative to netlify.toml)  
**Features**:
- HTTPS enforcement
- Trailing slash removal
- SPA fallback routing

**Usage**: Automatically detected by Netlify

---

## 🛠️ Deployment Tools

### `deploy.sh`
**Purpose**: Interactive deployment helper script  
**Features**:
- Checks for required files
- Provides deployment instructions for multiple platforms
- Creates deployment packages
- Starts local test server

**Usage**:
```bash
chmod +x deploy.sh  # Make executable (already done)
./deploy.sh         # Run the script
```

**Options**:
1. Netlify instructions
2. Vercel CLI deployment
3. GitHub Pages setup
4. Create ZIP package
5. Test locally
6. Exit

### `create-placeholders.html`
**Purpose**: Generate professional project placeholder images  
**Features**:
- Creates 8 gradient-based placeholder images
- Professional design matching site theme
- One-click download for each image
- Proper naming for direct use

**Usage**:
1. Open in web browser
2. Right-click each image
3. "Save image as..."
4. Save with exact filename shown
5. Place in portfolio folder

---

## 🌐 Platform-Specific Deployment

### Netlify (Recommended)

**Method 1: Drag & Drop**
1. Go to https://app.netlify.com/drop
2. Drag entire portfolio folder
3. Site is live instantly!

**Method 2: CLI**
```bash
npm install -g netlify-cli
netlify deploy --prod
```

**Method 3: Git Integration**
1. Push to GitHub
2. Connect repo in Netlify dashboard
3. Auto-deploy on push

**Configuration**: Uses `netlify.toml` and `_redirects`

---

### Vercel

**Method 1: CLI (Fastest)**
```bash
npm install -g vercel
vercel
```

**Method 2: Dashboard**
1. Go to https://vercel.com
2. Import project
3. Deploy

**Method 3: Git Integration**
1. Push to GitHub
2. Import in Vercel dashboard
3. Auto-deploy on push

**Configuration**: Uses `vercel.json`

---

### GitHub Pages

**Setup**:
```bash
# Initialize git
git init
git add .
git commit -m "Initial commit"

# Create repo on GitHub, then:
git remote add origin YOUR_REPO_URL
git branch -M main
git push -u origin main
```

**Enable Pages**:
1. Go to repo Settings
2. Pages section
3. Source: main branch
4. Save

**Custom Domain**: `CNAME` file already included

---

### Apache Server

**Upload Files**:
- Upload all files via FTP/SFTP
- Ensure `.htaccess` is in root directory
- Set proper permissions (644 for files, 755 for directories)

**Configuration**: Uses `.htaccess`

---

### Other Static Hosts

**Create Package**:
```bash
./deploy.sh
# Choose option 4: Create ZIP package
```

**Upload to**:
- AWS S3 + CloudFront
- Google Cloud Storage
- Azure Static Web Apps
- Cloudflare Pages
- Firebase Hosting
- Surge.sh
- Render
- Railway

---

## 🔒 Security Features

All configuration files include:

### Headers
- `X-Frame-Options: SAMEORIGIN` - Prevents clickjacking
- `X-Content-Type-Options: nosniff` - Prevents MIME sniffing
- `X-XSS-Protection: 1; mode=block` - XSS protection
- `Referrer-Policy: strict-origin-when-cross-origin` - Privacy

### HTTPS
- Force HTTPS redirects
- Automatic SSL certificates (Netlify/Vercel)

### Caching
- 1 year cache for static assets
- Immutable flag for performance

---

## ⚡ Performance Optimizations

### Caching Strategy
```
CSS/JS: 1 year cache
Images: 1 year cache
HTML: No cache (always fresh)
```

### Compression
- Gzip/Deflate enabled
- Reduces file sizes by 70-80%

### Resource Hints
- Preconnect to CDNs
- Faster font loading
- Optimized external resources

---

## 🧪 Testing

### Local Testing
```bash
# Python 3
python3 -m http.server 8000

# Python 2
python -m SimpleHTTPServer 8000

# Node.js
npx http-server -p 8000

# PHP
php -S localhost:8000
```

Then open: http://localhost:8000

### Using Deploy Script
```bash
./deploy.sh
# Choose option 5: Test locally
```

---

## 🔧 Troubleshooting

### Netlify Issues

**Problem**: Site not updating  
**Solution**: Clear cache and redeploy
```bash
netlify deploy --prod --clear-cache
```

**Problem**: Redirects not working  
**Solution**: Check `_redirects` or `netlify.toml` syntax

### Vercel Issues

**Problem**: Build fails  
**Solution**: Ensure `vercel.json` is valid JSON

**Problem**: Headers not applied  
**Solution**: Redeploy after config changes

### Apache Issues

**Problem**: .htaccess not working  
**Solution**: Enable mod_rewrite in Apache config

**Problem**: 500 error  
**Solution**: Check .htaccess syntax, disable sections one by one

### General Issues

**Problem**: Images not loading  
**Solution**: 
- Check file paths are correct
- Use `create-placeholders.html` to generate images
- Verify files uploaded correctly

**Problem**: Slow loading  
**Solution**:
- Enable compression
- Check caching headers
- Optimize images

---

## 📊 Monitoring

### Analytics Setup

**Google Analytics**:
Add to `index.html` before `</head>`:
```html
<!-- Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=GA_MEASUREMENT_ID"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'GA_MEASUREMENT_ID');
</script>
```

**Netlify Analytics**: Built-in, enable in dashboard

**Vercel Analytics**: Built-in, enable in dashboard

---

## 🎯 Custom Domain Setup

### DNS Configuration

**A Record** (for root domain):
```
Type: A
Name: @
Value: [Host IP Address]
TTL: 3600
```

**CNAME Record** (for www):
```
Type: CNAME
Name: www
Value: [Your site URL]
TTL: 3600
```

### Platform-Specific

**Netlify**:
1. Domain settings → Add custom domain
2. Follow DNS instructions
3. SSL auto-configured

**Vercel**:
1. Project settings → Domains
2. Add domain
3. Configure DNS
4. SSL auto-configured

**GitHub Pages**:
1. Add `CNAME` file (already included)
2. Configure DNS at registrar
3. Enable HTTPS in settings

---

## 📝 Maintenance

### Regular Updates
- Update certifications as earned
- Add new projects as completed
- Refresh experience timeline
- Update contact information

### Performance Checks
- Run Lighthouse audits monthly
- Check broken links quarterly
- Update dependencies annually
- Review analytics monthly

### Security
- Keep SSL certificates current (auto-renewed)
- Review security headers annually
- Update contact methods as needed

---

## 🆘 Support

### Documentation
- **Quick Start**: QUICK_START.md
- **Full Guide**: DEPLOYMENT_GUIDE.md
- **Setup**: SETUP_INSTRUCTIONS.md
- **Changes**: CHANGELOG.md

### Contact
- **Email**: paulmmoore3416@gmail.com
- **Phone**: 636-635-6285

### Platform Support
- **Netlify**: https://answers.netlify.com
- **Vercel**: https://vercel.com/support
- **GitHub**: https://docs.github.com/pages

---

## ✅ Deployment Checklist

Before deploying:
- [ ] All files present
- [ ] Profile image added
- [ ] Contact info verified
- [ ] Links tested
- [ ] Local testing completed
- [ ] Configuration files reviewed

After deploying:
- [ ] Site loads correctly
- [ ] Mobile responsive
- [ ] All links work
- [ ] Forms function
- [ ] SSL enabled
- [ ] Analytics configured
- [ ] Social sharing tested

---

*Last Updated: June 19, 2026*  
*Version: 2.1.0*  
*All deployment tools ready for use!* ✅