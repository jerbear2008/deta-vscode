# install and build frontend and extensions
cd frontend

# Install dependencies
npm i

# Move dependencies to the right spots
split -C 3MB -d node_modules/vscode-web/dist/out/vs/workbench/workbench.web.main.js node_modules/vscode-web/dist/out/vs/workbench/workbench.web.main.js.part
mkdir vscode-web
cp -r ./node_modules/vscode-web/dist/* ./vscode-web
cp ./node_modules/vscode-web/dist/{code-192.png,code-512.png,favicon.ico,manifest.json} .

# Build extensions
cd extensions/memfs
npm i
npm run compile