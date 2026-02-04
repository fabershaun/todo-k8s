# Todo-List Kubernetes Project - Shaun Faber

Full-stack application (Frontend, API, MariaDB) deployed on Kubernetes using Helm. Developed as a final project for the K8s course.

## 🚀 Quick Installation (OCI Registry)

To install the application directly from the GitHub Container Registry, run:

```bash
helm install my-release oci://ghcr.io/fabershaun/todolist-chart \
  --version 0.1.0 \
  --set secrets.mysql.name=mysql-secret \
  --set secrets.mysql.rootPassword=123456 \
  --create-namespace \
  -n todolist-final
