### Get MongoDB up and running
##### Docs found [here](https://www.mongodb.com/docs/atlas/cli/current/atlas-cli-deploy-local/)
1. Download and install `atlas-cli` [here](https://www.mongodb.com/docs/atlas/cli/current/install-atlas-cli/#std-label-install-atlas-cli)
2. Download and install `mongodb-shell` [here](https://www.mongodb.com/docs/mongodb-shell/install/)
3. setup a local cluster with `atlas deployments setup --type local --port 27017 --bindIpAll --username admin --password admin --force && tail -f /dev/null`
4. connect to the local cluster with `mongosh "mongodb://admin:admin@localhost:27017"`
5. Run ai rag template with `make up`