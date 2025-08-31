# 🚀 Netlify Deployment with Custom Domain

## ✅ **Step 1: Push to GitHub**
```bash
git add .
git commit -m "Configure for Netlify with custom domain"
git push origin master
```

## ✅ **Step 2: Deploy to Netlify**

### 2.1 Connect Repository
1. Go to [app.netlify.com](https://app.netlify.com)
2. Click "New site from Git"
3. Choose "GitHub"
4. Select: `brandonconcepcion.github.io`

### 2.2 Build Settings (Auto-detected)
- ✅ **Build command**: `bundle exec jekyll build`
- ✅ **Publish directory**: `_site`
- ✅ **Functions directory**: `_functions`

### 2.3 Environment Variables (CRITICAL)
Go to **Site settings** → **Environment variables** and add:

```
SPOTIFY_CLIENT_ID = a94806b52ab7410db600967c30235d8a
SPOTIFY_CLIENT_SECRET = c247742caf3d4416b7265a2163474c78
```

## ✅ **Step 3: Set Up Custom Domain**

### 3.1 Add Custom Domain in Netlify
1. Go to **Domain settings** in your Netlify dashboard
2. Click "Add custom domain"
3. Enter: `brandonconcepcion.com`
4. Click "Verify"

### 3.2 Configure DNS (Choose One Option)

**Option A: Netlify DNS (Recommended)**
1. In Netlify, click "Configure Netlify DNS"
2. Update your domain registrar to use Netlify's nameservers:
   ```
   dns1.p01.nsone.net
   dns2.p01.nsone.net
   dns3.p01.nsone.net
   dns4.p01.nsone.net
   ```

**Option B: External DNS**
1. Add these DNS records at your domain registrar:
   ```
   Type: A
   Name: @
   Value: 75.2.60.5
   
   Type: CNAME
   Name: www
   Value: your-site-name.netlify.app
   ```

### 3.3 Wait for DNS Propagation
- DNS changes can take 24-48 hours
- You can check status in Netlify dashboard

## ✅ **Step 4: Update Spotify Dashboard**

1. Go to [Spotify Developer Dashboard](https://developer.spotify.com/dashboard)
2. Click your app
3. Go to **Settings**
4. Add Redirect URI: `https://brandonconcepcion.com`

## ✅ **Step 5: Test Everything**

1. Visit `https://brandonconcepcion.com`
2. Go to About page
3. Click "Connect Spotify"
4. Authorize your account
5. See your music trends! 🎵

## 🔧 **Troubleshooting**

### If build fails:
- Check that all files are committed
- Verify `netlify.toml` exists
- Ensure `_functions/spotify-token.js` exists

### If custom domain doesn't work:
- Check DNS settings at your registrar
- Wait for DNS propagation (24-48 hours)
- Verify domain is added in Netlify dashboard

### If Spotify doesn't work:
- Check environment variables in Netlify
- Verify redirect URI in Spotify dashboard
- Check function logs in Netlify dashboard

## 🎯 **Success Indicators**

- [ ] Site deploys on Netlify
- [ ] Custom domain is configured
- [ ] Environment variables are set
- [ ] Spotify redirect URI is updated
- [ ] Function is accessible
- [ ] Spotify connection works
- [ ] Music trends display
- [ ] Auto-refresh works

## 🌐 **Domain Status Check**

You can check your domain status at:
- [whatsmydns.net](https://whatsmydns.net) - Check DNS propagation
- [netlify.com/app/sites](https://netlify.com/app/sites) - Check Netlify status

---

**🎉 Once complete, your site will be live at https://brandonconcepcion.com with dynamic Spotify integration!**
