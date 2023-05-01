**Write kv secret**

`vault kv put secret/hello foo=world`

`vault kv put -mount secret hello foo=world`

**Get kv secret**

`vault kv get secret/hello`

**Delete secret:**

`vault kv delete secrets/foo`

**Undelete secret**

`vault kv undelete -version=2 secret/foo`

**Permanent delete a secret:** 

`vault kv destroy`

**Enable Authentication**

`vault write sys/auth/my-auth type=userpass`

**Create Orphan Token**

`vault token create -orphan`

**Enable a secrets engine**

`vault secrets enable -path=kv kv`

**Disable a secrets engine**

`vault secrets disable kv/`

all secrets will be revoked!ß