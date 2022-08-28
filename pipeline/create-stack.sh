# source this file 

aws cloudformation create-stack \
    --stack-name cicd-codepipeline \
    --template-body file://$PIPELINE_FILE \
    --parameters \
    ParameterKey=GitHubUser,ParameterValue=$GitHubUser \
    ParameterKey=GitHubToken,ParameterValue=$GitHubToken \
    --capabilities CAPABILITY_IAM