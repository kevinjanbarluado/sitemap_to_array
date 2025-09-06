# Sitemap to Array Converter

A lightweight bash script that converts XML sitemap files into JSON array format, extracting all URLs from `<loc>` tags.

## What it does

This tool solves the common problem of extracting URLs from XML sitemaps in a machine-readable format. Instead of manually parsing XML or writing custom scripts, this utility provides a simple command-line interface to convert sitemap files into clean JSON arrays.

## Key Features

- **Simple**: One command converts sitemap to JSON array
- **Lightweight**: No external dependencies beyond standard Unix tools
- **Fast**: Processes sitemaps quickly using efficient text processing
- **Reliable**: Handles various XML sitemap formats
- **Portable**: Works on any Unix-like system with bash

## Perfect for

- Website migration tools
- SEO analysis scripts  
- URL validation systems
- Content management automation
- API integrations requiring URL lists
- Development workflows

## Quick Start

```bash
./fetch-sitemap.sh
# Enter sitemap file path: sitemap.xml
# Output: ["https://example.com/", "https://example.com/about/", ...]
```

## License

MIT License - Free to use, modify, and distribute.
