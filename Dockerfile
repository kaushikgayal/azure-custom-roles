FROM mcr.microsoft.com/azure-cli

# Update packages
RUN apk update
RUN apk upgrade && \
    apk add --no-cache \
        docker \
        python3 \
        py3-pip

WORKDIR /src

# Upgrade pip
RUN pip3 install --upgrade pip

# Install checkov
RUN pip3 install checkov

# Install Terraform
RUN wget https://releases.hashicorp.com/terraform/1.4.6/terraform_1.4.6_linux_amd64.zip && \
    unzip terraform_1.4.6_linux_amd64.zip && \
    mv terraform /usr/bin/terraform && \
    rm terraform_1.4.6_linux_amd64.zip

# Install TF lint
RUN curl -L "$(curl -s https://api.github.com/repos/terraform-linters/tflint/releases/latest | jq -r '.assets[].browser_download_url | select(contains("linux_amd64.zip"))')" --output tflint.zip && \
    unzip tflint.zip && \
    mv tflint /usr/bin/ &&\
    rm tflint.zip

# Install tfsec
RUN curl -LO https://github.com/tfsec/tfsec/releases/download/v1.28.1/tfsec-linux-amd64 && \
    chmod +x tfsec-linux-amd64 && \
    mv tfsec-linux-amd64 /usr/bin/tfsec

COPY . /src