# source this file 

aws cloudformation update-stack \
    --stack-name cicd-pipeline \
    --template-body file://$PIPELINE_FILE \
    --parameters \
    ParameterKey=EksClusterName,ParameterValue=$CLUSTER_NAME \
    ParameterKey=GitHubUser,ParameterValue=$GitHubUser \
    ParameterKey=GitHubToken,ParameterValue=$GitHubToken \
    --capabilities CAPABILITY_IAM