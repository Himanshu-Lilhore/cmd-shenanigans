$content = Get-Content package.json -Raw
$content = $content -replace '"scripts": \{[^\}]*\}', '"scripts": {
    "dev": "nodemon index.js",
    "start": "node index.js",
    "test": "echo \"Error: no test specified\" && exit 1"
}'
Set-Content package.json $content
