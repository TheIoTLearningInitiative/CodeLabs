from flask import Flask, render_template
import os

app = Flask(__name__)

@app.route('/')
def hello():
    return render_template('webserver.html')

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=1234, debug=True)
