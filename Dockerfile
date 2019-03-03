FROM hypriot/rpi-alpine-scratch

MAINTAINER rzgrzg,<13416155@qq.com>

ENV FRP_VERSION 0.24.1

WORKDIR /var/frp

RUN mkdir /var/frp/conf

ADD https://github.com/fatedier/frp/releases/download/v$FRP_VERSION/frp_${FRP_VERSION}_linux_arm.tar.gz /var/frp/frp_${FRP_VERSION}_linux_arm.tar.gz

RUN tar -zxf frp_${FRP_VERSION}_linux_arm.tar.gz  frp_${FRP_VERSION}_linux_arm/frpc -C /var/frp \
    && tar -zxf frp_${FRP_VERSION}_linux_arm.tar.gz  frp_${FRP_VERSION}_linux_arm/frpc.ini -C /var/frp/conf \
    && rm /var/frp/frp_${FRP_VERSION}_linux_arm.tar.gz

VOLUME /var/frp/conf



CMD /var/frp/frpc -c /var/frp/conf/frpc.ini
