#!/bin/bash

# Restore production config
if [ -f "_config.yml.backup" ]; then
    mv _config.yml.backup _config.yml
    echo "✅ Switched to production configuration"
    echo "🚀 Ready for GitHub Pages deployment"
else
    echo "❌ No backup config found. Creating production config..."
    
    # Create production config
    cat > _config.yml << 'EOF'
# Welcome to Jekyll!
#
# This config file is meant for settings that affect your entire site, values
# which you are expected to set up once and rarely need to edit after that.
# For technical reasons, this file is *NOT* reloaded automatically when you use
# `jekyll serve -l -H localhost`. If you change this file, please restart the
# server process.

# Basic Site Settings
locale: "en-US"
title: "Brandon Concepcion"
title_separator: "-"
name: &name "Brandon Lee Concepcion"
description: &description "personal description"
url: "https://brandonconcepcion.com" # the base hostname & protocol for your site
baseurl: "" # the subpath of your site, e.g. "/blog"
repository: "brandonconcepcion/brandonconcepcion.github.io"
EOF

    echo "✅ Created production configuration"
fi
