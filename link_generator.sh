#!/usr/bin/env bash
cat << EOF
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="./css/reset.css">
    <link rel="stylesheet" href="./css/links-list.css">
    <link rel="stylesheet" href="./css/mobile.css">
</head>
<body>
    <ul class="links-list">
EOF

sort favoritos.txt | awk -F ': ' '{printf "\t\t<li class=\42item\42> <a class=\42link\42 href=\42%s\42 target=\42_blank\42> %s </a></li>\n", $2, $1}'


cat << EOF 
    </ul>
</body>
</html>
EOF
