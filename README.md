ask CLI Tool
A lightweight Bash command-line interface for interacting with OpenAI-compatible Large Language Model (LLM) APIs.

Overview
ask is a simple shell script designed to send prompts to an AI model directly from your terminal. It supports standard command-line arguments, piped input, or a combination of both.

Requirements
To keep the tool minimal and open-source friendly, it depends only on:

curl: For making network requests to the API.

jq: For processing the JSON responses from the LLM.

Installation & Setup
Clone the repository using the specific format required for submission:

Bash
git clone "https://github.com/Hdenizk/ask.git" "20220601046_Hami_Deniz_Kaynak"
Configure Environment Variables -- the script requires three specific variables to be set in your environment:

Bash
export ASK_API_URL="https://generativelanguage.googleapis.com/v1beta/openai/chat/completions"
export ASK_MODEL="gemini-1.5-flash"
export ASK_API_KEY="your_secret_key_here"
