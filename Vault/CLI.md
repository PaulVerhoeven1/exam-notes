**Delete secret:**

`vault kv delete secrets/foo`

**Undelete secret**

`vault kv undelete -version=2 secret/foo`

**Permanent delete a secret:** vault kv destroy

**Enable Authentication**

`vault write sys/auth/my-auth type=userpass`

**Create Orphan Token**

`vault token create -orphan`