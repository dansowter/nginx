FROM progrium/busybox
RUN opkg-install nginx bash
ADD config /config

EXPOSE 80
EXPOSE 443

CMD ["/usr/sbin/nginx","-c","/config/nginx.conf"]
