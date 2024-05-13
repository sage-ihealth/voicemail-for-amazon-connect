# sh ./build.sh build --stage prod --region us-west-2 --bucket unifiedcare-prod-vm


aws cloudformation create-stack \
  --profile mfa \
  --stack-name unifiedcare-prod-vm \
  --template-url https://unifiedcare-prod-vm.s3.us-west-2.amazonaws.com/aws-connect-vm-serverless/templates/voicemail-for-amazon-connect.template.yaml \
  --parameters ParameterKey=UserPoolDomainPrefix,ParameterValue=unifiedcare-prod-vm \
              ParameterKey=AmazonConnectInstanceId,ParameterValue=a6218269-1bc3-40aa-85fa-25d29dbd01b6 \
              ParameterKey=AdminEmail,ParameterValue=sage.gu@ihealthlabs.com \
              ParameterKey=ManagerEmail,ParameterValue=merphyseptember@gmail.com \
  --capabilities CAPABILITY_IAM CAPABILITY_NAMED_IAM
