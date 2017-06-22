---
title: About ARIA TOSCA
layout: article
permalink: /about/
share: false
---

ARIA is a vendor neutral and technology independent implementation of the OASIS TOSCA specification. ARIA offers a Command Line Interface(CLI) to develop and execute TOSCA templates, and an easily consumable Software Development Kit(SDK) for building TOSCA enabled software. ARIA is an open source, and open governance python project, Apache Software Foundation Incubation, offering an implementation library of the OASIS TOSCA specification.

ARIA was formed to advance adoption of the TOSCA standard and accelerate the industry’s journey towards application orchestration in cloud environments.

ARIA, and TOSCA alike, were born out of the market need for a completely vendor / cloud / technology neutral orchestration that allows for portability and interoperability. ARIA is expected to accelerate the development around the TOSCA specification, advance its adoption, demonstrate simplified portability of TOSCA orchestration, and increase agility through more rapid community contributed iterations.

ARIA it is a framework for implementing orchestration software based on "Topology and Orchestration Specification for Cloud Applications(TOSCA)" a leading cloud-agnostic templating model formulated by the OASIS Foundation.

ARIA offers a library with a programmable interface that allows embedding ARIA into collaborative projects, to enable organizations looking to incorporate TOSCA orchestration capabilities into their solutions.


![ARIA Architecture]({{ site.url }}/images/aria-architecture.png){: .center-image }



Through ARIA, application vendors will be able to test and run their applications easily, from blueprint to deployment, without the former hassle of developing the orchestration engine themselves, simplifying TOSCA certification and validation exponentially.



![ARIA Architecture]({{ site.url }}/images/aria-tosca-workflow.png){: .center-image }

## ARIA TOSCA Parser
ARIA includes a TOSCA DSL parser, the parser’s role is to interpret the TOSCA template, create an in-memory graph of the application and validate template correctness. TOSCA provides a typing system with normative node types to describe the possible building blocks for constructing a service template, as well as relationship types to describe possible kinds of relations. Both node and relationship types may define life-cycle operations to implement the behavior an orchestration engine can invoke when instantiating a service template. The template files are written in declarative YAML language using TOSCA normative types. Technology specific types can be introduced via ARIA Plugins without any modifications of the parser code. ARIA natively supports TOSCA Simple Profile 1.0, and TOSCA Simple Profile for Network Function Virtualization.

#### TOSCA Templates include:
- YAML Topology Template
- Plugins  
- Workflows
- Resources such as scripts and others

## ARIA Workflows
ARIA Workflows are automated process algorithms that allow dynamic interaction with the graph described by the application topology template. ARIA Workflows describe the flow of the automation by determining when which tasks will be executed. A task may be an operation, optionally implemented by a plugin, or other actions, including arbitrary code or scripts. ARIA Workflows can be embedded within the TOSCA Template to be able to access the graph dynamically. Workflows are implemented as Python code using dedicated APIs and a framework to access the graph and the runtime context of the application, the context provide access to the object graph described in the TOSCA template.

ARIA comes with a number of built-in workflows - these are the workflows for install, uninstall, scale and heal. Built-in workflows are not special in any way - ARIA supports creating custom workflows that use the same APIs build-in workflows are using.


## ARIA Plugins
ARIA Plugins allow extending the TOSCA normative types dynamically by adding new technology specific node types and relationship types, without changing the code of the ARIA TOSCA Parser. The plugins introduce new node types and the implementation that realizes the logic behind every new node type. The plugin based types are isolated, allowing to use different versions of the same plugin in a single blueprint - for example support OpenStack Kilo and OpenStack Juno in the same template. It also allows combining types of different technologies - for example OpenStack nodes with VMware, Amazon, or other types such as Router, Firewall, Kubernetes and others. The work of interacting with IaaS APIs, running scripts, Configuration Management tools, Monitoring tools and any other tools used when managing applications is done by the ARIA Plugins. Plugins can be included as part of the application template package and loaded dynamically. ARIA includes set of plugins that can be used as is or as reference for implementing for new plugins.
