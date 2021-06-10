FROM rhel8/rhel-guest-image:latest
EXPOSE 8080
USER root
#COPY ./etc-pki-entitlement /etc/pki/entitlement
#COPY ./yum.repos.d /etc/yum.repos.d
RUN sed -i".org" -e "s#^enabled=1#enabled=0#g" /etc/yum/pluginconf.d/subscription-manager.conf

