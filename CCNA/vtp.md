**VTP (Virtual Trunking Protocol)**

- For auto deploying VLAN's to other switches. 
- A VLAN created on a VTP server switch is automatically advertised to all switches inside the same VTP domain.

**VTP benefits:**

- VLAN consistency across layer 2 network
- Dynamic distribution of added VLANs accross the network



**VTP Modes:**

- Server
- Client
- Transparent

**Transparent Mode**

- In the network but does not apply the vlans



**Setup VTP:**

**Server:** 

- domain
- password
- vtp mode server
- vtp version 2

**Client:**

- domain
- password
- vtp mode client
- vtp version 2