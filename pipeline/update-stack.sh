# source this file 

aws cloudformation update-stack \
    --stack-name cicd-codepipeline \
    --template-body file://$PIPELINE_FILE \
    --parameters \
    ParameterKey=GitHubUser,ParameterValue=$GitHubUser \
    ParameterKey=GitHubToken,ParameterValue=$GitHubToken \
    --capabilities CAPABILITY_IAM