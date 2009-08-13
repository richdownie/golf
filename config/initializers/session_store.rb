# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_golf_session',
  :secret      => '79f0b9314db0a068d4ef36fa62c705757b4b1135e3ce04058c4bbd2981d156888ca59c6a8820cf7049e1bb2a972bee687a01aa4593ef1ff5b774dfdae9ba68bb'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
