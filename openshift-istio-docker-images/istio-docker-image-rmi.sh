#---------------------------------------------------#
# - Title
#     Red Hat OpenShift Service Mesh
#
# - Production
#     OpenShift Container Platform v3.11+
#
# - Version
#     0.5.0 (istio 1.0.4)
#
# - Maintainer
#     Yongbok Kim (ruo91@yongbok.net)
#---------------------------------------------------#
#!/bin/bash
REGISTRY_URL="registry.access.redhat.com"

# ISTIO Images
# version: 0.5.0 (istio 1.0.4)
docker rmi $REGISTRY_URL/openshift-istio-tech-preview/istio-operator:0.5.0
docker rmi $REGISTRY_URL/openshift-istio-tech-preview/galley:0.5.0
docker rmi $REGISTRY_URL/openshift-istio-tech-preview/openshift-ansible:0.5.0
docker rmi $REGISTRY_URL/openshift-istio-tech-preview/pilot:0.5.0
docker rmi $REGISTRY_URL/openshift-istio-tech-preview/proxyv2:0.5.0
docker rmi $REGISTRY_URL/openshift-istio-tech-preview/mixer:0.5.0
docker rmi $REGISTRY_URL/openshift-istio-tech-preview/proxy-init:0.5.0
docker rmi $REGISTRY_URL/openshift-istio-tech-preview/citadel:0.5.0
docker rmi $REGISTRY_URL/openshift-istio-tech-preview/sidecar-injector:0.5.0
docker rmi $REGISTRY_URL/openshift-istio-tech-preview/kiali:v0.10.1

# Jaeger Images
docker rmi $REGISTRY_URL/distributed-tracing-tech-preview/jaeger-agent:1.8.1
docker rmi $REGISTRY_URL/distributed-tracing-tech-preview/jaeger-collector:1.8.1
docker rmi $REGISTRY_URL/distributed-tracing-tech-preview/jaeger-elasticsearch:5.6.10
docker rmi $REGISTRY_URL/distributed-tracing-tech-preview/jaeger-query:1.8.1

# Grafana, Prometheus Images
docker rmi docker.io/prom/prometheus:v2.3.1
docker rmi docker.io/grafana/grafana:5.2.3

# Devex Project Images
docker rmi docker.io/fabric8/configmapcontroller:2.3.7
docker rmi docker.io/fabric8/launcher-backend:ab535bc
docker rmi docker.io/fabric8/launcher-frontend:4571dfc

