---
title: Getting Started with ARIA TOSCA
layout: article
permalink: /getting-started/
share: false
---

Installation
------------

ARIA is [available on PyPI](https://pypi.python.org/pypi/ariatosca).

To install ARIA directly from PyPI (using a ``wheel``), use:

    # pip install aria

To install ARIA from source, download the source tarball from
[PyPI](https://pypi.python.org/pypi/ariatosca), extract it, and then when inside the extracted
directory, use:

    # pip install .

The source package comes along with relevant examples and documentation. Additionally, ``requirements.txt`` is included for
installing the depending packages with which ARIA was tested.

Note that for the ``pip install`` commands mentioned above, you must use a privileged user, or use
virtualenv.

ARIA itself is in a ``wheel`` format compatible with all platforms. Some dependencies, however,
might require compilation (based on a given platform), and therefore possibly some system
dependencies are required as well.

On Ubuntu or other Debian-based systems::

    sudo apt install python-setuptools python-dev build-essential libssl-dev libffi-dev

On Archlinux::

    sudo pacman -S python-setuptools

ARIA requires Python 2.6/2.7. Python 3+ is currently not supported.


Getting Started with ARIA TOSCA
--------------------------------

This section will describe how to run a simple "Hello World" example.

First, provide ARIA with the ARIA "hello world" service-template and name it (e.g.
``my-service-template``)::

    aria service-templates store examples/hello-world/helloworld.yaml my-service-template

Now create a service based on this service-template and name it (e.g. ``my-service``)::

    aria services create my-service -t my-service-template

Finally, start an ``install`` workflow execution on ``my-service`` like so::

    aria executions start install -s my-service

You should now have a simple web-server running on your local machine. You can try visiting
``http://localhost:9090`` to view your deployed application.

To uninstall and clean your environment, follow these steps::

    aria executions start uninstall -s my-service
    aria services delete my-service
    aria service-templates delete my-service-template



License
-------

ARIA is licensed under the
[Apache License 2.0](https://github.com/apache/incubator-ariatosca/blob/master/LICENSE)
