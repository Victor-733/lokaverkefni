<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Members</title>
    <link rel="stylesheet" type="text/css" media="screen" href="/static/styles.css" />
</head>
<body>
    <h2>Member list</h2>
    <p>the member team are as follows:</p>
    <table border="1">
    % for row in rows:
    <tr>
        % for col in row:
            <td>{{col}}</td>
        % end
    </tr>
    % end
    </table>
    <a href="/">Back to homepage</a>
</body>
</html>