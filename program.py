import jwt

private_key = open('keys/privatekey').read()

claims = {
    'sub': 'Too5BdPayTQACdw1AJK1rD4nKUD0Ag7J',
    'data_payload': 'payload data',
    'iss': 'ambulance',
    'aud': 'dps'
}

token = jwt.encode(claims, private_key, algorithm='RS256').decode('UTF-8')
print(token)