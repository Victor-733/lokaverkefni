import pymysql
from bottle import *
from sys import argv
from beaker.middleware import SessionMiddleware

############################################################

# Static
@route("/static/<skra>")
def static_skrar(skra):
    return static_file(skra, root="./static/")

# run
try:
    run(host="0.0.0.0", port=os.environ.get('PORT'))
except:
    run(debug=True)