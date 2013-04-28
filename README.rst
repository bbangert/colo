=======================
Colo Setup with Ansible
=======================

Sets up our dedicated server with all our programs and such.

Getting Started
===============

The Makefile does most of the dirty work, so first check out this repo.

1. Run make in the checked out repository:

    .. code-block:: bash

        $ make

2. Activate the Python virtualenv so you can run `ansible` directly, then
   activate the ansible checkout.

    .. code-block:: bash

        $ source pythonVE/bin/activate
        $ source ansible/hacking/env-setup

3. Test that we can ping the collocation host successfully:

    .. code-block:: bash

        $ ansible all -i hosts -m ping -u root
        HOST | success >> {
            "changed": false,
            "ping": "pong"
        }

Credentials
===========

To avoid storing passwords in the clear, credentials are stored in a
``credentials`` directory for the host. This directory should be
symlinked in from the appropriate secure location, its in the
.gitignore to prevent accidental check-ins.

Provisioning
============

Assuming the server in the host is going to be used, provisioning the
server can be done with the command:

.. code-block:: bash

    $ ansible-playbook -i hosts site.yml

To setup the applications, use `apps.yml` instead of `site.yml`.

Testing Locally
===============

This process can be tested against a local host VM, which should be
running Ubuntu 12.04 LTS. Copy the `hosts` file to `local_hosts`, edit
it to use the local VM IP, then run the command above with `-i
local_hosts`.
