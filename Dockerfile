FROM jaeha1099/forticlient-install:1.0




COPY vpn_profile.sh /vpn_profile.sh

RUN chmod +x vpn_profile.sh

ENTRYPOINT ["/vpn_profile.sh"]

