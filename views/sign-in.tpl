<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Sign In</title>
    <link rel="stylesheet" type="text/css" media="screen" href="/static/form-styles.css" />
</head>
<body>
    <h3>Sign Up</h3><br>
    <form action="/donyskra" method="post", accept-charset="ISO-8859-1", id="ny">
        Username: <br>
        <input type="text", name="user"> <br>
        Password: <br>
        <input type="password", name="pass"> <br>
        Name: <br>
        <input type="text" name="nafn" required><br>
        <input type="submit" value="Nýskrá">
        <input type="reset" value="Hreinsa">
    </form>
    <hr>
    <h3>Sign In</h3><br>
    <form action="/doinnskra" method="post" accept-charset="ISO-8859-1", id="inn">
        Username: <br>
        <input type="text", name="user", required><br>
        Password: <br>
        <input type="password", name="pass", required><br>
        <input type="submit" value="Nýskrá">
        <input type="reset" value="Hreinsa">
    </form>
    <a href="/">Til Baka</a>
</body>
</html>