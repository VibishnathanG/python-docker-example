from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'This is a custom Hello, Docker!'

if __name__ == "__main__":
    # Make sure the host is set to '0.0.0.0' to allow external access
    app.run(host="0.0.0.0", port=8000)
