import os
from dotenv import load_dotenv

# Load .env file
load_dotenv()

# Get API key
api_key = os.getenv("OPENAI_API_KEY")
api_key_1 = os.getenv("SERPER_API_KEY")


print("API Key loaded:", api_key is not None)  # Just to check it's working
print("API Key loaded:", api_key_1 is not None)



import jaclang
from hello import lovejac

print(f"Python is awosome. But, {lovejac()}")# Just to check it's working
