# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_naturalparser_session',
  :secret      => '551e9425eb292528897871732154cab3e4292ee860197efa8ee9ae2a0e158d8e5ef3526b358a4226427d32cc642df25e7d9045ef5d6b1686a71d38e0d30519f9'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
