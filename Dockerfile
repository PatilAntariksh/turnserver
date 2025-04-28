# Use Coturn official image
FROM instrumentisto/coturn

# Environment variables (can be overridden)
ENV REALM=yourdomain.com
ENV LISTENING_PORT=3478
ENV USE_AUTH_SECRET=false
ENV LT_UDP_RELAY_PORTS=49152-65535
ENV FINGERPRINT=true
ENV SIMPLE_LOG=true

# Start coturn with static user/pass
CMD ["turnserver",
  "-n",
  "-a",
  "-u", "test:test",
  "-p", "3478",
  "-r", "yourdomain.com",
  "--no-tls",
  "--no-dtls",
  "--min-port", "49152",
  "--max-port", "65535",
  "--fingerprint",
  "--lt-cred-mech"
]
