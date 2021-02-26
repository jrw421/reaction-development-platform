###############################################################################
### Mailchimp Open Commerce Platform Configuration
###
### This file defines configuration used in the Makefile.
### You may add and/or override these values with your own custom configuration
### in `config.local.mk`.
###
### Please see GNU Makes multi-line variable documentation for more info.
### https://www.gnu.org/software/make/manual/html_node/Multi_002dLine.html
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
https://github.com/mailchimp-open-commerce/api-server.git,api-server,v3.11.1 \
https://github.com/mailchimp-open-commerce/identity.git,identity,v3.3.0 \
https://github.com/mailchimp-open-commerce/admin.git,admin,v3.0.0-beta.12 \
https://github.com/mailchimp-open-commerce/example-storefront.git,example-storefront,v4.0.0
endef

# These are all the plugins that `make clone-api-plugins` will clone.
# `api-core` is not technically a plugin but is useful to have in the
# same place.
define API_PLUGIN_REPOS
https://github.com/mailchimp-open-commerce/api-core.git \
https://github.com/mailchimp-open-commerce/api-plugin-accounts.git \
https://github.com/mailchimp-open-commerce/api-plugin-address-validation-test.git \
https://github.com/mailchimp-open-commerce/api-plugin-address-validation.git \
https://github.com/mailchimp-open-commerce/api-plugin-authentication.git \
https://github.com/mailchimp-open-commerce/api-plugin-authorization-simple.git \
https://github.com/mailchimp-open-commerce/api-plugin-carts.git \
https://github.com/mailchimp-open-commerce/api-plugin-catalogs.git \
https://github.com/mailchimp-open-commerce/api-plugin-discounts-codes.git \
https://github.com/mailchimp-open-commerce/api-plugin-discounts.git \
https://github.com/mailchimp-open-commerce/api-plugin-email-smtp.git \
https://github.com/mailchimp-open-commerce/api-plugin-email-templates.git \
https://github.com/mailchimp-open-commerce/api-plugin-email.git \
https://github.com/mailchimp-open-commerce/api-plugin-files.git \
https://github.com/mailchimp-open-commerce/api-plugin-i18n.git \
https://github.com/mailchimp-open-commerce/api-plugin-inventory-simple.git \
https://github.com/mailchimp-open-commerce/api-plugin-inventory.git \
https://github.com/mailchimp-open-commerce/api-plugin-job-queue.git \
https://github.com/mailchimp-open-commerce/api-plugin-navigation.git \
https://github.com/mailchimp-open-commerce/api-plugin-notifications.git \
https://github.com/mailchimp-open-commerce/api-plugin-orders.git \
https://github.com/mailchimp-open-commerce/api-plugin-payments-example.git \
https://github.com/mailchimp-open-commerce/api-plugin-payments-stripe.git \
https://github.com/mailchimp-open-commerce/api-plugin-payments.git \
https://github.com/mailchimp-open-commerce/api-plugin-pricing-simple.git \
https://github.com/mailchimp-open-commerce/api-plugin-products.git \
https://github.com/mailchimp-open-commerce/api-plugin-settings.git \
https://github.com/mailchimp-open-commerce/api-plugin-shipments-flat-rate.git \
https://github.com/mailchimp-open-commerce/api-plugin-shipments.git \
https://github.com/mailchimp-open-commerce/api-plugin-shops.git \
https://github.com/mailchimp-open-commerce/api-plugin-simple-schema.git \
https://github.com/mailchimp-open-commerce/api-plugin-sitemap-generator.git \
https://github.com/mailchimp-open-commerce/api-plugin-surcharges.git \
https://github.com/mailchimp-open-commerce/api-plugin-system-information.git \
https://github.com/mailchimp-open-commerce/api-plugin-tags.git \
https://github.com/mailchimp-open-commerce/api-plugin-taxes-flat-rate.git \
https://github.com/mailchimp-open-commerce/api-plugin-taxes.git \
https://github.com/mailchimp-open-commerce/api-plugin-translations.git
endef

# List of user defined networks that should be created.
define DOCKER_NETWORKS
opencommerce.localhost
endef
