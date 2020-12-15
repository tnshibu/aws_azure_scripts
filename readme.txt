   Clone git repo https://www.github.com/tnshibu/aws_azure_scripts
01> download kubectl using below commands(or download from browser)
    curl -LO "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl"
    chmod +x ./kubectl
    sudo mv ./kubectl /usr/local/bin/kubectl

02>  aws configure --profile default
     put in the access key, secret key and other details to configure AWS CLI
01>  create a EC2 instance by following the commands in "ec2" folder
02>  cd eks
     run commands in "eks-commands.txt" one by one
04>  python3 eks_ops.py install 0 6
     check kubectl version
     kubectl --version
     if both client detail and server details are printed, it means kubectl is able to connect to kubernetes cluster
     
