# Debian/Raspbian "buster" support for eidmw

## Introduction

This repository is a clone of the official Portuguese eID middleware "eidmw" offline version.
The intention of this repository is to help keep tracking the development of the necessary patches to make eidmw 
(Portugues eID middleware) build and work on a Raspian 10 (codename "buster").

To make it work it is necessary build against the following libs:
 - libssl1.1 (OpenSSL v1.1+)
 - libxml-security-c20 (v2+)
 - libxerces-c3.2

It is also intended to keep compatibility with older library versions where possible.

The original source code was pulled from

https://svn.gov.pt/projects/ccidadao/browser/middleware-offline/tags/version3.0.16

## References

 - https://svn.gov.pt/projects/ccidadao


