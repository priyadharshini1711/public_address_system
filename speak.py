import speech_recognition as sr
import mysql.connector

mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  passwd="",
  database="public_address_system"
)

mycursor = mydb.cursor()
sql = "INSERT INTO message (message,created_at) VALUES (%s,now())"

r = sr.Recognizer()


# print(sr.Microphone.list_microphone_names()) printts all available microphone input in the system


with sr.Microphone() as source:
    r.adjust_for_ambient_noise(source)                                                                       
    print("Speak:") 
    try:
    # wait for speech for a maximum of 3 seconds
    # listen to speech for a maximum of 3 seconds
        audio = r.listen(source, timeout=6, phrase_time_limit=3)
        val=r.recognize_google(audio)
    except Exception as e:
        # a timeouterror exception will be thrown if the timeout is reached
        print(e) 
    print("done listening")                                                                                  

try:
    print("You said " + val)
except sr.UnknownValueError:
    print("Could not understand audio")
except sr.RequestError as e:
    print("Could not request results; {0}".format(e))

try:
    mycursor.execute(sql, (val,))
    mydb.commit()
    print("value inserted")
except Exception as e:
    print(e)
