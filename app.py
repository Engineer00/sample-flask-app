from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/hello')
def hello():
    return jsonify({"message": "Hello, World!"})

@app.route('/')
def root():
    return jsonify({"message": "Welcome to the root URL!"})

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)