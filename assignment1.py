# create a route that is able to calculate the simple interest given the pricipal as 20000, rate as 7% and time as 8 years.
#Import the flask framework
from flask import *

#Below we create a web server based appication
app = Flask(__name__)


#below is route for addition
@app.route("/api/SI", methods=["POST"])
def SI():
    if request.method == "POST":
        principal = request.form["principal"]
        rate = request.form["rate"]
        time = request.form["time"]
        si = (int(principal) * int(rate) * int(time))/100


        return jsonify({"The answer is ": si})




#Below  we run the application 
app.run(debug=True)

