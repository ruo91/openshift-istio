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
REGISTRY_URL="registry.example.com"

# ISTIO Images
# version: 0.6.0 (istio 1.0.5)
docker push $REGISTRY_URL/openshift-istio-tech-preview/istio-operator:0.6.0
docker push $REGISTRY_URL/openshift-istio-tech-preview/galley:0.6.0
docker push $REGISTRY_URL/openshift-istio-tech-preview/openshift-ansible:0.6.0
docker push $REGISTRY_URL/openshift-istio-tech-preview/pilot:0.6.0
docker push $REGISTRY_URL/openshift-istio-tech-preview/proxyv2:0.6.0
docker push $REGISTRY_URL/openshift-istio-tech-preview/mixer:0.6.0
docker push $REGISTRY_URL/openshift-istio-tech-preview/proxy-init:0.6.0
docker push $REGISTRY_URL/openshift-istio-tech-preview/citadel:0.6.0
docker push $REGISTRY_URL/openshift-istio-tech-preview/sidecar-injector:0.6.0
docker push $REGISTRY_URL/openshift-istio-tech-preview/kiali:0.11.0

# Jaeger Images
docker push $REGISTRY_URL/distributed-tracing-tech-preview/jaeger-agent:1.8.1
docker push $REGISTRY_URL/distributed-tracing-tech-preview/jaeger-collector:1.8.1
docker push $REGISTRY_URL/distributed-tracing-tech-preview/jaeger-elasticsearch:5.6.10
docker push $REGISTRY_URL/distributed-tracing-tech-preview/jaeger-query:1.8.1

# Grafana, Prometheus Images
docker push $REGISTRY_URL/prom/prometheus:v2.3.1
docker push $REGISTRY_URL/grafana/grafana:5.2.3

# Devex Project Images
docker push $REGISTRY_URL/fabric8/configmapcontroller:2.3.7
docker push $REGISTRY_URL/fabric8/launcher-backend:ab535bc
docker push $REGISTRY_URL/fabric8/launcher-frontend:4571dfc

