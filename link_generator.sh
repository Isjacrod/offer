#!/usr/bin/env bash
cat << EOF
<!DOCTYPE html>
<html>
<head>
    <style>
        body {
            font-family: sans-serif;
        }
        a:link, a:visited, a:active {
            color: black;
        }
        a {
            display: block;
            text-decoration: none;
        }
        a:hover {
            color: red;
        }
    </style>
</head>
<body>
EOF

sort favoritos.txt | awk -F ': ' '{printf "<a href=\42%s\42 target=\42_blank\42> %s </a>\n", $2, $1}'


cat << EOF 
</body>
</html>
EOF
