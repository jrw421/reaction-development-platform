###############################################################################
### Mailchimp Open Commerce v3.11.0
###
### See: `/config.mk` for documentation.
###############################################################################

# List of tools that must be installed.
# A simple check to determine the tool is available. No version check, etc.
define REQUIRED_SOFTWARE
docker \
docker-compose \
git \
node \
yarn
endef

# Defined here are the subprojects in a comma-separated format
# GIT_REPO_URL,SUBDIR_NAME,TAG
# GIT_REPO_URL is the URL of the git repository
# SUBDIR_NAME is just the directory name itself
# TAG is the git tag or branch to checkout
# Projects will be started in this order
define SUBPROJECT_REPOS
https://github.com/mailchimp-open-commerce/hydra.git,hydra,v3.0.0 \
https://github.com/mailchimp-open-commerce/api-server.git,api-server,v3.11.0 \
https://github.com/mailchimp-open-commerce/identity.git,identity,v3.3.0 \
https://github.com/mailchimp-open-commerce/admin.git,admin,v3.0.0-beta.11 \
https://github.com/mailchimp-open-commerce/example-storefront.git,example-storefront,v4.0.0
endef

# List of user defined networks that should be created.
define DOCKER_NETWORKS
opencommerce.localhost
endef
