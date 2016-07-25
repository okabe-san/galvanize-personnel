echo "hi" && \

# mkdir scripts && \
# mkdir styles && \

touch ./src/main.js && \
echo "console.log('sanity check!');" > ./src/main.js

touch ./src/main.css && \
echo "h1 {
        font-family: Helvetica, sans serif;
      }" > ./src/main.css


touch index.html && \
echo "<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <link rel="stylesheet" href="main.css">
    <title></title>
  </head>

  <body>


    <script   src="https://code.jquery.com/jquery-2.2.4.min.js"   integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44="   crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
    <script src="main.js"></script>

  </body>

</html>
" > ./src/index.html
