#!/bin/bash

echo "🎵 Spotify Integration Setup"
echo "============================"
echo ""

# Check if .env file exists
if [ ! -f .env ]; then
    echo "Creating .env file..."
    cat > .env << EOF
# Spotify API Configuration
SPOTIFY_CLIENT_ID=a94806b52ab7410db600967c30235d8a
SPOTIFY_CLIENT_SECRET=your_spotify_client_secret_here
SPOTIFY_REDIRECT_URI=http://localhost:4000

# Development/Production URLs
SITE_URL=http://localhost:4000
PRODUCTION_URL=https://brandonconcepcion.github.io

# Environment
NODE_ENV=development
EOF
    echo "✅ .env file created!"
else
    echo "✅ .env file already exists"
fi

echo ""
echo "📋 Next Steps:"
echo "1. Get your Spotify Client Secret from: https://developer.spotify.com/dashboard"
echo "2. Replace 'your_spotify_client_secret_here' in the .env file with your actual secret"
echo "3. Set up your Redirect URI in Spotify Dashboard: http://localhost:4000"
echo "4. For production, update the REDIRECT_URI to your actual domain"
echo ""
echo "🔧 For Netlify deployment:"
echo "   - Add SPOTIFY_CLIENT_SECRET as an environment variable in Netlify dashboard"
echo "   - Update REDIRECT_URI to your production URL"
echo ""
echo "🔧 For Vercel deployment:"
echo "   - Add SPOTIFY_CLIENT_SECRET as an environment variable in Vercel dashboard"
echo "   - Update REDIRECT_URI to your production URL"
echo ""
echo "🎯 Your Spotify integration is ready to use!"
