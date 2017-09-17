FROM armhf/alpine:latest

RUN apk --update add minidlna dumb-init bash && \
    sed -e '/media_dir=\/opt/ s/^#*/#/' -i /etc/minidlna.conf

ADD ./run.sh /opt/run.sh

CMD ["dumb-init", "/bin/bash", "/opt/run.sh"]