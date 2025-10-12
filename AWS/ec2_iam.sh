# Create an IAM role for EC2 with a trust policy (trust-policy.json should allow EC2 to assume this role)
aws iam create-role --role-name MyEC2Role --assume-role-policy-document file://trust-policy.json

# Attach the AmazonS3ReadOnlyAccess policy to the role for S3 read-only permissions
aws iam attach-role-policy --role-name MyEC2Role --policy-arn arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess

# Create an instance profile to associate the IAM role with an EC2 instance
aws iam create-instance-profile --instance-profile-name MyEC2InstanceProfile

# Add the IAM role to the instance profile
aws iam add-role-to-instance-profile --instance-profile-name MyEC2InstanceProfile --role-name MyEC2Role

# Launch an EC2 instance with the specified instance profile (IAM role attached)
aws ec2 run-instances \
    --image-id ami-05f408238af346b4f \  # Specify the AMI ID
    --instance-type t2.micro \           # Specify the instance type
    --subnet-id subnet-071ba3c8ba6e07e00 \  # Specify the subnet ID
    --block-device-mappings '[{"DeviceName":"/dev/xvda","Ebs":{"VolumeSize":10,"VolumeType":"gp2"}}]' \  # Root volume config
    --iam-instance-profile Name=MyEC2InstanceProfile \  # Attach the instance profile (IAM role)
    --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=ec2-kodekloud}]' \  # Add a Name tag
    --count 1  # Number of instances to launch


# The following commands create a new IAM role with S3 Full Access and attach it to an existing EC2 instance

# Create a new IAM role for EC2 with a trust policy (trust-policy.json should allow EC2 to assume this role)
aws iam create-role --role-name MyEC2S3FullAccessRole --assume-role-policy-document file://trust-policy.json

# Attach the AmazonS3FullAccess policy to the new role for S3 read and write permissions
aws iam attach-role-policy --role-name MyEC2S3FullAccessRole --policy-arn arn:aws:iam::aws:policy/AmazonS3FullAccess

# Create an instance profile to associate the new IAM role with an EC2 instance
aws iam create-instance-profile --instance-profile-name MyEC2S3FullAccessInstanceProfile

# Add the new IAM role to the instance profile
aws iam add-role-to-instance-profile --instance-profile-name MyEC2S3FullAccessInstanceProfile --role-name MyEC2S3FullAccessRole

# Attach the instance profile (with S3 Full Access role) to an existing EC2 instance (replace with your instance ID)
aws ec2 associate-iam-instance-profile --instance-id i-0abcd1234efgh5678 --iam-instance-profile Name=MyEC2S3FullAccessInstanceProfile

# Verify the IAM instance profile association for the specified EC2 instance
aws ec2 describe-iam-instance-profile-associations --instance-id i-0abcd1234efgh5678
