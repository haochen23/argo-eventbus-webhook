kubectl --namespace argo-events delete \
--filename sensor.yaml

kubectl --namespace argo-events delete \
    --filename event_source.yaml

kubectl --namespace argo-events delete \
    --filename https://raw.githubusercontent.com/argoproj/argo-events/stable/examples/eventbus/native.yaml

kubectl delete \
    --filename https://raw.githubusercontent.com/argoproj/argo-events/stable/manifests/install.yaml

kubectl delete ns argo-events