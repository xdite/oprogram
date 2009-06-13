# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_oprogram_session',
  :secret      => '3e65bc42082756fed04219e5a2b1fa9a78a9b03855bd16f6ea97fb5204a887fbe7b0b00e17f04aa6e5ed7aca6f543a0e16027d2fa34d9bb0baa4d0e47f3aed33'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
