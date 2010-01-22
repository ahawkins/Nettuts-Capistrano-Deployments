# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_bookshelf_session',
  :secret      => 'cb9cc03035654014e04872fde8fb2c287eb2c3034618eb70b0dca419307d11f556f54f66f6fa86352ead4a8893e438b9c9b40ae0c56b3de22f7b3dd955b2c12b'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
