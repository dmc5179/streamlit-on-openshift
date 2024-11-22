# streamlit-on-openshift
Example Streamlit app in a container for OpenShift

```
podman build -t quay.io/danclark/ocp-streamlit:latest -f Dockerfile .
```

```
podman run --name streamlit --rm -d -p 8501:8501 quay.io/danclark/ocp-streamlit:latest
```

- Example page can be accessed at http://127.0.0.1:8501

- Cleanup
```
podman stop streamlit
```
