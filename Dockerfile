FROM miktex/miktex 
RUN apt-get update \
	&& apt install fonts-liberation
