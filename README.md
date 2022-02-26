# Argo Events Webhook Eventsource Demo


## Requirements
- any kubernetes cluster

## How to use
Use the following script to setup argo events controllers and a event bus, together with the test eventsource and sensor.

```bash
source scripts/setup.sh
```
Check the pods created
```bash
kubectl get pods -w -n argo-events
```

Setup up port-forwarding
```bash
source scripts/test.sh
```
Send a POST request to the webhook endpoint
```bash
curl -X POST \
    -H "Content-Type: application/json" \
    -d '{"message":"This is a test message"}' \
    http://localhost:12345/test
```

Check the message in the k8s sensor created pod
```bash
kubectl -n argo-events logs \
    --selector app=payload
```
