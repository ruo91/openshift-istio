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

# Delete clusterrolebinding for istio
for i in $(oc get clusterrolebinding | grep 'istio' | awk '{print $1}'); do
  oc delete clusterrolebinding $i;
done

# Delete customresourcedefinition for istio
for i in $(oc get customresourcedefinition | grep 'istio' | awk '{print $1}'); do
  oc delete customresourcedefinition $i;
done

