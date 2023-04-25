Vault data is encrypted using the encryption key in the keyring. The Keyring is encrypted by the master key and the master key is encrypted by the unseal key. 

The unseal key is plit in multiple shards. to decrypt everything you need to have 3 of the 5 shards to unluck everything. 

`vault operator unseal`

**enable audit log**

`vault audit enable file file_path=./logs/vault_audit.log`
