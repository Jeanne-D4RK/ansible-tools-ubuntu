FROM ubuntu:noble

RUN apt-get update \
  && apt install -y python3-pip python3-venv

RUN python3 -m venv /ansible-venv \
	&& ls -l /ansible-venv \
	&& . /ansible-venv/bin/activate \
	&& python3 -m pip install --upgrade pip \
	&& python3 -m pip install ansible

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
