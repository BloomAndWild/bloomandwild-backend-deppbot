# Update translations script

This script runs inside a docker container to create a pull request for new gem updates from rubygems.

It is designed to run in jenkins on a schedule, but can also be run elsewhere / locally for testing.

## Setup

### Prerequisites

- Docker & Docker compose

### how to run

The following environment variables are required on the host machine:

For interacting with github:

`SSH_KEY_FILE` - path to your SSH key used for github

`WORKSPACE` - path to this repository's root directory

`GITHUB_TOKEN` - Your github personal access token

Then run (in this directory):

```
docker-compose build bundle-update
docker-compose run bundle-update
```
