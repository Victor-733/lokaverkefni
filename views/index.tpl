<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>osu! Blog</title>
    <link rel="stylesheet" type="text/css" media="screen" href="/static/styles.css" />
</head>
<body>
    <header>
        <h2>Osu! Blog <p class="small">to the beat!</p></h2>
    </header>
    <div class="button">
        <a class="sign-in" href="/sign-in">Sign In</a>
    </div>
    <div class="container">
        <h1>Feed:</h1>
        <h4>Newest posts made by circle clickers... <br> Find out what the community is up to!</h4>
        <hr>
            % for row in rows:
            <div class="news">
                <h3>{{row[0]}}</h3>
                <p>{{!row[1]}}</p>
                <p class="author">{{row[2]}}</p>
            </div>
            % end
    </div>
    <footer>
        <p>&copy; 2018, Victor Wahid Ívarsson</p>
    </footer>
</body>
</html>