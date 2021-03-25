NAT: Network address translation

| Description                                                  | Command                                                      |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| verify the number of currently active address translation table entries | show ip nat statistics <br />show ip nat translations        |
| configure pat                                                | ip nat inside source list \<acl> interface \<interface> overload |
| configuring statig one-to-one NAT                            | ip nat inside source static *inside-local inside-global*     |
| configuring a NAT pool of addresses                          | ip nat pool *name first-ip last-ip* netmask *mask*           |
|                                                              |                                                              |
|                                                              |                                                              |
|                                                              |                                                              |
|                                                              |                                                              |
|                                                              |                                                              |

