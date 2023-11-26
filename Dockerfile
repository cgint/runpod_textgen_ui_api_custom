FROM thebloke/cuda11.8.0-ubuntu22.04-oneclick

COPY init_ollama.sh /
COPY startup_custom.sh /
RUN chmod +x /init_ollama.sh /startup_custom.sh

ENTRYPOINT ["/startup_custom.sh"]