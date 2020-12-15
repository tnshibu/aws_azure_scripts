Steps for creation of AWS kubernetes cluster 
============================================
The latest versions of all "readme.txt" is found in https://www.github.com/tnshibu/aws_azure_scripts . Use that.
The preferred environment to run the cluster creation steps is Linux environment


Steps for creation of EC2 linux instance on AWS
-----------------------------------------------
    Clone git repo https://www.github.com/tnshibu/aws_azure_scripts
    cd aws_azure_scripts/aws/ec2
    You will find a bunch of shell scripts there ( *.sh )
    Please run the commands in this order
        10_keypair_generate.sh
        20_security_group_create.sh
        30_ports_enable_in_security_group.sh
        41_create_ec2_instance_t3_micro.sh
        70_login_to_ec2.sh
    With this you would be logged in to EC2 linux instance
    Note:- The KeyPair name is important.  It wil be used in the cluster creation step.
    
Download required software on EC2 VM
------------------------------------
    You are now logged into EC2 VM instance.
01> download kubectl using below commands
    curl -LO "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl"
    chmod +x ./kubectl
    sudo mv ./kubectl /usr/local/bin/kubectl
02> Download and install AWS client
02> aws configure --profile default
    put in the access key, secret key and other details to configure AWS CLI
    
    
Steps for creation of Kubernetes Cluster on AWS
-----------------------------------------------
>   Do a clone of git repo https://www.github.com/tnshibu/aws_azure_scripts
02>  cd aws_azure_scripts/aws/eks
     run the commands in "eks_role_create.txt" one by one
     this will create the required IAM roles
04> #run below command
    #Note, some parameters have to be modified in 'aws_azure_scripts\aws\eks\eks\eks_parm.py'
    The parameters are 
        EKS_ROLE_ARN
        AWS_SECOND_USER_ARN
        EKS_KEY_NAME
        If you are inclined, you can also change other parameters like node size, node instance type, etc...
    Once all changes are made, please run below command
     ./start_cluster.sh

    #check kubectl version
    kubectl --version
    if both client details and server details are printed, it means kubectl is able to connect to kubernetes cluster
     
Steps for deployment of daytrader application to Kubernets Cluster on AWS
-------------------------------------------------------------------------
