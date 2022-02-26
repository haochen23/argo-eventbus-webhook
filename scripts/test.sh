export EVENTSOURCE_POD_NAME=$(\
    kubectl --namespace argo-events \
    get pods \
    --output name \
    --selector eventsource-name=webhook)

kubectl --namespace argo-events \
    port-forward $EVENTSOURCE_POD_NAME 12345:12345 &


# curl -X POST \
#     -H "Content-Type: application/json" \
#     -d '{"message":"My first webhook"}' \
#     http://localhost:12345/test