ORG_NAME = nhsd-exeter
PROGRAMME = uec
PROJECT_GROUP = uec/dos
PROJECT_GROUP_SHORT = uec-dos
PROJECT_NAME = integration
PROJECT_NAME_SHORT = int
PROJECT_DISPLAY_NAME = DoS Integration
PROJECT_ID = $(PROJECT_GROUP_SHORT)-$(PROJECT_NAME_SHORT)

TEAM_NAME = DoS Integration
TEAM_ID = dos-integration

ROLE_PREFIX = UECCommon
PROJECT_TAG = $(PROJECT_NAME)
SERVICE_TAG = $(PROJECT_GROUP_SHORT)
SERVICE_TAG_COMMON = texas

PROJECT_TECH_STACK_LIST = python,terraform

DOCKER_REPOSITORIES =
SSL_DOMAINS_PROD =
DEPLOYMENT_SECRETS = $(PROJECT_ID)-$(PROFILE)/deployment

AWS_SAME_ACCOUNT_DOCKER_REGISTRY = $(AWS_ACCOUNT_ID).dkr.ecr.$(AWS_DEFAULT_REGION).amazonaws.com/$(PROJECT_GROUP_SHORT)/$(PROJECT_NAME_SHORT)
PYTHON_VERSION = $(PYTHON_VERSION_MAJOR).$(PYTHON_VERSION_MINOR)
AWS_VPC_NAME = lk8s-$(AWS_ACCOUNT_NAME).texasplatform.uk

TF_VAR_team_id = $(TEAM_ID)
TF_VAR_programme = $(PROGRAMME)