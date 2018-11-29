import pymysql
from bottle import *
from sys import argv
from beaker.middleware import SessionMiddleware

session_opts = {
    "session.type": "file",
    "session.data_dir": "./data",
    "session.cookie_expires": 600,
    "session.auto": True
}
app = SessionMiddleware(app(), session_opts)

@route('/')
def index():
    # connection
    conn = pymysql.connect(host="tsuts.tskoli.is", port=3306, user='1611012220', passwd='mypassword', db='1611012220_VEFlokaverkefni')

    # cursor
    c = conn.cursor()
    c.execute("SELECT title, story, author FROM posts")
    result = c.fetchall()
    c.close()
    output = template('index', rows=result)
    return output

############## SKRA INN ############################################

@route('/donyskra', method='POST')
def nyr():
    u = request.forms.get('username')
    p = request.forms.get('pass')

    # Connection
    conn = pymysql.connect(host='tsuts.tskoli.is', port=3306, user='1611012220', passwd='mypassword', db='1611012220_VEFlokaverkefni')

    #cursor
    cur = conn.cursor()
    cur.execute("SELECT count(*) FROM admins where username=%s", (u))
    result = cur.fetchone()

    if result[0] == 0:
        cur.execute("INSERT INTO admins (username, pass) VALUES(%s, %s)", (u, p))
        conn.commit()
        cur.close()
        conn.close()
        return u, " hefur verið skráður <br><a href='/'>Heim</a>"
    else:
        return u, " er frátekið notendanafn, reyndu aftur <br><a href='/#ny'>Nýskrá</a>"

############## INNSKRA #############################################

@route('/doinnskra', method='POST')
def doinn():
    u = request.forms.get('username')
    p = request.forms.get('pass')

    # Connection
    conn = pymysql.connect(host='tsuts.tskoli.is', port=3306, user='1611012220', passwd='mypassword', db='1611012220_VEFlokaverkefni')
    # cursor
    cur = conn.cursor()
    cur.execute("SELECT count(*) FROM admins where username=%s and pass=%s", (u, p))
    result = cur.fetchone()

    print(result)
    if result[0] == 1:
        cur.close()
        conn.close()
        return template('leyni', u=u)
    else:
        return template('incorrect-info.tpl')

######### NEW POST #################################################

@route("/donewpost", method="POST")
def newpost():
    t = request.forms.get('title')
    s = request.forms.get('story')
    a = request.forms.get('author')

    # Connection
    conn = pymysql.connect(host='tsuts.tskoli.is', port=3306, user='1611012220', passwd='mypassword', db='1611012220_VEFlokaverkefni')

    #cursor
    cur = conn.cursor()
    cur.execute("INSERT INTO posts (title, story, author) VALUES(%s, %s, %s)", (t, s, a))
    conn.commit()
    cur.close()
    conn.close()
    return t, " Has been posted <br><a href='/'>Home</a>"

############### DELETE POST ######################################

@route("/deleteapost", method="POST")
def deletepost():
    t = request.forms.get('title')

    # Connection
    conn = pymysql.connect(host='tsuts.tskoli.is', port=3306, user='1611012220', passwd='mypassword', db='1611012220_VEFlokaverkefni')

    #cursor
    cur = conn.cursor()
    cur.execute("DELETE FROM posts WHERE title=%s", (t))
    conn.commit()
    cur.close()
    conn.close()
    return t, " Has been deleted <br><a href='/'>Home</a>"

################ EDIT POST #######################################

@route("/doeditpost", method="POST")
def editpost():
    t = request.forms.get('title')
    s = request.forms.get('story')

    # Connection
    conn = pymysql.connect(host='tsuts.tskoli.is', port=3306, user='1611012220', passwd='mypassword', db='1611012220_VEFlokaverkefni')

    #cursor
    cur = conn.cursor()
    cur.execute("UPDATE posts SET story = %s WHERE title = %s", (s, t))
    conn.commit()
    cur.close()
    conn.close()
    return t, " Has been updated <br><a href='/'>Home</a>"

############### ROUTE ############################################

@route('/sign-in')
def index():
    return template('sign-in')

@route("/new-post")
def index():
    return template('new-post')

@route("/delete-post")
def index():
    return template('delete-post')

@route("/edit-post")
def index():
    return template('edit-post')

################# MEMBERS ##########################################

@route('/members')
def member():
    conn = pymysql.connect(host="tsuts.tskoli.is", port=3306, user='1611012220', passwd='mypassword', db='1611012220_VEFlokaverkefni')
    c = conn.cursor()
    c.execute("SELECT username FROM admins")
    result = c.fetchall()
    c.close()
    output = template('members', rows=result)
    return output

####################################################################

# Static
@route("/static/<skra>")
def static_skrar(skra):
    return static_file(skra, root="./static/")

# run
try:
    run(host="0.0.0.0", port=os.environ.get('PORT'))
except:
    run(debug=True)