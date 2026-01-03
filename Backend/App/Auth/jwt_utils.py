import jwt 
from datetime import datetime,timedelta
import os
from dotenv import load_dotenv
from flask import jsonify

load_dotenv()

secret=os.getenv("SECRET")

def Generate_Token(userId,Role):
    
    payload={"userId":userId,"Role":Role,"exp":datetime.utcnow()+timedelta(hours=1)}
    token=jwt.encode(payload,secret,algorithm="HS256")
    return token

def Decode_Token(token):
    try:
        decode=jwt.decode(token,secret,algorithms="HS256")
        return decode
    except jwt.ExpiredSignatureError:
        return jsonify({"error":"Token has Expired Login again"}),403
    except jwt.InvalidTokenError:
        return jsonify({"error":"Token invalid Login again"}),403
        