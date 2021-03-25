**ACL:** Access Control List
**Firewall:** Combination of multiple acl's



**ACL kinds**

**Standard:** 

- numberd & named 
- filters on souce. Enable this close to the destination. This beceause its filtering this on the source, otherwise this could lead to multiple kind of problems.
- 1-99

**Extended:**

- numberd & named 
- Filters on source, destination, protocol. Enable this close to the souce!!
- 100-199 and 2000-2699

**Specials:** 

- Time ACL, Refflection ACL & CBAC 

  


| Description           | Command                                    |
| --------------------- | ------------------------------------------ |
| Add  comment to a ACL | **access-list** \<1> **remark** \<comment> |
| Show all the acl's    | show ip access-list                        |
|                       |                                            |


