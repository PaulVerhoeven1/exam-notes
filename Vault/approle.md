**Enable Approle**

`vault auth enable approle`

**Create a Role**

`vault write auth/approle/role/jenkins policies="jenkins" period="24h"`

**Get the role-id**

`vault read -format=json auth/approle/role/jenkins/role-id `

**Write the secret-id**

`vault write -f -format=json auth/approle/role/jenkins/secret-id `

**Authenticate with the approle**

`vault write -format=json auth/approle/login role_id=<role_id> secret_id=<secret_id>`