# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_redport_session',
  :secret      => '02fa4d4879a4096e5dfbc33ef78826862355eccd8dae97ef222ed7ab7684da49b6e2b9b576bb1f4745bfa275935a191b9280aee0cc5a1e6e25ca88a2feec3686'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
