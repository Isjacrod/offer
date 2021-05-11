#!/usr/bin/env bash
cat << EOF
<!DOCTYPE html>
<html>
<head>
    <style>
        body {
            font-family: sans-serif;
            width: 80vw;
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
        @media (orientation: portrait) {
            body {
                font-size : 5vw;
            }
        }
    </style>
</head>
<body>
<section class="links">
EOF

sort favoritos.txt | awk -F ': ' '{printf "<a href=\42%s\42 target=\42_blank\42> %s </a>\n", $2, $1}'


cat << EOF 
</section>
</body>
</html>
EOF
