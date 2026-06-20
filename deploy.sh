#!/bin/bash

# Portfolio Deployment Script
# This script helps deploy your portfolio to various platforms

echo "🚀 Portfolio Deployment Helper"
echo "================================"
echo ""

# Check if required files exist
echo "📋 Checking required files..."
required_files=("index.html" "styles.css" "script.js" "profile.jpg")
missing_files=()

for file in "${required_files[@]}"; do
    if [ ! -f "$file" ]; then
        missing_files+=("$file")
    fi
done

if [ ${#missing_files[@]} -ne 0 ]; then
    echo "❌ Missing required files:"
    for file in "${missing_files[@]}"; do
        echo "   - $file"
    done
    echo ""
    echo "Please add these files before deploying."
    exit 1
fi

echo "✅ All required files present"
echo ""

# Display deployment options
echo "Choose your deployment platform:"
echo "1) Netlify (Recommended - Drag & Drop)"
echo "2) Vercel (CLI Deployment)"
echo "3) GitHub Pages (Git Required)"
echo "4) Create deployment package (ZIP)"
echo "5) Test locally"
echo "6) Exit"
echo ""
read -p "Enter your choice (1-6): " choice

case $choice in
    1)
        echo ""
        echo "📦 Netlify Deployment Instructions:"
        echo "1. Go to https://app.netlify.com/drop"
        echo "2. Drag and drop this entire folder"
        echo "3. Your site will be live in seconds!"
        echo ""
        echo "For custom domain:"
        echo "1. Go to Site settings > Domain management"
        echo "2. Add your custom domain"
        echo "3. Update DNS records as instructed"
        ;;
    2)
        echo ""
        echo "📦 Vercel Deployment:"
        if ! command -v vercel &> /dev/null; then
            echo "Installing Vercel CLI..."
            npm install -g vercel
        fi
        echo "Running Vercel deployment..."
        vercel
        ;;
    3)
        echo ""
        echo "📦 GitHub Pages Deployment Instructions:"
        echo "1. Create a new repository on GitHub"
        echo "2. Initialize git in this folder:"
        echo "   git init"
        echo "   git add ."
        echo "   git commit -m 'Initial commit'"
        echo "3. Add remote and push:"
        echo "   git remote add origin YOUR_REPO_URL"
        echo "   git branch -M main"
        echo "   git push -u origin main"
        echo "4. Enable GitHub Pages in repository settings"
        echo "5. Select 'main' branch as source"
        ;;
    4)
        echo ""
        echo "📦 Creating deployment package..."
        timestamp=$(date +%Y%m%d_%H%M%S)
        zip_name="portfolio_${timestamp}.zip"
        
        # Create zip excluding unnecessary files
        zip -r "$zip_name" . -x "*.git*" "*.DS_Store" "node_modules/*" "*.sh" "create-placeholders.html" "*.md" "PaulMooreResume2026.docx"
        
        echo "✅ Package created: $zip_name"
        echo ""
        echo "You can now upload this ZIP file to any hosting service."
        ;;
    5)
        echo ""
        echo "🌐 Starting local server..."
        echo "Opening http://localhost:8000 in your browser..."
        echo "Press Ctrl+C to stop the server"
        echo ""
        
        # Try to open in browser
        if command -v xdg-open &> /dev/null; then
            xdg-open http://localhost:8000 &
        elif command -v open &> /dev/null; then
            open http://localhost:8000 &
        fi
        
        python3 -m http.server 8000
        ;;
    6)
        echo "Goodbye! 👋"
        exit 0
        ;;
    *)
        echo "Invalid choice. Please run the script again."
        exit 1
        ;;
esac

echo ""
echo "✨ Deployment helper completed!"

# Made with Bob
