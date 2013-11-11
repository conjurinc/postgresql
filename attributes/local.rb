# Default attributes for a postgres server configuration which uses only local
# Unix domain sockets, thus turning off tcp listening and limiting authn to peer.

include_attribute 'postgresql'

# Clear the HBA rules. The template provides local peer authn, which is what we need.
default['postgresql']['pg_hba'] = []

normal['postgresql']['config']['listen_addresses'] = ''

# Set the passwordless flag for the server config script to not generate password.
default['postgresql']['passwordless'] = true
