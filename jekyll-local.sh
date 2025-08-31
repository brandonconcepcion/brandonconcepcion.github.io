#!/bin/bash

# Backup current config
cp _config.yml _config.yml.backup

# Create local config
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
url: "" # the base hostname & protocol for your site e.g. "https://mmistakes.github.io"
baseurl: "" # the subpath of your site, e.g. "/blog"
repository: "brandonconcepcion/brandonconcepcion.github.io"
EOF

# Copy the rest of the config from backup
tail -n +18 _config.yml.backup >> _config.yml

echo "✅ Switched to local development configuration"
echo "🌐 Run: bundle exec jekyll serve"
echo "📝 To switch back to production, run: ./jekyll-production.sh"
