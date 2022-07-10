from flask import Flask

app = Flask(__name__)

@app.route("/", methods=["GET", "POST"])
def echooo():
    return {
        "a": 1,
        "b": 2,
        "c": 3,
    }


if __name__ == "__main__":
    app.run(debug=True)
