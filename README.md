# Terraform 1

## Build the Docker image
```bash
docker build -t mthomas/terraform:1.0 .
```

## Run the Docker image
```bash
docker run -it -v ${HOME}/.ssh:/.ssh  -v ${PWD}/tf:/app -w /app/  mthomas/terraform:1.0
```

## Useful commands

```bash
terraform init
```

```bash
terraform plan
```
```bash
terraform apply
```
