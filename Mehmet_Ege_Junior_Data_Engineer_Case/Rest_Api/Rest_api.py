from flask import Flask,request
from flask_restful import Api, Resource
from flask_httpauth import HTTPBasicAuth
import pandas as pd

app = Flask(__name__)
auth = HTTPBasicAuth()

@app.route("/", methods=["GET"])
@auth.login_required
def index():
    if request.method == "GET":
       data = pd.read_csv("users.csv")
       data = data.to_dict("records")
       return{"data":data},3

@auth.verify_password
def authenticate(username, password):
	if username and password:
		if username == 'mehmet' and password == 'ege':
			return True
		else:
			return False
	return False
    


if __name__ == '__main__':
    app.run(debug = True)
