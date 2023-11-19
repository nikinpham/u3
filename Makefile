EKS_CLUSTER_NAME=udacity-prj3-eks
HELM_REPO_NAME=udacity-pr3-2
HELM_POSTGRES_SVC_NAME=udacity1

aws_configure:
	aws configure
terraform:
	sh ./.bin/terraform.sh
eks_config:
	sh ./.bin/eks_config.sh ${EKS_CLUSTER_NAME}
postgres_setup:
	sh ./.bin/postgres_setup.sh ${HELM_REPO_NAME} ${HELM_POSTGRES_SVC_NAME}
seed_data:
	sh ./.bin/seed_data.sh
eks_deploy:
	sh ./.bin/eks_deploy.sh
expose:
	sh ./.bin/expose.sh
terraform_destroy:
	sh ./.bin/terraform_destroy.sh

start: eks_config postgres_setup seed_data eks_deploy expose
# eks_deploy expose
delete: terraform_destroy