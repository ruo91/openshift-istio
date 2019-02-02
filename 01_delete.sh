#---------------------------------------------------#
# - Title
#     Red Hat OpenShift Service Mesh
#
# - Production
#     OpenShift Container Platform v3.11+
#
# - Version
#     0.6.0 (istio 1.0.5)
#
# - Maintainer
#     Yongbok Kim (ruo91@yongbok.net)
#---------------------------------------------------#
#!/bin/bash

# System admin
oc login -u system:admin

# Delete control plane (custorm resource)
oc delete -n istio-operator Installation istio-installation

# Delete istio-operator
oc process -f istio-operator-template.yml | oc delete -f -

# Delete Project (istio-operator)
oc delete project istio-operator
