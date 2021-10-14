# How to use?
`bash start.sh` to start all the stuffs (proxy, examples) in docker.

`bash proxy.sh` to start Haproxy inside the container.

You can modify configuration via Dataplane API on port 5555.

## Authentication
user: haproxy-dataplaneapi

password: adminpwd

# Example application included
- NodeJS Express application called `nodejs-example-haproxy`


# Problems
- After modifying a configuration, the container exists. No idea why.