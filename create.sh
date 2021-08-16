
# COLORS

red="\e[1;31m"
green="\e[1;32m"
yellow="\e[1;33m"
blue="\e[1;34m"
reset="\e[0"

echo "EXPRESS APP GENERATOR"
echo "============================="
echo -e "$green[ ✔ ]$reset Initializing npm project..."
echo "\n"
npm --silent --quiet init -y 2>/dev/null
sleep 3
echo "[ ✔ ] Project initialized successfully"
echo "\n"
echo "[ ✔ ] Instaling dependencies..."
npm --silent i express cors morgan && npm --silent i nodemon --save-dev 2>/dev/null
sleep 3
echo "\n"
echo "[ ✔ ] Dependencies installed successfully"
sleep 3
echo "\n"
echo "[ ✔ ] Generating folder structure..."
echo "\n"
touch index.js 2>/dev/null
sleep 3
echo "[ ✔ ] Main file created"
echo "\n"
mkdir public && cd public && touch index.html && touch style.css && touch app.js 2>/dev/null
sleep 3
echo "[ ✔ ] Basic structure created successfully"
echo "\n"
sleep 3
echo "[ ✔ ] Project created successfully"
cd ..
echo "\n"
echo "[ ✔ ] Opening..."
sleep 2
echo "=================================="
sleep 3
vim .
rm -r create.sh
exit 1
