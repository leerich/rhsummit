Summit Ansible Demo
=========

This role is a basic demostration on how to utilize Facter facts in Ansible Playbooks

Requirements
------------

None

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    ---
    - name: Main playbook for summit
      hosts: all
      roles:
          - { role: "common.summit" }
          - { role: webservers.summit, when: facter_hostname == "ip-172-31-13-236"}
          - { role: databases.summit, when: facter_hostname == "ip-172-31-9-65"}

License
-------

BSD

Author Information
------------------

Steve Clatterbuck, Crossvale Inc, Lee Rich, Red Hat Inc. 
