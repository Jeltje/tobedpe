FROM    ubuntu

MAINTAINER Jeltje van Baren, jeltje.van.baren@gmail.com
# Convert (and sometimes filter) fusioncaller outputs to bedpe format

#Install Essentials
RUN 	apt-get update && apt-get install -y \
	python 
#	python-pip \
#	python-dev \
#	zlib1g-dev \
#	unzip \
#	libncurses-dev
#RUN   pip install pysam
#RUN   pip install PyVCF

# ericScript, see https://sourceforge.net/projects/ericscript/
ADD	ericToBedpe /usr/local/bin/ericToBedpe

# FusionCatcher, see https://github.com/ndaniel/fusioncatcher
ADD	fcToBedpe /usr/local/bin/fcToBedpe
# And clean up
RUN	apt-get clean && rm -rf /var/lib/apt/lists/* 
