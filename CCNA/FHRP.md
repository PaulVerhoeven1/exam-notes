| **HSRP**                                                     | **VRRP**                                                     | **GLBP**                                                     |
| ------------------------------------------------------------ | ------------------------------------------------------------ | ------------------------------------------------------------ |
| Cisco Proprietary                                            | Standardized                                                 | Cisco Proprietary                                            |
| Active and Standby mode only                                 | Active and Standby mode only                                 | Multiple routers pass traffic thus achieving load balancing  |
| Must configure a separate IP for the Virtual.                | Virtual IP can be same as physical IP of one of the routers  | Must configure a separate IP for the Virtual.                |
| Default priority = 100                                       | Default priority = 100                                       | Default priority = 100                                       |
| Higher priority (above 100) makes router active. Otherwise, higher IP makes router active. | Higher priority (above 100) makes router active. Otherwise, higher IP makes router active. | Higher priority (above 100) makes router primary forwarder. Otherwise, higher IP makes router primary forwarder. |
| Tracking supported (e.g interface state, routing info, reachability of remote host etc) | Tracking supported (e.g interface state, routing info, reachability of remote host etc) | Tracking supported (e.g interface state, routing info, reachability of remote host etc) |
| Supports IPv6                                                | No support for IPv6 on the original VRRP implementation. However, VRRPv3 (RFC 5798) now supports it. | Supports IPv6                                                |
| Supports timer and delay adjustments for failover            | Supports timer and delay adjustments for failover            | Supports timer and delay adjustments for failover            |

More information: [link](https://www.networkstraining.com/hsrp-vrrp-glbp-comparison/)

