#!/bin/sh

mkdir -p dest

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

<body>

<b>Impressum:</b>
<h3>Bittorf</h3>
<h3>Friesstraße 36</h3>
<h3>99423 Weimar</h3>

</body>

</html>
EOF

exit 0
