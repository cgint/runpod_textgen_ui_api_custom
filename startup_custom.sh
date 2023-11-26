#!/bin/bash

# Install ollama so we have the newest version and start the server
# Do it in background so startup of web-ui is not slowed down
./init_ollama.sh &

# Start the original script by TheBloke to run the original procedure
./start.sh