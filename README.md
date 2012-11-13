#udp_obfs

A simple program to obfuscate and tunnel UDP traffic across a DPI firewall which blocks your application’s traffic, e.g. OpenVPN. The obfuscation method used is symmetric key XOR “encryption”. Based on udp_redirect (http://www.brokestream.com/udp_redirect.html).

##How To Use

This program must be run on a device both inside and outside the firewall. One (probably the external device) needs to be accessible over the public internet.

Usage: ./udp_obfs our-ip our-port send-to-ip send-to-port

Example: ./udp_obfs 0.0.0.0 1234 194.243.12.4 4321

Note: This program should not be used for securely encrypting traffic. I doubt it would be very hard to find the key from looking at a known application’s traffic stream.