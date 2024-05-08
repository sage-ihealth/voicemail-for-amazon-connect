./~/Documents/iHealth/others/mfa-config 

aws cloudformation create-stack \
  --profile mfa \
  --stack-name unifiedcare-dev-vm1 \
  --template-url https://unifiedcare-dev-vm.s3.us-west-2.amazonaws.com/aws-connect-vm-serverless/templates/voicemail-for-amazon-connect.template.yaml \
  --parameters file://./20240507NewVM/unifiedcare-dev-parameters.json \
  --capabilities CAPABILITY_IAM CAPABILITY_NAMED_IAM
