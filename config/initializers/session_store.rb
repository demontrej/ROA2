# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_repositorio_session',
  :secret      => '843ec8cca520db9e823160fd6d8800aea3b15382968d93a29dbf2b427faeaf8d037415cfdd8d2ced5fb9ac6e6a262bf49680ce541f0273586107dbe2c4d5d8ed'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
