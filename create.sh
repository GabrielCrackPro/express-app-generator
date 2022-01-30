# COLORS
BLUE='\033[1;34m'
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

index_content="
const express = require('express') \n
const cors = require('cors') \n
const morgan = require('morgan') \n

const public = express.static('public') \n

const app = express() \n
const port = process.env.PORT || 3000 \n

app.use(cors()) \n
app.use(morgan('dev')) \n
app.use(public) \n

app.listen(port, () => {
console.log('Listening on port 3000...')
})
"
html_content="
<!DOCTYPE html> \n
<html> \n
 <head> \n
   <title>Document</title> \n
   <link rel='stylesheet' href='style.css'> \n 
  </head> \n
  <body> \n
   <script src='app.js'></script> \n
 </body> \n
</html> \n
"
style_content="
*{ \n
 margin: 0; \n
 padding: 0; \n
 box-sizing: border-box; \n
} \n
"
tput civis
echo
echo "${BLUE}[ * ]${NC} Starting Express.js App Generator..."
sleep 2
echo
echo "${YELLOW}[ i ]${NC} Initializing npm project..."
echo
npm init -y --silent 1>&2>/dev/null
sleep 2
echo "${GREEN}[ ✔ ]${NC} Project initialized successfully"
echo
echo "${YELLOW}[ i ]${NC} Installing dependencies..."
echo
npm i --silent express 2>/dev/null
sleep 2
echo "${GREEN}[ ✔ ]${NC} express.js installed successfully"
npm i --silent cors 2>/dev/null
sleep 2
echo "${GREEN}[ ✔ ]${NC} cors installed successfully"
npm i --silent morgan 2>/dev/null
sleep 2
echo "${GREEN}[ ✔ ]${NC} morgan installed successfully"
npm i --silent nodemon --save-dev 2>/dev/null
sleep 2
echo "${GREEN}[ ✔ ]${NC} nodemon installed successfully"
sleep 3
echo
echo "${GREEN}[ ✔ ]${NC} Dependencies installed successfully"
sleep 3
echo
echo "${YELLOW}[ i ]${NC} Generating folder structure..."
echo
touch index.js && echo  $index_content > index.js
sleep 3
echo "${GREEN}[ ✔ ] $(pwd)/index.js${NC} created successfully"
mkdir public
cd public 
touch index.html && echo  $html_content > index.html
echo "${GREEN}[ ✔ ] $(pwd)/index.html${NC} created successfully"
touch style.css && echo  $style_content > style.css
echo "${GREEN}[ ✔ ] $(pwd)/style.css${NC} created successfully"
touch app.js
echo "${GREEN}[ ✔ ] $(pwd)/app.js${NC} created successfully"
sleep 3
echo
echo "${GREEN}[ ✔ ]${NC} Basic structure created successfully"
echo
sleep 3
echo "${GREEN}[ ✔ ]${NC} Project created successfully"
echo
tput cnorm
exit 0
# if user presses ctrl+c then exit
trap ctrl_c INT
function ctrl_c() {
  tput cnorm
  echo
  echo "${RED}[ x ]${NC} Exiting..."
  echo
  exit 0
}
# if user presses ctrl+z then exit
trap ctrl_c SIGTSTP