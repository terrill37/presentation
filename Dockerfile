#Add in info for vim
From apt-get update \
Run apt-get update \
    && apt-get install -y \
        nmap\
        vim

#add python
From python:3

#add pyroot
From rootproject/root-ubuntu16
ENV PYTHONPATH ${PYTHONPATH}:/usr/local/lib/root/

#Add python file
ADD <python_file.py>

#CMD tells docker to execute the command when the image loads
CMD [ "python", "./<python_file.py>"]

