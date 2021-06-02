# Set up Vault(?)

```bash
docker run --cap-add=IPC_LOCK -d --name=dev-vault vault
```

# Set up Postgres

```bash
docker run --name postgres -e POSTGRES_PASSWORD=postgres -d postgres
```

# Install Boundary

# Set up a Boundary Controller (or 3) w/ systemctl

# Set up a Boundary Worker (or 3) w/ systemctl

# Set up an Org

# Set up a User

# Set up a Host