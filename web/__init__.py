from flask import Flask
from flask_mysqldb import MySQL

mysql = MySQL()

def create_app():
    app = Flask(__name__)

    app.config['MYSQL_HOST'] = 'localhost'  
    app.config['MYSQL_USER'] = 'root'
    app.config['MYSQL_PASSWORD'] = 'angie'
    app.config['MYSQL_DB'] = 'webssis'

    app.secret_key = 'graaah'

    mysql.init_app(app)

    from .views import views
    app.register_blueprint(views, url_prefix='/')

    return app
