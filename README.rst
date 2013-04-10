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

2. Activate the Python virtualenv so you can run `ansible` directly.

    .. code-block:: bash

        $ source pythonVE/bin/activate

3. Test that we can ping the collocation host successfully:

    .. code-block:: bash

        $ ansible all -i hosts -m ping
        HOST | success >> {
            "changed": false,
            "ping": "pong"
        }

Provisioning
============

Assuming the server in the host is going to be used, provisioning the
server can be done with the command:

.. code-block:: bash

    $ ansible-playbook -i hosts site.yml
