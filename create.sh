echo "EXPRESS APP GENERATOR"
echo "============================="
echo -e "[ i ] Initializing npm project..."
echo -e "\n"
npm init --silent -y 2>/dev/null
echo "[ ✔ ] Project initialized successfully"
echo -e "\n"
echo "[ i ] Instaling dependencies..."
npm i --silent express cors morgan 2>/dev/null && npm i --silent nodemon --save-dev 2>/dev/null
sleep 3
echo -e "\n"
echo "[ ✔ ] Dependencies installed successfully"
sleep 3
echo -e "\n"
echo "[ i ] Generating folder structure..."
echo -e "\n"
touch index.js 2>/dev/null
sleep 3
echo "[ i ] Main file created"
echo -e "\n"
mkdir public 2>/dev/null && cd public 2>/dev/null && touch index.html 2>/dev/null && touch style.css 2>/dev/null && touch app.js 2>/dev/null
sleep 3
echo "[ i ] Basic structure created successfully"
echo -e "\n"
sleep 3
echo "[ i ] Project created successfully"
cd ..
echo "=================================="
exit 0
