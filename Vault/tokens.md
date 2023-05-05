Tokens are the authentication method for vault which has an random ID.

Default there is a authentication method installed: Vault token

When you revoke the main token all the tokens that are created with that main token will also not be valid anymore.

All tokens have an TTL except the root token this is infinate.

**Token Accessor:** endpoint where you can see info about a token

**Orphaned tokens:** token that has no parent

|                                                     | Service Tokens                                          | Batch Tokens                                    |
| --------------------------------------------------- | ------------------------------------------------------- | ----------------------------------------------- |
| Can Be Root Tokens                                  | Yes                                                     | No                                              |
| Can Create Child Tokens                             | Yes                                                     | No                                              |
| Can be Renewable                                    | Yes                                                     | No                                              |
| Manually Revocable                                  | Yes                                                     | No                                              |
| Can be Periodic                                     | Yes                                                     | No                                              |
| Can have Explicit Max TTL                           | Yes                                                     | No (always uses a fixed TTL)                    |
| Has Accessors                                       | Yes                                                     | No                                              |
| Has Cubbyhole                                       | Yes                                                     | No                                              |
| Revoked with Parent (if not orphan)                 | Yes                                                     | Stops Working                                   |
| Dynamic Secrets Lease Assignment                    | Self                                                    | Parent (if not orphan)                          |
| Can be Used Across Performance Replication Clusters | No                                                      | Yes (if orphan)                                 |
| Creation Scales with Performance Standby Node Count | No                                                      | Yes                                             |
| Cost                                                | Heavyweight; multiple storage writes per token creation | Lightweight; no storage cost for token creation |

2 kinds of tokens:

##### Service Tokens

- Default

- Renewable

- Cubbyhole

- Can create child tokens

##### Batch Tokens

- Low on rights and for high througbput apps which reduces the the stress on the storage backend and improves the performance

- Can't create child tokens and is not renewable

- Can't be revoked and does not have a cubbyhole

**Creating a batch token**

`vault token create -type=batch`



**Check if a token has permission to access a path**

`vault write sys/capabilities token="<token>" path="sys/auth/approle"`





**Periodic Service Tokens**

**Root** or **sudo** users have the ability to generate **periodic tokens**.
Periodic tokens have a TTL (validity period), but no max TTL; therefore,
they may live for an infinite duration of time so long as they are renewed
within their TTL. This is useful for long-running services that cannot handle
regenerating a token.

**Create a token**

`vault token create`

**Revoke all the tokens for an auth method**

`vault token revoke -mode path auth/github`

**Get lease ID:**

`vault read aws/creds/<role_name>`

**Revoke lease:**

`vault lease revoke aws/creds/<role_name>/<lease_id>`

**Create a vault policy token**

`vault policy write jenkins jenkins.hcl`
