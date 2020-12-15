# get all instance ids
aws ec2 --profile shibu_admin describe-instances --filters  "Name=instance-state-name,Values=pending,running,stopped,stopping" --query "Reservations[].Instances[].[InstanceId]" --output text 
#-------------------------------------------------------------------------------------
# display on single line
#aws ec2 describe-instances --filters  "Name=instance-state-name,Values=pending,running,stopped,stopping" --query "Reservations[].Instances[].[InstanceId]" --output text | tr '\n' ' '
#-------------------------------------------------------------------------------------
