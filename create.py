import os

# Install dependencies
def run(cmd):
    print(cmd)
    os.system(cmd)

def write(file,content):
    f = open(file, "w+")
    f.write(content)
    f.write("\n")

index_contents = """
const express = require('express');
const cors = require('cors');
const morgan = require('morgan');

const public = express.static("public")

const app = express();
const port = process.env.PORT || 3000;

app.use(cors())
app.use(morgan("dev"))
app.use(public)

app.listen(port, () => {
    console.log("Listening on port 3000");
})
"""
html_contents = """
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    
</body>
</html>
"""
comands = [
    "npm init -y",
    "npm i express cors morgan",
    "npm i nodemon --save-dev",
    "mkdir public",
    "cd public",
    write("index.js", index_contents),
    write("index.html", html_contents),
    "cd ..",
]
for comand in range(len(comands)):
    run(comands[comand])

print("Express app created")