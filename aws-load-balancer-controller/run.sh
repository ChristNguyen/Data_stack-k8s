# Create an IAM policy

aws iam create-policy \
    --policy-name AWSLoadBalancerControllerIAMPolicy1 \
    --policy-document file://iam_policy.json \
    --profile MSBDataScientists-828524833368

# ---------------------------------------------------------------------------------------------------------------------
# Create an IAM role

eksctl create iamserviceaccount \
    --cluster=analytics-non-prod-eks \
    --namespace=kube-system \
    --name=aws-load-balancer-controller \
    --role-name AmazonEKSLoadBalancerControllerRole1 \
    --attach-policy-arn=arn:aws:iam::828524833368:policy/AWSLoadBalancerControllerIAMPolicy1 \
    --profile=MSBDataScientists-828524833368 \
    --approve
