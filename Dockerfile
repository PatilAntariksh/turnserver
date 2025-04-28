# Use Coturn official image
FROM instrumentisto/coturn

ENV REALM=yourdomain.com

# Start coturn
CMD turnserver \
  -n \
  -a \
  -u test:test \
  -p 3478 \
  -r yourdomain.com \
  --no-tls \
  --no-dtls \
  --min-port 49152 \
  --max-port 65535 \
  --fingerprint \
  --lt-cred-mech
