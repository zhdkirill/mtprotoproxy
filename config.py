PORT = 443

# name -> secret (32 hex chars)
USERS = {
    "tg":  "5754dfe3aa19b017a4abf3920b7d020c",
#    "tg2": "0123456789abcdef0123456789abcdef",
}

# Tag for advertising, obtainable from @MTProxybot
AD_TAG = "43b95e872cf645fa1c1d3229d8e71698"

# Enables proxy
PROXY_PROTOCOL = True

# Makes the proxy harder to detect
# Can be incompatible with very old clients
SECURE_ONLY = True

# Makes the proxy even more hard to detect
# Compatible only with the recent clients
TLS_ONLY = True

# Enables tg->client trafic reencryption, slower but more secure
FAST_MODE = False

# The domain for TLS, bad clients are proxied there
# Use random existing domain, proxy checks it on start
# TLS_DOMAIN = "mtproxy-tls.sharik.network"
TLS_DOMAIN = "cloudflare.com"

# Host to mask
# MASK_HOST = "cloudflare.com"
