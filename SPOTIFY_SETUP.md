# 🎵 Spotify Integration Setup Guide

This guide will help you set up the dynamic Spotify integration that shows your personal music trends on your website.

## 📋 Prerequisites

1. **Spotify Account** - You need a Spotify account
2. **Spotify Developer Account** - Register at [Spotify Developer Dashboard](https://developer.spotify.com/dashboard)

## 🔧 Step-by-Step Setup

### 1. Create a Spotify App

1. Go to [Spotify Developer Dashboard](https://developer.spotify.com/dashboard)
2. Click "Create App"
3. Fill in the details:
   - **App name**: `Your Name - Personal Website`
   - **App description**: `Personal website Spotify integration`
   - **Website**: `https://yourusername.github.io`
   - **Redirect URI**: `http://localhost:4000` (for development)
4. Click "Save"

### 2. Get Your Credentials

1. In your Spotify app dashboard, you'll see:
   - **Client ID**: `a94806b52ab7410db600967c30235d8a` (already configured)
   - **Client Secret**: Click "Show Client Secret" and copy it

### 3. Configure Environment Variables

1. **For Development** (`.env` file):

   ```bash
   SPOTIFY_CLIENT_ID=a94806b52ab7410db600967c30235d8a
   SPOTIFY_CLIENT_SECRET=your_actual_client_secret_here
   SPOTIFY_REDIRECT_URI=http://localhost:4000
   ```

2. **For Production** (Netlify/Vercel):
   - Add `SPOTIFY_CLIENT_SECRET` as an environment variable
   - Update `SPOTIFY_REDIRECT_URI` to your production URL

### 4. Set Up Redirect URIs

In your Spotify Developer Dashboard:

**For Development:**

- Add: `http://localhost:4000`

**For Production:**

- Add: `https://yourusername.github.io`

### 5. Deploy the Backend Function

The integration requires a serverless function to handle OAuth token exchange.

**Option A: Netlify Functions**

1. Create a `netlify.toml` file:

   ```toml
   [build]
     functions = "_functions"

   [build.environment]
     SPOTIFY_CLIENT_SECRET = "your_client_secret"
   ```

**Option B: Vercel Functions**

1. The `_functions/spotify-token.js` file will be automatically deployed
2. Add `SPOTIFY_CLIENT_SECRET` in Vercel dashboard

## 🎯 What You'll Get

Once set up, your website will show:

- ✅ **Your actual top tracks** from the last 3 months
- ✅ **Your recently played songs**
- ✅ **Personal listening statistics**
- ✅ **Real album artwork** for each track
- ✅ **Your unique artist count**

## 🔍 Testing

1. Run your Jekyll site: `bundle exec jekyll serve`
2. Go to your about page
3. Click "Connect Spotify"
4. Authorize your Spotify account
5. See your personal music trends!

## 🛠️ Troubleshooting

**"Failed to authenticate with Spotify"**

- Check your Client Secret is correct
- Verify Redirect URI matches exactly
- Ensure your backend function is deployed

**"Failed to load music statistics"**

- Check your Spotify app has the correct scopes
- Verify the access token is valid
- Check browser console for errors

## 🔒 Security Notes

- ✅ `.env` file is in `.gitignore` (won't be committed)
- ✅ Client Secret is only used server-side
- ✅ Access tokens are stored locally in browser
- ✅ No sensitive data is exposed in frontend code

## 📞 Support

If you encounter issues:

1. Check the browser console for errors
2. Verify all environment variables are set
3. Ensure your Spotify app is properly configured
4. Check that your backend function is accessible

---

**🎵 Happy listening! Your personal music trends will now be live on your website!**
