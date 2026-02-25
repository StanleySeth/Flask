#Import the flask framework
from flask import *

#Import OS
import os
import pymysql


#Below we create a web server based appication
app = Flask(__name__)

#Configure the location to where your product images will be saved on your application 
app.config["UPLOAD_FOLDER"] = "dynamic/images"


#Define the route
@app.route("/api/constructionmaterials", methods=["POST"])
def constructionmaterials():
    if request.method == "POST":
        name = request.form["name"]
        category = request.form["category"]
        weight = request.form["weight"]
        unit = request.form["unit"]
        price = request.form["price"]
        stock = request.form["stock"]
        photo = request.files["photo"]
        
        #Extract the file name of the product photo to the vrible filename
        filename = photo.filename

        #By use of the os module we can extract the file path where the image is currently saved
        photo_path = os.path.join(app.config["UPLOAD_FOLDER"], filename)

        #Sve the product photo image into the new location
        photo.save(photo_path)
 
        #Establish a connection to other db
        connection = pymysql.connect(host="localhost", user="root", password="", database="online")
        #Create a cursor
        cursor = connection.cursor()
        
        #Structure the sql query to insert the product details to the database
        sql = "INSERT INTO constructionmaterials(name, category, weight, unit, price, stock, photo) VALUES (%s, %s, %s, %s, %s, %s, %s)"
        
        #Create a tuple that will hold the data from the form which are current held onto the different vriable declred.
        data = (name, category, weight, unit, price, stock, filename)
        
        #Use the cursor to execute the sql as you replce the placeholders with the actual data.
        cursor.execute(sql, data)

        #Commit the changes to the database
        connection.commit()

        
        
        return jsonify({"message": "Added successfully"})
        

app.run(debug=True)