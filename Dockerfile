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
ADD root_file_reader.py JetTree_mc_0p4_all.root

#CMD tells docker to execute the command when the image loads
CMD [ "python", "./root_file_reader.py -i JetTree_mc_0p4_all.root"]

