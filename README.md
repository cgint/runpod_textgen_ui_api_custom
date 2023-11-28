# runpod_textgen_ui_api_custom
This is to enable ollama in addition to text-generation-webui already available through very nice and structure work done by TheBloke. See [TheBlokeAI/dockerLLM](https://github.com/TheBlokeAI/dockerLLM/)

# Configuration
Use environment variables for configuration:
- OLLAMA_INIT set to 'true' activates OLLAMA
- OLLAMA_PULL to preload OLLAMA models. e.g. OLLAMA_PULL=llama2,codellama
- OLLAMA_HOST e.g. set to '0.0.0.0' allows you to expose the port
