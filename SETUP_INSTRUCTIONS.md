# Portfolio Setup Instructions

## 🚀 Quick Setup Guide

Follow these steps to get your portfolio up and running in minutes!

---

## Step 1: Add Your Profile Image

**IMPORTANT**: You need to add your profile photo for the portfolio to display correctly.

### Option A: Use LinkedIn Profile Photo (Recommended)

1. Go to your LinkedIn profile: https://www.linkedin.com/in/paulmooretux
2. Right-click on your profile photo
3. Select "Save image as..."
4. Save it as `profile.jpg` in the portfolio folder
5. Recommended size: 400x400px or larger

### Option B: Use Any Professional Photo

1. Choose a professional headshot
2. Resize to at least 400x400px (square format works best)
3. Save as `profile.jpg` in the portfolio folder
4. Supported formats: JPG, PNG

---

## Step 2: Add Project Images (Optional)

If you want to display project screenshots:

1. Create an `assets` folder in the portfolio directory
2. Add project images with these names:
   - `project-stlveteranshub.jpg` - STL Veterans Hub screenshot
   - `project-promptvault.jpg` - Prompt Vault Pro screenshot
   - `project-bitcoin.jpg` - Bitcoin mining infrastructure diagram
   - `project-potcircles.jpg` - PotCircles/PotPons screenshot

3. Recommended size: 1200x800px
4. Or use placeholder gradients (already configured)

---

## Step 3: Test Locally

### Method 1: Double-Click (Easiest)
Simply double-click `index.html` to open in your browser.

### Method 2: Python Server
```bash
cd portfolio
python -m http.server 8000
```
Then visit: http://localhost:8000

### Method 3: VS Code Live Server
1. Install "Live Server" extension in VS Code
2. Right-click `index.html`
3. Select "Open with Live Server"

---

## Step 4: Customize Content (Optional)

### Update Personal Information

Open `index.html` and search for these sections to customize:

1. **Contact Information** (Lines 50-60)
   - Already set with your info
   - Update if needed

2. **Experience Details** (Lines 150-250)
   - Add more positions if needed
   - Update dates and descriptions

3. **Projects** (Lines 300-400)
   - Add new projects
   - Update descriptions

### Customize Colors

Open `styles.css` and modify the CSS variables (Lines 1-20):

```css
:root {
    --primary-color: #0066cc;      /* Main brand color */
    --secondary-color: #00a8e8;    /* Accent color */
    --accent-color: #ff6b35;       /* Highlight color */
}
```

---

## Step 5: Deploy to the Web

### Quick Deploy (Recommended)

#### Option A: Netlify (FREE)
1. Go to https://netlify.com
2. Sign up with email or GitHub
3. Drag and drop your portfolio folder
4. Get instant URL: `yourname.netlify.app`
5. Connect custom domain (optional)

**Time**: 5 minutes
**Cost**: FREE

#### Option B: Vercel (FREE)
1. Go to https://vercel.com
2. Sign up with GitHub
3. Import repository or upload files
4. Deploy automatically

**Time**: 5 minutes
**Cost**: FREE

#### Option C: GitHub Pages (FREE)
1. Create GitHub repository
2. Upload portfolio files
3. Enable Pages in Settings
4. Access at: `username.github.io/portfolio`

**Time**: 10 minutes
**Cost**: FREE

---

## Step 6: Get a Custom Domain

### Recommended Domain Names
- paulmmoore.com
- paulmooretechnology.com
- paulmooretech.com
- mooretechnology.com

### Where to Buy
1. **Namecheap** - $8-12/year (Recommended)
   - https://www.namecheap.com
   - Free WHOIS privacy
   - Easy DNS management

2. **Google Domains** - $12/year
   - https://domains.google.com
   - Simple interface

3. **GoDaddy** - $10-20/year
   - https://www.godaddy.com
   - 24/7 support

### Connect Domain to Hosting

See [DEPLOYMENT_GUIDE.md](DEPLOYMENT_GUIDE.md) for detailed DNS instructions.

**Quick Steps**:
1. Buy domain
2. Get DNS settings from hosting provider (Netlify/Vercel)
3. Add A and CNAME records in domain registrar
4. Wait 24-48 hours for propagation
5. Done!

---

## Step 7: Setup Professional Email (Optional)

