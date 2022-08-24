FROM mcr.microsoft.com/azure-cli:2.39.0

#ERUN apk add --no-cache \
#E  gettext \
#E  jq
#E
#EARG HELM_VERSION=v3.6.3
#E
#ERUN curl -fsSL "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl" -o /usr/local/bin/kubectl \
#E  && chmod +x /usr/local/bin/kubectl
#E
#ERUN mkdir -p /tmp/helm/ \
#E  && curl -fsSL https://get.helm.sh/helm-${HELM_VERSION}-linux-amd64.tar.gz | tar -xzvC /tmp/helm/ --strip-components=1 \
#E  && cp /tmp/helm/helm /usr/local/bin/helm \
#E  && rm -rf /tmp/helm
#E
#ERUN curl -fsSL https://github.com/mikefarah/yq/releases/download/v4.12.2/yq_linux_amd64 -o /usr/local/bin/yq \
#E  && chmod +x /usr/local/bin/yq
