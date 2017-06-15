---
title: ARIA 0.1.0 Roadmap
layout: article
permalink: /roadmap/
share: false
---

ARIA's backlod is found [HERE](https://issues.apache.org/jira/secure/RapidBoard.jspa?projectKey=ARIA&rapidView=150&view=planning)

- OASIS TOSCA Simple Profile 1.0 - Support “OASIS TOSCA Simple Profile 1.0” YAML DSL specification.

- OASIS TOSCA Simple Profile 1.0 test suite - Comprehensive coverage of the YAML DSL specification.

- OASIS TOSCA Simple Profile 1.0 for NFV - Implement latest reversion of “TOSCA Simple Profile for NFV” draft03 specification.

- Modular DSL Parser - Modular DSL Parser capable of supporting multiple DSLs and profiles.

- TOSCA Cloud Service Archive(CSAR) Support the standard TOSCA CSAR template archiving format.

- Template Validation - Enabled template validation based on the profile used on application or VNF template

- Deployment Plans Dynamic Generation - Dynamic generation of deployment plans from on the TOSCA template and plugins used in the TOSCA templates.

- Pluggable node Types Plugins mechanism that allows extending the TOSCA normative node types with custom and technology specific node types, allowing TOSCA to natively support the following:
    -  Extend TOSCA Normative types and support introduction of new technology specific node types with their corresponding relationship node types, and lifecycle operation implementations.
    - Native TOSCA support for Multi-VIM, combination of multiple and mixed environments.
    - Native TOSCA support for any sVNFM/gVNFM

- Live Attribute Injection - Plugins can set node attributes and fill in TOSCA functions allowing for live requirements-and-capabilities processing

- TOSCA Workflow Execution Engine TOSCA native workflow execution engine that can run over the deployment graph, execute dynamically generated deployment plans from the TOSCA topology temple, support custom workflows addition to graph based workflow execution.

- Model Storage Mechanism Storage mechanism that allows storing the generated objects model and template related resources into filesystem, database and memory.
