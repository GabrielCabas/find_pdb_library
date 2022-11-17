FROM python:3.9
RUN apt-get -y update && apt-get -y install wget
#BLAST+
RUN wget https://ftp.ncbi.nlm.nih.gov/blast/executables/blast+/2.13.0/ncbi-blast-2.13.0+-x64-linux.tar.gz
RUN tar -xf ncbi-blast-2.13.0+-x64-linux.tar.gz
ENV PATH="/ncbi-blast-2.13.0+/bin:${PATH}"
WORKDIR /blastdb/swissprot
#SWISSPROT
RUN wget https://ftp.ncbi.nlm.nih.gov/blast/db/swissprot.tar.gz
RUN tar -xf swissprot.tar.gz 
#PDB
WORKDIR /blastdb/pdbaa
RUN wget https://ftp.ncbi.nlm.nih.gov/blast/db/pdbaa.tar.gz
RUN tar -xf pdbaa.tar.gz
RUN pip3 install requests
WORKDIR /temp
WORKDIR /pdb
WORKDIR /src
CMD ["python3", "main.py"]
