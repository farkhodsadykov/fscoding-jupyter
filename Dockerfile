# Pulling default image from DockerHub
FROM fsadykov/centos_python
MAINTAINER Farkhod Sadykov


# Install Jupyter Notebook
RUN python3.6 -m pip install jupyter
RUN python3.6 -m pip install pyyaml
RUN mkdir /root/.jupyter/ -p

# Expose the port
EXPOSE 8888

# Chance logo jupyter notebook
COPY logo.png /usr/lib/python3.6/site-packages/notebook/static/base/images/logo.png
COPY jupyter-runner.py /
RUN chmod +x /jupyter-runner.py
