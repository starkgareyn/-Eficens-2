
Step 1: Choose an Amazon Machine Image (AMI)

AMI : Ubuntu  : Ubuntu Server 20.04 LTS (HVM), SSD Volume Type - ami-0851b76e8b1bce90b

AMI : Windows :

Step 2: Choose an Instance Type

Currently selected: t2.micro (- ECUs, 1 vCPUs, 2.5 GHz, -, 1 GiB memory, EBS only)

Step 3: Configure Instance Details :

Number of instances : 1
Network : Default
Subnet  : 3 Subnets i.e. ap-south-1a

Advanced Details :
User data : 

Step 4: Add Storage :

Linux : 8GB

Windows : 30GB 

Step 5: Add Tags  :

Name : Linux 
Env  : Dev 


Step 6: Configure Security Group :

sg_dmz : 
SSH For Linux - port 22
RDP For Windows - port 3389
Web http  - port 80 

Step 7: Review Instance Launch :

