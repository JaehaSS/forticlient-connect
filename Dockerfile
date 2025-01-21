FROM jaeha1099/forticlient-install:1.0


RUN useradd --uid 1001 fortiuser

COPY vpn_profile.sh /vpn_profile.sh

RUN chmod +x /vpn_profile.sh

USER fortiuser 

ENTRYPOINT ["/vpn_profile.sh"]

