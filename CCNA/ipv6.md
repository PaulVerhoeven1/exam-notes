- Unicast - uniquely identifies an interface. transmission to a single recipient.

  - [Link local](https://www.cisco.com/c/en/us/support/docs/ip/ip-version-6-ipv6/113328-ipv6-lla.html) - scope is limited to directly attached network (link)     FE80::/10
  - Unique local - technically, scope global, but it's really limited to your network. similar to IPv4 private IP addresses.  FC00::/7
  - Global unicast - scope is global. similar to IPv4 public IP addresses.     2000::/3

- Multicast - transmission to several recipients.

  - Assigned FF0s::/8
  - Solicited Node FF02::1:FF00:0000/104

- Anycast

   \- a collection of devices share the same IPv6 address. transmission is to the closest address topographically

  - identical to unicast. only difference is administrative.

- Modified EUI 64
  - EUI-64 - Extended Unique Identifier - a  host can automatically assign itself a unique 64-bit IPv6 interface  identifier without the need for manual configuration or DHCP
  - Modified - the 7th bit is the universal/local bit. 1 for universal, 0 for local. purpose is to allow development of future technology that  can take advantage of interface identifiers with universal scope
- Autoconfiguration - similar to DHCP in IPv4. Routers running IPv6  can give the network prefix and gateway address to clients looking for  an IPv6 address.

