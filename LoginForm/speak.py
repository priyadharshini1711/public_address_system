import speech_recognition as sr
import mysql.connector

mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  passwd="",
  database="pra"
)

mycursor = mydb.cursor()
sql = "INSERT INTO message (msg,id,dt) VALUES (%s,%s,now())"
#get audio from the microphone                                                                       
r = sr.Recognizer()                                                                                   
with sr.Microphone() as source:                                                                       
    print("Speak:")                                                                                   
    audio = r.listen(source)
    val=r.recognize_google(audio)

try:
    print("You said " + val)
except sr.UnknownValueError:
    print("Could not understand audio")
except sr.RequestError as e:
    print("Could not request results; {0}".format(e))

val=(val,2)
mycursor.execute(sql, val)
mydb.commit()
