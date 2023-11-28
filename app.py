from flask import Flask
from flask_redis import FlaskRedis
import redis

app = Flask(__name__)
app.config['FLASK_DEBUG'] = 1
app.config['REDIS_URL'] = "redis://redis:6379/0"
re = FlaskRedis(app)
@app.route('/set')
def index():
    re.set('name' , "Cane")
    return "hello app"



@app.route('/hello')
def hello():
    name = re.get('name').decode()
    return f"hello from {name}"

@app.route('/sada')
def start():
    return "We need sada aaa host and port"