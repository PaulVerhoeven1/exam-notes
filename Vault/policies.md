Grant and forbit access 

**Default policy**

- Can't be removed but can be modified

- Attached to all tokens

- Can be explicitiy excluded at atoke creation time

- Allows basic functionality such as letting the token look up data about itself and to use its cubbyhole

**Root policy**

- Can't be removed nor modified

- User becomes root when he has this policy

- The initial root token should be revoked whit `vault token revoke <token>`
