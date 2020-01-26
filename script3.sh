cd --
echo "nombre del projecto: "
read directorio;
mkdir $directorio;
cd $directorio;
npm init --yes
npm install express morgan mongoose multer uuid timeago.js fs-extra bcrypt-nodejs passport passport-local express-session connect-flash express-handlebars method-override helmet && npm install nodemon -D
mkdir src
cd src
mkdir views
mkdir model
mkdir passport
mkdir public
mkdir routes
mkdir helpers
touch index.js
echo "todos los paquetes instalados correctamente"
