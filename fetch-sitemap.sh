#!/bin/bash

# Ask user for sitemap file path
read -p "Enter sitemap file path: " SITEMAP_FILE

# Check if empty
if [ -z "$SITEMAP_FILE" ]; then
  echo "❌ No file path entered. Exiting."
  exit 1
fi

# Check if file exists
if [ ! -f "$SITEMAP_FILE" ]; then
  echo "❌ File '$SITEMAP_FILE' not found. Exiting."
  exit 1
fi

echo "Processing sitemap file: $SITEMAP_FILE ..."

# Parse <loc>, convert to JSON array
grep "<loc>" "$SITEMAP_FILE" | \
sed -E 's/.*<loc>(.*)<\/loc>.*/"\1",/' | \
sed '$ s/,$//' | \
awk 'BEGIN {print "["} {print} END {print "]"}'
