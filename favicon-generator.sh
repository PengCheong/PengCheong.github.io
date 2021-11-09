convert -resize 512x512 -background none favicon.svg icon-512.png
convert -resize 192x192 icon-512.png icon-192.png
convert -resize 140x140 icon-512.png apple-touch-icon.png
mogrify -border 20 -bordercolor transparent apple-touch-icon.png
convert -resize 32x32 icon-512.png icon32.png
convert -resize 16x16 icon-512.png icon16.png
convert icon32.png icon16.png favicon.ico
rm icon32.png icon16.png
cat <<EOF | tee -a manifest.webmanifest
{
  "icons": [
    { "src": "/icon-192.png", "sizes": "192x192", "type": "image/png" },
    { "src": "/icon-512.png", "sizes": "512x512", "type": "image/png" }
  ]
}
EOF
