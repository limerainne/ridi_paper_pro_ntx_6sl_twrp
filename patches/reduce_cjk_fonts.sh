
# remove big fallback fonts
rm recovery/gui/theme/extra-languages/fonts/DroidSansFallback.ttf

# change removed font into...
sed -i 's/DroidSansFallback.ttf/NotoSansCJKjp-Regular.ttf/' *.xml

