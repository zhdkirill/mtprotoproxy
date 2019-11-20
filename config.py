PORT = 443

# name -> secret (32 hex chars)
USERS = {
    "tg":  "6f27206d00f11fce53f1e9c62264dd97",
#    "tg2": "0123456789abcdef0123456789abcdef",
}

# Enables proxy
PROXY_PROTOCOL = True

# Makes the proxy harder to detect
# Can be incompatible with very old clients
SECURE_ONLY = True

# Makes the proxy even more hard to detect
# Compatible only with the recent clients
TLS_ONLY = True

# The domain for TLS, bad clients are proxied there
# Use random existing domain, proxy checks it on start
TLS_DOMAIN = "mtproxy-tls.sharik.network"

# Tag for advertising, obtainable from @MTProxybot
# AD_TAG = "3c09c680b76ee91a4c25ad51f742267d"
