# Be sure to restart your server when you modify this file.

# Your secret key for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.

# Although this is not needed for an api-only application, rails4 
# requires secret_key_base or secret_token to be defined, otherwise an 
# error is raised.
# Using secret_token for rails3 compatibility. Change to secret_key_base
# to avoid deprecation warning.
# Can be safely removed in a rails3 api-only application.
EntwicklertagMobileRest::Application.config.secret_token = '40e005f9a557b02a9b8cd3194d1c6b3fcd1cd8531e9ee8c1a778c9f0100a28060bf1dc2df6efba3ccf3bb0a99553b8a33f60783ba21c7bb67ed86332efe3a1a6'
