import requests
j=requests.get('http://api.icndb.com/jokes/random',data={'escape':'javascript'})
if j.status_code==200:print(j.json()['value']['joke'])
