from flask import Flask

app = Flask(__name__)


@app.route('/')
def index():
    return "hello app"


@app.route('/hello')
def hello():
    return "hello from flask"


if __name__ == "__main__":
    app.run(port=5001)