#!/bin/sh

test -d dest && rm -fR dest
mkdir -p dest
cp -pR images/ dest/

cat >dest/index.html <<EOF
<!DOCTYPE html>
<html lang=de>

<head>
 <meta charset="utf-8">
 <meta name="keywords" content="website speedup and image size optimization">
 <meta name="viewport" content="width=device-width, initial-scale=1">
 <meta name="description" content="website speedup and image size optimization">

 <title>quicky.club: LevelUP your website</title>

 <link rel="canonical" href="https://quicky.club">
</head>

<body bgcolor=lime>

<b>Impressum:</b>
<h3>Bittorf</h3>
<h3>Friesstraße 36</h3>
<h3>99423 Weimar</h3>

</body>

</html>
EOF

cp normalize.css dest/
cp magick.css dest/
cp private.css dest/

cp logo-variante1-quicky-club.png dest/images/
cp logo-variante2-quicky-club.png dest/images/
cp translate.svg dest/

cp index.html dest/index-raw.html
cp sitemap.xml dest/
cp robots.txt dest/

unix2iso8601() { date +'%Y-%m-%dT%H:%M:%S%:z' -d@"$1"; }
PATTERN='2024-04-17T20:33:40+00:00-A'
UNIX="$( date +%s )"
NEW="$( unix2iso8601 "$UNIX" )"
sed -i "s/$PATTERN/$NEW/" dest/sitemap.xml

( cd dest/images && ../../replace ../index-raw.html . >../index.html )


echo
echo "# list all files in dest/"
( cd dest && find . -type f -ls )

echo
exit 0
