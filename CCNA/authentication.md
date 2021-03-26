**AAA**: Autentication, Authorization, Accounting 



**Authentication**: Who ar you?
**Authorization: ** What can you do ? 
**Accounting:** What are you doing (logging)? 

**AAA authentication methodes:** 

- Radius-server
- Tacacs+



**Benefits AAA:**

- Scalable 
- Flexible
- Standardised



**Tacacs+:** everything encrypted
**Radius:** Only user and password encrypted

 

**AAA local Authentication (Self-contained AAA)**: 

- Description of a list of authentication methodes
- Can be applied on several interfaces (Console, Aux, VTY) 
- Default List for **alle Interfaces.** If there is no method defined

 

**1. AAA Configureren:** 

- Aaa new-model (activated) 

**2. AAA Configureren with an external Radius server:** 

- Aaa authentication login default group radius 
- Aaa authentication login named group radius local line 

**3.** **Configure radius settings:** 

- Radius-server host 192.168.1.1 
- Radius-server key P@ssword 

