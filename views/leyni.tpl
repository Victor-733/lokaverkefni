<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Editor</title>
    <link rel="stylesheet" type="text/css" media="screen" href="/static/welcome-styles.css" />
</head>
<body>
    <header>
        <h2>Osu! Editor<p class="small">to the beat!</p></h2>
    </header>
    <div class="container">
        <h2>Welcome to the editor page: {{u}}</h2>
        <a href="/new-post" class="button">Make a new post!</a>
        <a href="/delete-post" class="button">Delete a post!</a>
        <a href="/edit-post" class="button">Edit a post!</a>
        <a href="/" class="button-out">Log out</a>
    </div>
    <footer>&copy; Victor Wahid Ívarsson 2018</footer>
</body>
</html>