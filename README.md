# Express App Generator

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
1. Creates an npm project with <code>express</code>,<code>cors</code>,<code>morgan</code> and <code>nodemon</code> packages
2. Creates an index.js file ready to run
3. Creates a public folder with index.html,style.css and app.js files with their basic structure

In order to launch the express app you need to change the scripts in the <code>package.json</code> file

## TODO
 - [ ] Let user install his/her own dependencies
