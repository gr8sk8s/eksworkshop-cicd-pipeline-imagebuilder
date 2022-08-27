Demo CodePipeline 

Multi-stages 

- On developer commit, build app 
- push to ECR 
- git clone the k8s deployment repo 
- update the manifest of STAGING branch to the new container image (which should trigger the staging cluster to update and test)
- then Manual approval step 
- if Yes, merge the staging branch to the mainline branch, which will trigger the PROD cluster account to update too
