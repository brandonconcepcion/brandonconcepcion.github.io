# 🚀 Netlify Deployment Guide

This guide will walk you through deploying your Jekyll website with Spotify integration to Netlify.

## 📋 Prerequisites

1. **GitHub Repository** - Your code should be on GitHub
2. **Netlify Account** - Sign up at [netlify.com](https://netlify.com)
3. **Spotify Developer Account** - Already set up

## 🔧 Step 1: Prepare Your Repository

### 1.1 Update Configuration Files

Your repository should now have these files:
- ✅ `netlify.toml` - Netlify configuration
- ✅ `package.json` - Node.js dependencies
- ✅ `_functions/spotify-token.js` - Serverless function
- ✅ `_config_spotify.yml` - Spotify configuration

### 1.2 Update Spotify Redirect URI

In your `_config_spotify.yml`, update the redirect URI to your Netlify domain:

```yaml
spotify:
  client_id: "a94806b52ab7410db600967c30235d8a"
  client_secret: "c247742caf3d4416b7265a2163474c78"
  redirect_uri: "https://your-site-name.netlify.app"  # Update this
```

### 1.3 Commit and Push

```bash
git add .
git commit -m "Add Netlify configuration and Spotify integration"
git push origin main
```

## 🌐 Step 2: Deploy to Netlify

### 2.1 Connect to GitHub

1. Go to [app.netlify.com](https://app.netlify.com)
2. Click "New site from Git"
3. Choose "GitHub"
4. Select your repository: `brandonconcepcion.github.io`

### 2.2 Configure Build Settings

Netlify should auto-detect these settings from `netlify.toml`:

- **Build command**: `bundle exec jekyll build`
- **Publish directory**: `_site`
- **Functions directory**: `_functions`

### 2.3 Set Environment Variables

**IMPORTANT**: You must set these environment variables in Netlify:

1. Go to **Site settings** → **Environment variables**
2. Add these variables:

```
SPOTIFY_CLIENT_ID = a94806b52ab7410db600967c30235d8a
SPOTIFY_CLIENT_SECRET = c247742caf3d4416b7265a2163474c78
```

### 2.4 Deploy

Click "Deploy site" and wait for the build to complete.

## 🎵 Step 3: Configure Spotify

### 3.1 Update Spotify Dashboard

1. Go to [Spotify Developer Dashboard](https://developer.spotify.com/dashboard)
2. Click on your app
3. Go to **Settings**
4. Add your Netlify domain to **Redirect URIs**:
   ```
   https://your-site-name.netlify.app
   ```

### 3.2 Test the Integration

1. Visit your Netlify site
2. Go to the About page
3. Click "Connect Spotify"
4. Authorize your account
5. See your music trends!

## 🔧 Step 4: Custom Domain (Optional)

### 4.1 Add Custom Domain

1. In Netlify dashboard, go to **Domain settings**
2. Click "Add custom domain"
3. Enter your domain (e.g., `brandonconcepcion.com`)
4. Follow DNS setup instructions

### 4.2 Update Spotify Redirect URI

Update your Spotify app's redirect URI to include your custom domain:
```
https://brandonconcepcion.com
```

## 🛠️ Troubleshooting

### Build Errors

**"Bundle not found"**
```bash
# Install dependencies locally first
bundle install
```

**"Functions not found"**
```bash
# Install Node.js dependencies
npm install
```

### Spotify Connection Issues

**"Failed to authenticate"**
- Check environment variables in Netlify
- Verify redirect URI in Spotify dashboard
- Ensure function is deployed correctly

**"CORS errors"**
- Check that `netlify.toml` has correct CORS headers
- Verify function is in `_functions` directory

### Function Errors

**"Function not found"**
- Ensure `_functions/spotify-token.js` exists
- Check `netlify.toml` has correct functions path
- Verify function is committed to Git

## 📊 Monitoring

### 2.1 Check Function Logs

1. Go to **Functions** tab in Netlify
2. Click on `spotify-token`
3. View **Logs** for any errors

### 2.2 Test Function Locally

```bash
# Install Netlify CLI
npm install -g netlify-cli

# Test locally
netlify dev
```

## 🔒 Security Notes

- ✅ Environment variables are encrypted in Netlify
- ✅ Client secret is only used server-side
- ✅ CORS is properly configured
- ✅ Functions are isolated and secure

## 🎯 Success Checklist

- [ ] Site deploys successfully on Netlify
- [ ] Environment variables are set
- [ ] Spotify redirect URI is updated
- [ ] Function is accessible at `/.netlify/functions/spotify-token`
- [ ] Spotify connection works
- [ ] Music trends display correctly
- [ ] Auto-refresh works every 7 days

## 🚀 Advanced Features

### Custom Build Hooks

You can trigger rebuilds via webhook:
```
https://api.netlify.com/build_hooks/YOUR_HOOK_ID
```

### Branch Deploys

Set up preview deployments for pull requests:
1. Go to **Site settings** → **Build & deploy**
2. Enable "Deploy contexts"

---

**🎉 Congratulations! Your website with Spotify integration is now live on Netlify!**
