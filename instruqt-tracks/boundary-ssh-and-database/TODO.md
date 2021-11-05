# TODO

## General

- Vault Integration? Tie this into LDAP?
- Multiple boxes for workers and controllers?
- Review the copy in the track / add links all over
- Packer images
- Standardize all the arguments to each function call (using `=` or strings, and wrapping in quotes)
- Boundary Credentials and Credential Stores
- Slides
- Fully cover the Domain Model

## Development

- Indicate which tab to run commands on
- Use different usernames for global and org level admin users so it's more clear in the UI
- In the SSH challenge check the hostname in the check script and in the track.
- remove VS Code?
- review script comments (make them maximally descriptive)
- Check scripts need to check that all the add-principals / add-grants / add-host-sets / add-hosts have been executed as well.
- Maybe make the check scripts check for things in the same order as they are to be executed? Example configure-admin-roles
