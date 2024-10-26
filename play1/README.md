Check tf version
```
terraform --version
Terraform v1.9.8
on linux_amd64
+ provider registry.terraform.io/datastax/astra v2.2.8
```

Add your token to `../astra-token.sh`
```
source ../astra-token.sh
```

Run terraform
```
terraform init
terraform apply -auto-approve
```