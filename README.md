# Debian/Raspbian "buster" support for eidmw

## Introduction

This project intends to develop the necessary changes to make eidmw 
(Portugues eID middleware) work on a Raspian 10 (codename "buster").

To make it work it is necessary build against the following libs:
 - libssl1.1 (OpenSSL v1.1+)
 - libxml-security-c20 (v2+)
 - libxerces-c3.2

...without loosing compatibility with older software versions.

The original source code was pulled from

https://svn.gov.pt/projects/ccidadao/browser/middleware-offline/tags/version3.0.16

## References

 - https://svn.gov.pt/projects/ccidadao


