from flask import Flask, jsonify
import os 
app = Flask(__name__)

@app.route("/")
def index():
  return jsonify({
    "message": "Hello world",
    "environment": os.environ.get("NAMESPACE"),
    "release": os.environ.get("RELEASE"),
    "instance": os.environ.get("INSTANCE")
  })


if __name__ == "__main__":
  app.run(port=5000, host="0.0.0.0")