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

Get lease ID:

- vault read aws/creds/<rolename>

Revoke lease:

- vault lease revoke aws/creds/<rolename>/<lease_id>
