<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Sign In</title>
    <link rel="stylesheet" type="text/css" media="screen" href="/static/form-styles.css" />
</head>
<body>
    <header>
        <h2>Osu! Blog <p class="small">to the beat!</p></h2>
    </header>
    <div class="container">
        <h3>Sign Up</h3><br>
        <form action="/donyskra" method="post", accept-charset="ISO-8859-1", id="ny">
            Username: <br>
            <input type="text", name="username"> <br>
            Password: <br>
            <input type="password", name="pass"> <br>
            <div class="row">
                <input type="submit" value="Sign Up" class="button">
                <input type="reset" value="Clear All" class="button">
            </div>
        </form>
        <hr>
        <h3>Sign In</h3><br>
        <form action="/doinnskra" method="post" accept-charset="ISO-8859-1", id="inn">
            Username: <br>
            <input type="text", name="username", required><br>
            Password: <br>
            <input type="password", name="pass", required><br>
            <div class="row">
                <input type="submit" value="Sign In" class="button">
                <input type="reset" value="Clear All" class="button">
            </div>
        </form>
        <a href="/" class="button back">Back</a>
    </div>
    <footer>
        <p>&copy; 2018, Victor Wahid Ívarsson</p>
    </footer>
</body>
</html>