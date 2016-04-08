Role Name
=========

This role sets the server up to send logging information from rsyslog to loggly

Requirements
------------

Before running you will have to set up an account at https://loggly.com and add your unique token to an ansible vault

Role Variables
--------------

LOGGLY TOKEN: The token associated with your loggly account

Dependencies
------------

All configuration was done with rsyslogd 7.4.4.

Example Playbook
----------------

How to include this role:

    - hosts: servers
      roles:
         - loggly-client

License
-------

MIT

Author Information
------------------

www.ama.ab.ca, webmaster@ama.ab.ca
