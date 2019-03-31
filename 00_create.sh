#---------------------------------------------------#
# - Title
#     Red Hat OpenShift Service Mesh
#
# - Production
#     OpenShift Container Platform v3.11+
#
# - Version
#     0.9.0 (istio 1.1.0-rc.2)
#
# - Maintainer
#     Yongbok Kim (ruo91@yongbok.net)
#---------------------------------------------------#
#!/bin/bash

# System admin
oc login -u system:admin -n default

# Create Project (istio-operator)
# NodeSeletor: node-role.kubernetes.io/infra=true
oc create -f istio-operator-project.yml

# Create Template (istio-operator)
oc new-app -f istio-operator-template.yml

# Create Custom Resource for Control Plane
oc create -f istio-control-plane.yml -n istio-operator
