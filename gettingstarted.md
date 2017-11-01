---
title: Getting Started with ARIA TOSCA
layout: article
permalink: /getting-started/
share: false
---

Installation
------------

ARIA is [available on PyPI](https://pypi.python.org/pypi/apache-ariatosca) .

ARIA requires Python 2.6/2.7. Python 3 is currently not supported.

To install ARIA directly from PyPI (using a ``wheel``), use::

    pip install --upgrade pip setuptools
    pip install apache-ariatosca

To install ARIA from source, download the source tarball from
[PyPI](https://pypi.python.org/pypi/apache-ariatosca), extract and ``cd`` into the extract dir, and run::

    pip install --upgrade pip setuptools
    pip install .

| The source package comes along with relevant examples, documentation, ``requirements.txt`` (for installing specifically the frozen dependencies' versions with which ARIA was tested) and more.
|
|
| ARIA has additional optional dependencies. These are required for running operations over SSH.
| Below are instructions on how to install these dependencies, including required system dependencies per OS.
|
| Note: These dependencies may have varying licenses which may not be compatible with Apache license 2.0.
|

**Ubuntu/Debian** (tested on Ubuntu14.04, Ubuntu16.04)::

    apt-get install -y python-dev gcc libffi-dev libssl-dev
    pip install aria[ssh]

**Centos** (tested on Centos6.6, Centos7)::

    yum install -y python-devel gcc libffi-devel openssl-devel
    pip install aria[ssh]

**Archlinux**::

    pacman -Syu --noconfirm python2 gcc libffi openssl
    pip2 install aria[ssh]

**Windows** (tested on Win10)::

    # no additional system requirements are needed
    pip install aria[ssh]

**MacOS**::

    # TODO



To install ``pip``, either use your distro's package management system, or run::

    wget http://bootstrap.pypa.io/get-pip.py
    python get-pip.py



Getting Started
---------------

This section will describe how to run a simple "Hello World" example.

First, provide ARIA with the ARIA "hello world"(can be download [here](https://github.com/apache/incubator-ariatosca/tree/master/examples/hello-world)) service-template and name it (e.g.
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
[Apache License 2.0](https://github.com/apache/incubator-ariatosca/blob/master/LICENSE).


Sample install/command files for different ARIA releases
--------------------------------------------------------

| Aria Release Version 	|   	|                                                   Ubuntu 16.04                                                   	|   	|                                                  CentOS 7                                                 	|   	|   	|
|:--------------------:	|:-:	|:----------------------------------------------------------------------------------------------------------------:	|:-:	|:---------------------------------------------------------------------------------------------------------:	|:-:	|:-:	|
|         0.1.1        	|   	| [ubuntu16.04_aria0.1.1](https://github.com/apache/incubator-ariatosca-website/samples/Ubuntu/ubuntu1604_aria011) 	|   	| [centos7_aria0.1.1](https://github.com/apache/incubator-ariatosca-website/samples/CentOS/centos7_aria011) 	|   	|   	|
|                      	|   	|                                                                                                                  	|   	|                                                                                                           	|   	|   	|
|                      	|   	|                                                                                                                  	|   	|                                                                                                           	|   	|   	|