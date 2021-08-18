echo "EXPRESS APP GENERATOR"
echo "============================="
echo -e "[ i ] Initializing npm project..."
echo -e "\n"
npm --silent init -y 2>/dev/null
echo "[ ✔ ] Project initialized successfully"
echo -e "\n"
echo "[ i ] Instaling dependencies..."
npm --silent i express cors morgan 2>/dev/null && npm --silent i nodemon --save-dev 2>/dev/null
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
echo -e "\n"
echo "[ i ] Opening..."
sleep 2
echo "=================================="
vim .
rm -r create.sh
exit 1