### Option 1: Email Forwarding (FREE)
Forward `paul@yourdomain.com` to `paulmmoore3416@gmail.com`

**Setup**:
1. Go to domain registrar settings
2. Find "Email Forwarding"
3. Add: paul@yourdomain.com → paulmmoore3416@gmail.com

### Option 2: Google Workspace ($6/month)
Get full Gmail with your domain

**Setup**:
1. Go to https://workspace.google.com
2. Sign up with your domain
3. Verify domain ownership
4. Use Gmail interface with paul@yourdomain.com

### Option 3: Zoho Mail (FREE)
Free email hosting for 1 domain

**Setup**:
1. Go to https://www.zoho.com/mail
2. Sign up for free plan
3. Add your domain
4. Configure MX records

---

## Step 8: Add Analytics (Optional)

### Google Analytics (FREE)

1. **Create Account**
   - Go to https://analytics.google.com
   - Sign in with Google account
   - Create property for your website

2. **Get Tracking Code**
   - Copy your Measurement ID (G-XXXXXXXXXX)

3. **Add to Website**
   - Open `index.html`
   - Find the `<head>` section
   - Add this code before `</head>`:

```html
<!-- Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-XXXXXXXXXX"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'G-XXXXXXXXXX');
</script>
```

4. **Replace** `G-XXXXXXXXXX` with your actual Measurement ID

---

## Step 9: Submit to Search Engines

### Google Search Console

1. Go to https://search.google.com/search-console
2. Add your website
3. Verify ownership (HTML file or DNS)
4. Submit sitemap: `https://yourdomain.com/sitemap.xml`

### Bing Webmaster Tools

1. Go to https://www.bing.com/webmasters
2. Add your site
3. Verify ownership
4. Submit sitemap

---

## Step 10: Share Your Portfolio

### Update Your Profiles

1. **LinkedIn**
   - Add website to profile
   - Share in a post
   - Add to experience sections

2. **GitHub**
   - Update profile README
   - Pin repository
   - Add website link

3. **Resume**
   - Add portfolio URL
   - Include in header

4. **Email Signature**
   ```
   Paul Mitcheal Moore
   AWS Solutions Architect | CTO | Full-Stack Developer
   📧 paulmmoore3416@gmail.com
   📱 636-635-6285
   🌐 https://yourdomain.com
   💼 linkedin.com/in/paulmooretux
   ```

---

## ✅ Final Checklist

Before going live, verify:

- [ ] Profile image is added and displays correctly
- [ ] All links work (test each one)
- [ ] Contact form is functional
- [ ] Site loads on mobile devices
- [ ] Site loads on different browsers (Chrome, Firefox, Safari)
- [ ] HTTPS is enabled (green padlock)
- [ ] All personal information is correct
- [ ] Social media links are accurate
- [ ] No spelling or grammar errors
- [ ] Images load properly
- [ ] Animations work smoothly
- [ ] Contact information is up to date

---

## 🆘 Need Help?

### Common Issues

**Issue**: Images not showing
**Solution**: Check file names match exactly (case-sensitive)

**Issue**: Site looks broken on mobile
**Solution**: Clear browser cache, test in incognito mode

**Issue**: Contact form not working
**Solution**: Configure form backend (see DEPLOYMENT_GUIDE.md)

**Issue**: Domain not working
**Solution**: Wait 24-48 hours for DNS propagation

### Get Support

- **Email**: paulmmoore3416@gmail.com
- **LinkedIn**: https://www.linkedin.com/in/paulmooretux
- **GitHub Issues**: https://github.com/paulmmoore3416/portfolio/issues

---

## 📚 Additional Resources

- [DEPLOYMENT_GUIDE.md](DEPLOYMENT_GUIDE.md) - Detailed deployment instructions
- [README.md](README.md) - Project documentation
- [Netlify Docs](https://docs.netlify.com)
- [Vercel Docs](https://vercel.com/docs)
- [GitHub Pages Docs](https://docs.github.com/pages)

---

## 🎉 Congratulations!

Your professional portfolio is ready to impress potential employers and clients!

**Next Steps**:
1. Deploy to hosting
2. Get custom domain
3. Share on social media
4. Apply to jobs with your new portfolio
5. Keep it updated with new projects

---

**Built with ❤️ for Paul Mitcheal Moore**

*Last Updated: June 2026*