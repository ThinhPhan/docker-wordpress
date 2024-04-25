#!/bin/bash

set -e

# Set the domain name for the certificate
DOMAIN_NAME="example.com "*.example.com" demo.local localhost 127.0.0.1 ::1"

# Check mkcert is installed
if ! command -v mkcert > /dev/null; then
  echo "mkcert is not installed. Please install it using 'brew install mkcert' or equivalent."
  exit 1
fi

# Generate a self-signed certificate with mkcert
mkcert -key-file ./key.pem -cert-file ./cert.pem $DOMAIN_NAME

# Show the certificate
cat ./cert.pem

# Show the private key
cat ./key.pem

# Show the certificate
openssl x509 -in ./cert.pem -noout -text

# Show the private key
openssl rsa -in ./key.pem -noout -text

# Show the public key
openssl x509 -in ./cert.pem -pubkey -noout -text

# Show the fingerprint
openssl x509 -in ./cert.pem -fingerprint -noout

# Show the SHA256 fingerprint
openssl x509 -in ./cert.pem -fingerprint -noout -sha256

# Show the SHA1 fingerprint
openssl x509 -in ./cert.pem -fingerprint -noout -sha1

# Show the MD5 fingerprint
openssl x509 -in ./cert.pem -fingerprint -noout -md5

# Show the subject
openssl x509 -in ./cert.pem -subject -noout

# Show the issuer
openssl x509 -in ./cert.pem -issuer -noout

# Show the validity
openssl x509 -in ./cert.pem -checkend 0 -noout
