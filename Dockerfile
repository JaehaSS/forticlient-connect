FROM jaeha1099/forticlient-install:1.0


RUN useradd --uid 1001 fortiuser

COPY vpn_profile.sh /vpn_profile.sh
COPY vpn_test.sh /vpn_test.sh

RUN chmod +x /vpn_profile.sh
RUN chmod +x /vpn_test.sh

USER fortiuser 

# ENTRYPOINT ["/vpn_profile.sh"]
ENTRYPOINT ["/vpn_test.sh"]

