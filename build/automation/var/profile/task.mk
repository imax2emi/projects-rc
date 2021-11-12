-include $(VAR_DIR)/platform-texas/v1/account-live-k8s-nonprod.mk

# ==============================================================================
# Service variables

LOG_LEVEL := DEBUG
DOS_API_GATEWAY_USERNAME := user
DOS_API_GATEWAY_PASSWORD := password
DOS_API_GATEWAY_REQUEST_TIMEOUT := 30
DOS_API_GATEWAY_URL := $(or $(DOS_API_GATEWAY_URL), "//")
MOCK_MODE := False
# ==============================================================================
# Infrastructure variables (Terraform, Serverless, etc)
API_GATEWAY_API_KEY_NAME := $(PROJECT_ID)-$(ENVIRONMENT)-api-key
NHS_UK_API_KEY_KEY := NHS_UK_API_KEY

# API Gateway API Keys
TF_VAR_api_gateway_api_key_name := $(PROJECT_ID)-$(ENVIRONMENT)-api-key
TF_VAR_nhs_uk_api_key_key := NHS_UK_API_KEY

# Lambda Security Group
TF_VAR_lambda_security_group_name := $(PROJECT_ID)-$(ENVIRONMENT)-lambda-sg

# API Gateway Route53
TF_VAR_dos_integration_sub_domain_name := $(PROGRAMME)-$(TEAM_ID)-$(ENVIRONMENT)
DOS_INTEGRATION_URL := $(TF_VAR_dos_integration_sub_domain_name).$(TEXAS_HOSTED_ZONE)