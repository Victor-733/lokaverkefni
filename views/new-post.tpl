<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>New Post</title>
    <script src="https://cloud.tinymce.com/stable/tinymce.min.js"></script>
    <script>tinymce.init({ selector:'textarea' });</script>
    <link rel="stylesheet" type="text/css" media="screen" href="main.css" />
</head>
<body>
    <h2>Post Editor:</h2>
    <form action="/donewpost" method="post", accept-charset="ISO-8859-1", id="np"></form>
        <p>Title:</p>
        <input type="text" name="title"> <br> <br>
        <textarea></textarea>
        <input type="submit" value="Submit">
    </form>
</body>
</html>