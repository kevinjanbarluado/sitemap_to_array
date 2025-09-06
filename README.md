# Sitemap to Array Converter

A simple bash script that converts XML sitemap files into JSON array format, extracting all URLs from `<loc>` tags.

## Features

- Converts XML sitemap files to JSON array format
- Extracts URLs from `<loc>` tags
- Works with local files (no internet connection required)
- Simple command-line interface
- Error handling for missing files

## Requirements

- Bash shell
- `grep`, `sed`, and `awk` (commonly available on Unix-like systems)

## Installation

1. Clone this repository:
```bash
git clone https://github.com/kevinjanbarluado/sitemap_to_array.git
cd sitemap_to_array
```

2. Make the script executable:
```bash
chmod +x fetch-sitemap.sh
```

## Usage

Run the script and provide the path to your sitemap XML file:

```bash
./fetch-sitemap.sh
```

When prompted, enter the path to your sitemap file:
```
Enter sitemap file path: sitemap-0.xml
```

### Example

Given a sitemap file like `sitemap-0.xml`:
```xml
<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
  <url>
    <loc>https://example.com/</loc>
  </url>
  <url>
    <loc>https://example.com/about/</loc>
  </url>
  <url>
    <loc>https://example.com/contact/</loc>
  </url>
</urlset>
```

The script will output:
```json
[
"https://example.com/",
"https://example.com/about/",
"https://example.com/contact/"
]
```

## Sample Sitemap

This repository includes a sample sitemap file (`sitemap-0.xml`) with URLs from rebas.co for testing purposes.

## How It Works

1. The script prompts for a sitemap file path
2. Validates that the file exists
3. Uses `grep` to find all `<loc>` tags in the XML
4. Uses `sed` to extract the URLs from the tags
5. Formats the URLs as a JSON array using `awk`

## Error Handling

- **No file path entered**: Script exits with error message
- **File not found**: Script exits with error message
- **Invalid XML format**: Script will still attempt to extract URLs from `<loc>` tags

## License

This project is open source and available under the [MIT License](LICENSE).

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## Support

If you encounter any issues or have questions, please open an issue on GitHub.
