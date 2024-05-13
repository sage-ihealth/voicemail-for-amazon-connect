./~/Documents/iHealth/others/mfa-config 

aws cloudformation create-stack \
  --profile mfa \
  --stack-name unifiedcare-dev-vm3 \
  --template-url https://unifiedcare-dev-vm.s3.us-west-2.amazonaws.com/aws-connect-vm-serverless/templates/voicemail-for-amazon-connect.template.yaml \
  --parameters ParameterKey=UserPoolDomainPrefix,ParameterValue=unifiedcare-dev-vm3 \
              ParameterKey=AmazonConnectInstanceId,ParameterValue=185fa6d0-dd03-4066-b713-ac39542f3bc5 \
              ParameterKey=AdminEmail,ParameterValue=sage.gu@ihealthlabs.com \
              ParameterKey=ManagerEmail,ParameterValue=merphyseptember@gmail.com \
  --capabilities CAPABILITY_IAM CAPABILITY_NAMED_IAM


  # --parameters file://./20240507NewVM/unifiedcare-dev-parameters.json \
