<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>New Post</title>
    <script src="https://cloud.tinymce.com/stable/tinymce.min.js"></script>
    <script>tinymce.init({ selector:'textarea' });</script>
    <link rel="stylesheet" type="text/css" media="screen" href="/static/edit-styles.css" />
</head>
<body>
    <header>
        <h2>Osu! Editor <p class="small">to the beat!</p></h2>
    </header>
    <div class="container">
    <h2>Post Editor:</h2>
        <form action="/donewpost" method="post" accept-charset="ISO-8859-1" id="np">
            <p>Title:</p>
            <input type="text" name="title" required> <br> <br>
            <textarea name="story"></textarea>
            <label>Author username/account name:</label>
            <input type="text" name="author"> <br> <br>
            <input type="submit" value="Submit" class="button">
        </form>
        <a href="/" class="button">Home</a>
    </div>
    <footer>&copy; Victor Wahid Ívarsson 2018</footer>
</body>
</html>