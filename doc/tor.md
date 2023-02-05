TOR SUPPORT IN FREICOIN
======================

It is possible to run Freicoin as a Tor hidden service, and connect to such services.

The following directions assume you have a Tor proxy running on port 9050. Many distributions default to having a SOCKS proxy listening on port 9050, but others may not. In particular, the Tor Browser Bundle defaults to listening on a random port. See [Tor Project FAQ:TBBSocksPort](https://www.torproject.org/docs/faq.html.en#TBBSocksPort) for how to properly
configure Tor.


1. Run freicoin behind a Tor proxy
---------------------------------

The first step is running Freicoin behind a Tor proxy. This will already make all
outgoing connections be anonymized, but more is possible.

	-socks=5        SOCKS5 supports connecting-to-hostname, which can be used instead
	                of doing a (leaking) local DNS lookup. SOCKS5 is the default,
	                but SOCKS4 does not support this. (SOCKS4a does, but isn't
	                implemented).
	
	-proxy=ip:port  Set the proxy server. If SOCKS5 is selected (default), this proxy
	                server will be used to try to reach .onion addresses as well.
	
	-onion=ip:port  Set the proxy server to use for tor hidden services. You do not
	                need to set this if it's the same as -proxy. You can use -noonion
	                to explicitly disable access to hidden service.
	
	-listen         When using -proxy, listening is disabled by default. If you want
	                to run a hidden service (see next section), you'll need to enable
	                it explicitly.
	
	-connect=X      When behind a Tor proxy, you can specify .onion addresses instead
	-addnode=X      of IP addresses or hostnames in these parameters. It requires
	-seednode=X     SOCKS5. In Tor mode, such addresses can also be exchanged with
	                other P2P nodes.

In a typical situation, this suffices to run behind a Tor proxy:

	./freicoin -proxy=127.0.0.1:9050


2. Run a freicoin hidden server
------------------------------

If you configure your Tor system accordingly, it is possible to make your node also
reachable from the Tor network. Add these lines to your /etc/tor/torrc (or equivalent
config file):

	HiddenServiceDir /var/lib/tor/freicoin-service/
	HiddenServicePort 8639 127.0.0.1:8639
	HiddenServicePort 18639 127.0.0.1:18639

The directory can be different of course, but (both) port numbers should be equal to
your freicoind's P2P listen port (8639 by default).

	-externalip=X   You can tell freicoin about its publicly reachable address using
	                this option, and this can be a .onion address. Given the above
	                configuration, you can find your onion address in
	                /var/lib/tor/freicoin-service/hostname. Onion addresses are given
	                preference for your node to advertize itself with, for connections
	                coming from unroutable addresses (such as 127.0.0.1, where the
	                Tor proxy typically runs).
	
	-listen         You'll need to enable listening for incoming connections, as this
	                is off by default behind a proxy.
	
	-discover       When -externalip is specified, no attempt is made to discover local
	                IPv4 or IPv6 addresses. If you want to run a dual stack, reachable
	                from both Tor and IPv4 (or IPv6), you'll need to either pass your
	                other addresses using -externalip, or explicitly enable -discover.
	                Note that both addresses of a dual-stack system may be easily
	                linkable using traffic analysis.

In a typical situation, where you're only reachable via Tor, this should suffice:

	./freicoind -proxy=127.0.0.1:9050 -externalip=57qr3yd1nyntf5k.onion -listen

(obviously, replace the Onion address with your own). If you don't care too much
about hiding your node, and want to be reachable on IPv4 as well, additionally
specify:

	./freicoind ... -discover

and open port 8639 on your firewall (or use -upnp).

If you only want to use Tor to reach onion addresses, but not use it as a proxy
for normal IPv4/IPv6 communication, use:

	./freicoin -onion=127.0.0.1:9050 -externalip=57qr3yd1nyntf5k.onion -discover

