| Description                              | Command                        |
| ---------------------------------------- | ------------------------------ |
| show the status of the ssh server        | show ip ssh                    |
| show all the ssh connections             | show ssh                       |
| generate ssh keys                        | crypto key generate RSA        |
| set timeout for console or remote logins | exec-timeout *minutes seconds* |
|                                          |                                |
|                                          |                                |
|                                          |                                |
|                                          |                                |
|                                          |                                |

Stappen: 

  1. create vlan, example:
      Vlan 99 
      name \<vlan_name> 

  2. ip maken command: interface vlan 99 

  3. ip address 10.99.0.1 <plus subnet> 

  4. default gateway: ip default-gateway <ip> (in de config mode) 

  5. sub interface aanmaken op de router (voorbeeld: fa0/0.99) 

  6. sub interface een ip adres geven 



(Switch default gateway is van belang als de clients in een aparte vlan zitten.) 

