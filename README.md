Role Name
=========

This role sets the server up to send logging information from rsyslog to loggly

Requirements
------------

Before running you will have to set up an account at https://loggly.com and add your unique token to an ansible vault

Role Variables
--------------
Store the following in [a vault file](http://docs.ansible.com/ansible/playbooks_vault.html):

```yaml
secrets:
  loggly:
    token: yourlogglytokenhere
```

Dependencies
------------

All configuration was done with rsyslogd 8.23.

Example Playbook
----------------

```bash
ansible-playbook tests/test.yml -i your_inventory_file
```

How to include this role:

```yaml
- hosts: servers
  roles:
    - loggly_tls
```

License
-------

MIT

Author Information
------------------

www.ama.ab.ca, webmaster@ama.ab.ca
