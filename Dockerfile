FROM fsadykov/centos_python

WORKDIR /

RUN python3.6 -m pip install jupyter

ENTRYPOINT ["/usr/bin/jupyter"]
CMD ["notebook", "--ip=0.0.0.0",  "--port=8888", "--no-browser", "--allow-root"]
