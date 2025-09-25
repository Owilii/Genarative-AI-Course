import os
from dotenv import load_dotenv

# Load .env file
load_dotenv()

# Get API key
api_key = os.getenv("GEMINI_API_KEY")

print("API Key loaded:", api_key is not None)  # Just to check it's working



import jaclang
from hello import lovejac

print(f"Python is awosome. But, {lovejac()}")
