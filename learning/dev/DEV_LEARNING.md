# Getting Started

## [Prereqs](https://learn.hashicorp.com/tutorials/boundary/getting-started-dev?in=boundary/getting-started#prerequisites)

## [Concepts](https://www.boundaryproject.io/docs/concepts)

## Installation

### Download the Binaries

```bash
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
sudo apt-get update && sudo apt-get install boundary
```

### Start the server in dev mode

```bash
boundary dev
```

## Explore Boundary

### Log Into the Admin Console

We will use the default userpass combo as stated below.

- Username: `admin`
- Password: `password`

#### UI Login

```bash
open http://127.0.0.1:9200
```

#### CLI Login

```bash
export BOUNDARY_TOKEN=$(
    boundary authenticate password \
      -auth-method-id=ampw_1234567890 \
      -login-name=admin \
      -password=password \
      -keyring-type=none \
      -format=json | jq -r ".token")

echo $BOUNDARY_TOKEN
```

### [Connect to a Target](https://learn.hashicorp.com/tutorials/boundary/getting-started-connect?in=boundary/getting-started)

Since we are already logged in, we can read the default created target details.

```bash
boundary targets read -id ttcp_1234567890
```

Then connect to the default target using the below command. Note that there may be some gotchas on MacOS that are on the website.

```bash
boundary connect ssh -target-id ttcp_1234567890
```
