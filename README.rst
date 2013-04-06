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

2. Next, we got to add the host(s) to configure, to do this, edit the
   file `/etc/ansible/hosts` and add the hostname(s) of the servers.

    .. note::

        Ansible uses your current login name when connecting, if you
        need to use a different name on the remote host, add the
        following bit after it in the hosts file::

            HOSTNAME ansible_ssh_user=USERNAME

        .. seealso:: `Config file format and patterns <http://ansible.cc/docs/patterns.html>`_

3. Activate the Python virtualenv so you can run `ansible` directly.

    .. code-block:: bash

        $ source pythonVE/bin/activate

4. Test that we can ping the collocation host successfully:

    .. code-block:: bash

        $ ansible all -m ping -u SSH_USERNAME
        HOST | success >> {
            "changed": false,
            "ping": "pong"
        }
