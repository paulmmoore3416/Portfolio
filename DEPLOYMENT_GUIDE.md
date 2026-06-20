# Portfolio Website Deployment Guide

## 📋 Table of Contents
1. [Overview](#overview)
2. [Prerequisites](#prerequisites)
3. [Domain Registration](#domain-registration)
4. [Hosting Options](#hosting-options)
5. [Deployment Methods](#deployment-methods)
6. [DNS Configuration](#dns-configuration)
7. [SSL Certificate Setup](#ssl-certificate-setup)
8. [Post-Deployment](#post-deployment)
9. [Maintenance](#maintenance)
10. [Troubleshooting](#troubleshooting)

---

## 🎯 Overview

This guide will walk you through deploying your professional portfolio website to a custom domain. The portfolio is built with:
- **HTML5** - Semantic markup
- **CSS3** - Advanced styling with animations
- **Vanilla JavaScript** - Interactive features
- **Responsive Design** - Mobile-first approach

---

## ✅ Prerequisites

Before starting, ensure you have:
- [ ] Portfolio files (index.html, styles.css, script.js)
- [ ] Profile image (profile.jpg)
- [ ] Project images (optional)
- [ ] Credit card for domain/hosting purchase
- [ ] Email address for domain registration

---

## 🌐 Domain Registration

### Recommended Domain Registrars

#### 1. **Namecheap** (Recommended)
- **Website**: https://www.namecheap.com
- **Price**: $8-15/year
- **Pros**: Affordable, free WHOIS privacy, easy DNS management
- **Steps**:
  1. Go to Namecheap.com
  2. Search for your desired domain (e.g., paulmmoore.com, paulmooretechnology.com)
  3. Add to cart and checkout
  4. Enable WhoisGuard (free privacy protection)

#### 2. **Google Domains**
- **Website**: https://domains.google.com
- **Price**: $12/year
- **Pros**: Simple interface, integrated with Google services
- **Steps**:
  1. Visit domains.google.com
  2. Search and select your domain
  3. Complete purchase with Google account

#### 3. **GoDaddy**
- **Website**: https://www.godaddy.com
- **Price**: $10-20/year
- **Pros**: Well-known, 24/7 support
- **Note**: Can be more expensive with add-ons

### Domain Name Suggestions
- paulmmoore.com
- paulmooretechnology.com
- paulmooretech.com
- mooretechnology.com
- paulmoorearchitect.com
- pmooreconsulting.com

---

## 🏠 Hosting Options

### Option 1: **Netlify** (Recommended - FREE)

**Best for**: Static sites, automatic deployments, free SSL

#### Setup Steps:
1. **Create Account**
   - Go to https://www.netlify.com
   - Sign up with GitHub, GitLab, or email

2. **Deploy via Drag & Drop**
   - Click "Add new site" → "Deploy manually"
   - Drag your portfolio folder into the upload area
   - Wait for deployment (usually 30 seconds)

3. **Connect Custom Domain**
   - Go to Site settings → Domain management
   - Click "Add custom domain"
   - Enter your domain name
   - Follow DNS configuration instructions

4. **Enable HTTPS**
   - Automatically enabled with Let's Encrypt
   - No additional configuration needed

**Pros**:
- ✅ Free hosting
- ✅ Automatic SSL certificate
- ✅ CDN included
- ✅ Continuous deployment
- ✅ Form handling available

---

### Option 2: **Vercel** (FREE)

**Best for**: Modern web projects, excellent performance

#### Setup Steps:
1. Visit https://vercel.com
2. Sign up with GitHub
3. Click "New Project"
4. Import your portfolio repository or upload files
5. Configure domain in project settings
6. Deploy with one click

**Pros**:
- ✅ Free hosting
- ✅ Automatic SSL
- ✅ Edge network
- ✅ Analytics included

---

### Option 3: **GitHub Pages** (FREE)

**Best for**: Developers familiar with Git

#### Setup Steps:
1. **Create GitHub Repository**
   ```bash
   git init
   git add .
   git commit -m "Initial commit"
   git branch -M main
   git remote add origin https://github.com/paulmmoore3416/portfolio.git
   git push -u origin main
   ```

2. **Enable GitHub Pages**
   - Go to repository Settings
   - Scroll to "Pages" section
   - Select "main" branch as source
   - Click Save

3. **Custom Domain Setup**
   - Add CNAME file with your domain
   - Configure DNS settings
   - Enable HTTPS in settings

**Pros**:
- ✅ Free hosting
- ✅ Version control
- ✅ Easy updates via Git

---

### Option 4: **AWS S3 + CloudFront** (Professional)

**Best for**: Enterprise-grade hosting, full control

#### Setup Steps:
1. **Create S3 Bucket**
   - Log into AWS Console
   - Create bucket with your domain name
   - Enable static website hosting
   - Upload portfolio files

2. **Configure CloudFront**
   - Create CloudFront distribution
   - Point to S3 bucket
   - Configure SSL certificate

3. **Route 53 DNS**
   - Create hosted zone
   - Add A record pointing to CloudFront

**Cost**: ~$1-5/month
**Pros**:
- ✅ Scalable
- ✅ Professional infrastructure
- ✅ Full AWS integration

---

### Option 5: **Traditional Web Hosting**

#### Recommended Providers:
1. **Bluehost** - $2.95/month
2. **SiteGround** - $3.99/month
3. **HostGator** - $2.75/month

#### Setup Steps:
1. Purchase hosting plan
2. Access cPanel
3. Upload files via File Manager or FTP
4. Point domain to hosting nameservers

---

## 🔧 DNS Configuration

### For Netlify/Vercel:

#### A Records:
```
Type: A
Name: @
Value: [Provided by hosting]
TTL: 3600
```

#### CNAME Record:
```
Type: CNAME
Name: www
Value: [your-site].netlify.app (or vercel.app)
TTL: 3600
```

### For GitHub Pages:

#### A Records (Add all 4):
```
Type: A
Name: @
Value: 185.199.108.153
TTL: 3600

Type: A
Name: @
Value: 185.199.109.153
TTL: 3600

Type: A
Name: @
Value: 185.199.110.153
TTL: 3600

Type: A
Name: @
Value: 185.199.111.153
TTL: 3600
```

#### CNAME Record:
```
Type: CNAME
Name: www
Value: paulmmoore3416.github.io
TTL: 3600
```

### DNS Propagation
- **Time**: 24-48 hours (usually faster)
- **Check Status**: https://dnschecker.org

---

## 🔒 SSL Certificate Setup

### Automatic SSL (Recommended)

**Netlify/Vercel/GitHub Pages**:
- SSL automatically provided via Let's Encrypt
- No configuration needed
- Auto-renewal included

### Manual SSL Setup

**For Traditional Hosting**:
1. **Let's Encrypt (Free)**
   - Use cPanel SSL/TLS tool
   - Or install Certbot
   ```bash
   sudo certbot --apache -d yourdomain.com -d www.yourdomain.com
   ```

2. **Paid SSL Certificate**
   - Purchase from registrar
   - Install via cPanel
   - Configure auto-renewal

---

## 🚀 Deployment Methods

### Method 1: Manual Upload (Easiest)

1. **Prepare Files**
   ```
   portfolio/
   ├── index.html
   ├── styles.css
   ├── script.js
   ├── profile.jpg
   └── [other images]
   ```

2. **Upload to Hosting**
   - Via cPanel File Manager
   - Via FTP client (FileZilla)
   - Via hosting dashboard

### Method 2: Git Deployment (Recommended)

1. **Initialize Repository**
   ```bash
   cd portfolio
   git init
   git add .
   git commit -m "Initial portfolio deployment"
   ```

2. **Push to GitHub**
   ```bash
   git remote add origin https://github.com/paulmmoore3416/portfolio.git
   git push -u origin main
   ```

3. **Connect to Hosting**
   - Link GitHub to Netlify/Vercel
   - Automatic deployments on push

### Method 3: FTP Upload

1. **Get FTP Credentials**
   - From hosting provider
   - Usually in welcome email

2. **Connect with FileZilla**
   - Host: ftp.yourdomain.com
   - Username: [provided]
   - Password: [provided]
   - Port: 21

3. **Upload Files**
   - Navigate to public_html or www folder
   - Upload all portfolio files

---

## 📧 Email Setup (Optional)

### Professional Email: paul@yourdomain.com

#### Option 1: Google Workspace
- **Cost**: $6/user/month
- **Setup**: https://workspace.google.com
- **Features**: Gmail interface, 30GB storage

#### Option 2: Zoho Mail (Free)
- **Cost**: Free for 1 domain
- **Setup**: https://www.zoho.com/mail
- **Features**: 5GB storage, webmail

#### Option 3: Domain Email Forwarding
- **Cost**: Free
- **Setup**: In domain registrar settings
- **Forward**: paul@yourdomain.com → paulmmoore3416@gmail.com

---

## ✨ Post-Deployment Checklist

### Immediate Tasks:
- [ ] Verify site loads at your domain
- [ ] Test on mobile devices
- [ ] Check all links work
- [ ] Verify contact form (if applicable)
- [ ] Test on different browsers
- [ ] Confirm SSL certificate is active (https://)

### SEO & Analytics:

#### 1. **Google Search Console**
   - Add property: https://search.google.com/search-console
   - Verify ownership
   - Submit sitemap

#### 2. **Google Analytics**
   - Create account: https://analytics.google.com
   - Add tracking code to index.html:
   ```html
   <!-- Add before </head> -->
   <script async src="https://www.googletagmanager.com/gtag/js?id=GA_MEASUREMENT_ID"></script>
   <script>
     window.dataLayer = window.dataLayer || [];
     function gtag(){dataLayer.push(arguments);}
     gtag('js', new Date());
     gtag('config', 'GA_MEASUREMENT_ID');
   </script>
   ```

#### 3. **Create Sitemap**
   Create `sitemap.xml`:
   ```xml
   <?xml version="1.0" encoding="UTF-8"?>
   <urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
     <url>
       <loc>https://yourdomain.com/</loc>
       <lastmod>2026-06-18</lastmod>
       <priority>1.0</priority>
     </url>
   </urlset>
   ```

#### 4. **Add robots.txt**
   Create `robots.txt`:
   ```
   User-agent: *
   Allow: /
   Sitemap: https://yourdomain.com/sitemap.xml
   ```

---

## 🔄 Maintenance

### Regular Updates:
- **Weekly**: Check site functionality
- **Monthly**: Update certifications/projects
- **Quarterly**: Review analytics
- **Yearly**: Renew domain

### Backup Strategy:
1. **Local Backup**: Keep files on your computer
2. **Git Repository**: Version control
3. **Cloud Backup**: Google Drive/Dropbox

### Performance Monitoring:
- **PageSpeed Insights**: https://pagespeed.web.dev
- **GTmetrix**: https://gtmetrix.com
- **Uptime Monitoring**: https://uptimerobot.com (free)

---

## 🐛 Troubleshooting

### Site Not Loading

**Issue**: Domain shows "Site not found"
**Solution**:
- Check DNS propagation (dnschecker.org)
- Verify A/CNAME records are correct
- Wait 24-48 hours for DNS propagation

### SSL Certificate Error

**Issue**: "Not Secure" warning
**Solution**:
- Enable SSL in hosting dashboard
- Force HTTPS redirect
- Clear browser cache

### Images Not Displaying

**Issue**: Broken image links
**Solution**:
- Check file paths are correct
- Ensure images are uploaded
- Verify file names match (case-sensitive)

### Mobile Display Issues

**Issue**: Site looks broken on mobile
**Solution**:
- Check viewport meta tag is present
- Test responsive breakpoints
- Validate CSS media queries

### Contact Form Not Working

**Issue**: Form submissions not received
**Solution**:
- Configure form backend (Netlify Forms, Formspree)
- Check email settings
- Test with form debugging tools

---

## 📞 Support Resources

### Hosting Support:
- **Netlify**: https://answers.netlify.com
- **Vercel**: https://vercel.com/support
- **GitHub**: https://docs.github.com/pages

### Domain Support:
- **Namecheap**: Live chat 24/7
- **Google Domains**: https://support.google.com/domains

### Community Help:
- **Stack Overflow**: https://stackoverflow.com
- **Reddit**: r/webdev, r/web_design
- **Discord**: Web development communities

---

## 🎉 Success Checklist

Once deployed, your portfolio should have:
- ✅ Custom domain (e.g., paulmmoore.com)
- ✅ HTTPS/SSL certificate
- ✅ Fast loading times (<3 seconds)
- ✅ Mobile responsive design
- ✅ Working contact form
- ✅ All links functional
- ✅ Professional email (optional)
- ✅ Analytics tracking
- ✅ SEO optimization

---

## 📝 Quick Start Recommendation

**For Paul Moore's Portfolio:**

1. **Register Domain**: paulmmoore.com or paulmooretechnology.com via Namecheap
2. **Deploy to Netlify**: Free, easy, automatic SSL
3. **Connect Domain**: Follow Netlify's DNS instructions
4. **Setup Email**: Forward to paulmmoore3416@gmail.com
5. **Add Analytics**: Google Analytics for tracking
6. **Monitor**: Set up UptimeRobot for monitoring

**Total Cost**: ~$10-15/year (domain only)
**Setup Time**: 1-2 hours
**Maintenance**: Minimal

---

## 🚀 Next Steps

After deployment:
1. Share your portfolio on LinkedIn
2. Update resume with portfolio URL
3. Add to email signature
4. Submit to job applications
5. Share on social media

---

## 📧 Questions?

If you need help with deployment:
- Email: paulmmoore3416@gmail.com
- LinkedIn: https://www.linkedin.com/in/paulmooretux
- GitHub: https://github.com/paulmmoore3416

---

**Last Updated**: June 2026
**Version**: 1.0
**Author**: Paul Mitcheal Moore