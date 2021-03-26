

**NAT: Network Address Translation** 

- Translates a private ip adres to public and vice versa

**NAT table:** port number, Mac adres, Private IP Adres 

**NAT with overload:** Pat (Port adress translation), will add an extra port

**Inside Local:** Ip adresses who are private

**Inside:** Own IP address

**Outside local:** The IP address of an outside host as it appears to the inside network.

**Outside global:** Public ip adres outside of your domain



**Configure PAT**

**PAT configureren (Port address translation)** 

1. **Create acl** 

- Access-list 1 permit 10.0.0.0 0.0.255.255 (wildcardmask) 

- Access-list 1 permit any (allow everybody otherwise there is a default deny ;) ) 
  
2. **connect the ACL to the outide interface**

- Ip nat inside source list 1 interface serial 0/1 overload 

3. **Specify and configure of the inside outside interfaces** 

- Ip nat inside (internal interface) (interface level) 
- Ip nat outside (external interface) (interface level) 

 



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

