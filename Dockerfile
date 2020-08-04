#Add in info for vim
FROM ubuntu:latest 
RUN apt-get update \
    && apt-get install -y vim
       # nmap\
       # vim

#add user
#RUN useradd -ms /bin/bash/ admin

#add python
FROM python:3

#add pyroot
FROM rootproject/root-ubuntu16 
ENV PYTHONPATH ${PYTHONPATH}:/usr/local/lib/root/

#Add python file
ADD root_file_reader.py JetTree_mc_0p4_all.root ./

#user admin
USER root

#CMD tells docker to execute the command when the image loads
#CMD [ "/bin/python", "./root_file_reader.py", "-i", "JetTree_mc_0p4_all.root"]

#RUN python ./root_file_reader.py -i JetTree_mc_0p4_all.root

ENTRYPOINT ["/bin/python", "./root_file_reader.py", "-i", "JetTree_mc_0p4_all.root"]

