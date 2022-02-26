kubectl create namespace argo-events

kubectl apply \
    --filename https://raw.githubusercontent.com/argoproj/argo-events/stable/manifests/install.yaml

kubectl --namespace argo-events apply \
    --filename https://raw.githubusercontent.com/argoproj/argo-events/stable/examples/eventbus/native.yaml

kubectl --namespace argo-events apply \
    --filename event_source.yaml

kubectl --namespace argo-events apply \
--filename sensor.yaml


# kubectl get namespace "argo-events" -o json \
#   | tr -d "\n" | sed "s/\"finalizers\": \[[^]]\+\]/\"finalizers\": []/" \
#   | kubectl replace --raw /api/v1/namespaces/argo-events/finalize -f -