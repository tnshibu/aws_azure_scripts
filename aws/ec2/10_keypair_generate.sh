#Delete if keypair exists with that name
aws ec2 --profile shibu_admin delete-key-pair --key-name MyKeyPair10
#Generate Key Pair
aws ec2 --profile shibu_admin create-key-pair --key-name MyKeyPair10 --query 'KeyMaterial' --output text > ~/MyKeyPair10.pem
chmod 400 ~/MyKeyPair10.pem
echo Key Pair saved to your home directory
