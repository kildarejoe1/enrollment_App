from flask import Flask, render_template
#from flask.ext.script import Manager
#from flask.ext.bootstrap import Bootstrap


app=Flask(__name__)
#manager=Manager(app)
#bootstrap = Bootstrap(app)

@app.route("/login")
def login():
    return render_template("login.html",page_title="Login")


if __name__ == "__main__":
    app.run(debug=True, port="4000", host="0.0.0.0")
