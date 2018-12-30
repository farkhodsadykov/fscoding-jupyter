# Pulling default image from DockerHub
FROM fsadykov/centos_python
MAINTAINER Farkhod Sadykov


# Install Jupyter Notebook
RUN python3.6 -m pip install jupyter

# Chance logo jupyter notebook
COPY logo.png /usr/lib/python3.6/site-packages/notebook/static/base/images/logo.png


# Run Jupyter NoteBook when container starts
ENTRYPOINT ["/usr/bin/jupyter"]
CMD ["notebook", "--ip=0.0.0.0",  "--port=8888", "--no-browser", "--allow-root"]
