
FROM hub.c.163.com/library/centos:7.3.1611

RUN ["yum", "install", "-y", "epel-release"]
RUN ["yum", "install", "-y", "systemd"]
RUN ["yum", "remove", "-y", "fakesystemd"]
RUN ["yum", "install", "-y", "iproute", "net-tools", "lsof"]
RUN ["yum", "install", "-y", "openssh-server", "openssh-clients", "openssh"]
RUN ["yum", "install", "-y", "supervisor"]
RUN ["yum", "install", "-y", "lua-devel"]
RUN ["yum", "install", "-y", "luarocks"]
RUN ["yum", "install", "-y", "wget"]
RUN ["yum", "install", "-y", "postgresql"]
RUN ["yum", "install", "-y", "deltarpm"]

RUN ["mkdir", "-p", "/root/.ssh"]
RUN ["/usr/bin/ssh-keygen", "-A"]

COPY ./supervisord.conf /etc
COPY ./id_rsa /root/.ssh
COPY ./id_rsa.pub /root/.ssh
COPY ./authorized_keys /root/.ssh
COPY ./init_dev.sh /root/
COPY ./db.sh /root/
COPY ./db-test.sh /root/
COPY ./git.sh /root/
COPY ./pgpass /root/.pgpass
COPY ./install_plugins.sh /root/

RUN ["yum", "install", "-y", "http://xxx.bkt.clouddn.com/kong-community-edition-0.11.2.el7.noarch.rpm"]
RUN ["chmod", "600", "/root/.pgpass"]
RUN ["chmod", "600", "/root/.ssh/id_rsa"]
RUN ["chmod", "600", "/root/.ssh/authorized_keys"]
RUN ["/root/init_dev.sh"]
RUN ["/root/install_plugins.sh"]

EXPOSE 22
EXPOSE 8000
EXPOSE 8001

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf", "-n"]
