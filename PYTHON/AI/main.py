from google import genai
api_key = "AIzaSyCaM-AjhNLKz4nA5kw7dp0F0jb4Hmrsb-0"
client = genai.Client(api_key=api_key)

response = client.models.generate_content(
    model="gemini-3-pro-preview",
    contents=input(),
)

print(response.text)