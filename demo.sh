if [ -d $1 ]; then
  echo 'error: dir exists'
  exit
else
  mkdir $1
  cd $1
  mkdir css js
  touch index.html css/style.css js/main.js
  echo "<!DOCTYPE>\n<title>Hello</title>\n<h1>Hi</h1>" > index.html
  echo "body{background: #ccc;}" > css/style.css
  echo "var string = \"hello world\"\nalert(string)" > js/main.js
  echo 'success'
  exit
fi