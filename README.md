# Express App Generator
[![GitHub license](https://img.shields.io/github/license/Naereen/StrapDown.js.svg)](https://github.com/GabrielCrackPro/express-app-generator/master/LICENSE)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](https://github.com/GabrielCrackPro/express-app-generator/pulls)

Script that generates a express app automatically

## How to run?

Run

```
 python create.py
```
```
./create.sh
```
If <code>create.sh</code> script dosen't work try running <code>chmod +x create.sh</code> and run the script again

## How it works?
1. Creates an npm project with this packages: 
  - <a href="https://www.npmjs.com/package/express" target="blank">Express</a>
  - <a href="https://www.npmjs.com/package/cors" target="blank">Cors</a>
  - <a href="https://www.npmjs.com/package/morgan" target="blank">Morgan</a>
  - <a href="https://www.npmjs.com/package/nodemon" target="blank">Nodemon</a>
2. Creates an index.js file ready to run
3. Creates a public folder with index.html,style.css and app.js files with their basic structure

In order to launch the express app you need to change the scripts in the <code>package.json</code> file
<br>
Use bash version. Python is not finished yet

## Recomendations

If you want to use this script anywhere create an alias in your terminal config file (.bashrc or .zshrc). Add this line to the bottom:
```
alias express="bash LOCATION/create.sh"
````
Replace LOCATION with the absolute route of the create.sh file
<br>
Now you can create an express app anywhere using the express command

## TODO
 - [ ] Let user install his/her own dependencies

