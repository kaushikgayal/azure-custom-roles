include .env

.PHONY: echo
echo:
	@echo "Hello, world!"

#Get a container shell
.PHONY: shell
shell:
	@docker compose run --rm azure-shell /bin/sh

.PHONY: build
build:
	docker build .

#AZ commands
.PHONY: login _login
login:
	@docker compose run --rm azure-shell make _login
_login:
	az login --service-principal -u $${ARM_CLIENT_ID} -p $${ARM_CLIENT_SECRET} --tenant $${ARM_TENANT_ID}
	az account set --subscription $${ARM_SUBSCRIPTION_ID}

#Terraform commands
.PHONY: init _init validate _validate plan _plan apply _apply destroy _destroy console _console
init:
	@docker compose run --rm azure-shell make _init
_init: _login
	terraform init
	terraform fmt -recursive
	terraform validate

plan:
	@docker compose run --rm azure-shell make _plan
_plan: _init
	terraform plan -var-file="configuration/custom-roles.auto.tfvars" -var-file="configuration/custom-role-list.tfvars" -var-file="configuration/custom-role-assignments.auto.tfvars" -out=tfplan

tf-scan:
	@docker-compose run --rm azure-shell make _tf-scan
_tf-scan:
	terraform show -json tfplan | jq '.' > tfplan.json
	tflint --module --force
	tfsec --tfvars-file azdo.auto.tfvars
	checkov --quiet --soft-fail --skip-resources-without-violations -f tfplan.json

apply:
	@docker compose run --rm azure-shell make _apply
_apply: _init
	terraform apply -var-file="configuration/custom-roles.auto.tfvars" -var-file="configuration/custom-role-list.tfvars" -var-file="configuration/custom-role-assignments.auto.tfvars" -auto-approve

destroy:
	@docker compose run --rm azure-shell make _destroy
_destroy: _init
	terraform destroy -auto-approve

console:
	@docker compose run --rm azure-shell make _console
_console: _init
	terraform console