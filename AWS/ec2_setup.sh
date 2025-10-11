# Example AWS CLI command to launch a basic EC2 instance
# Replace <KEY_NAME>, <SECURITY_GROUP_ID>, and <SUBNET_ID> with your values

aws ec2 run-instances \
  --image-id ami-0abcdef1234567890 \
  --count 1 \
  --instance-type t2.micro \
  --key-name <KEY_NAME> \
  --security-group-ids <SECURITY_GROUP_ID> \
  --subnet-id <SUBNET_ID> \
  --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=MyEC2Instance}]'

# ...existing code...


aws ec2 run-instances \
    --image-id ami-05f408238af346b4f \
    --instance-type t2.micro \
    --subnet-id subnet-071ba3c8ba6e07e00 \
    --block-device-mappings '[{"DeviceName":"/dev/xvda","Ebs":{"VolumeSize":10,"VolumeType":"gp2"}}]' \
    --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=ec2-kodekloud}]' \
    --count 1