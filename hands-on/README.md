# Setting Environment.

We need to setup our environment to accomplish with our pipeline and just after that play with CI/CD topics. In that case here you'll find the elements needed to setup your own environment in script format. 

### What will you need?
1. GitHub account.
2. AWS EC2 (Or any other plattform that supports cloud computing.)
3. Putty or any other ssh software, that allow us to connect to our own EC2 Instance.(Or any other)
4. You need to create at your EC2 account in case of using this in the cloud, a free tier eligible in our case for test purposes and select **Ubuntu Server 18.04 LTS (HVM)** in our case will be helpful.

### Assumptions.
The scripts contained in this respository and directory were designed to run in a **Linux Ubuntu Server 18.04 LTS (HVM)**, so in that case we consider that you'll be using something like this; in such case that you may need to run this setup script in another platform may be you need to run all of them in a version for the **SO** that you need in specific. For our case, we're gonna be operating with the **Ubuntu Server 18.04 LTS (HVM)**, because it is one of the lightest availables in AWS EC2.
    
    #### Technical assumptions:
        1. We'll be using portainer to simplify our stack management of containers.
        2. We'll be using DockerCompose in order to simplify the configuration of the deployment.
        3. We assume that you'll be using Ubuntu Server 18.04 LTS (HVM), sorry about being repetitive but's very important in order to get this running in a simple way.
        4. We'll be using Docker volumes to persist the data, in such case that you need something different just go ahead and update the compose file, and obviously don't run the volumes-creation.sh
    
    ### Non technical but important:
        1. Default user to connect to your new brand AWS Instance will be: ubuntu

### Let's get start with this.
1. First of all you have two choices, [clone](https://github.com/rkobismarck/continuous-integration) this repository with the source code and avoid writting your own Dockerfile,DockerCompose and Scripts by having this approach you'll be focusing only on the related infrastructure setup involving Jenkins-Docker-AWS or just start from the begining creating your own repo and of course adding your desired source code, Dockerfiles and Compose files of your choice.
2. You always can create a fork from this respository, so take that in consideration and feel free to play with it.
3. Connect to your EC2 instance, via ssh and perform the GitClone from the repo.
4. Go to the directory **hands-on**
5. We're gonna install Docker and Docker-Compose in the first instance so in that case you need to perform the next:

    * Change permsions for the sh files, all of them need permision of execution in your UNIX.
    ![alt text](https://github.com/rkobismarck/continuous-integration/blob/master/media-content/scripts-1.png "Files SH.")
    * After the prior step, we need to execute the scripts set in the following order:

        Just for the first time:
        
        1. setup-docker.sh: It will install Docker & Compose in your brand new system.
        2. volumes-creation.sh : It will setup the volumes to persist data, because it's important to emphasize the next: "If we didn't assign a volume the container itself all the data will be ephimeral as the container itself".

        Subsecuent executions:

        3. run-containers.sh: This will help you in the startup process of the containers, in this case we're using one for Portainer and Jenkins.
5. After the execution of the scripts set, youll be able to perform the next command in your CLI:
![alt text](https://github.com/rkobismarck/continuous-integration/blob/master/media-content/scripts-2.png "Docker PS."). What does this means? Congratulations now you have up&running your Dockerized Portainer and Jenkins.
6. Perform the configuration of both of them, at least for the first time you'll be encouraged to setup user and passwords, in this guide we'll assume that you already know how to configure them in order to keep moving forward.
7. How can i test the setup? 

    It's very simple go to:
    
    * Portainer : **IP-Adress-Instance:9000** 
    * Jenkins : **IP-Adress-Instance:8080**
    
    **Note**: Those are the defaults ports, if you need something else please go and take a look in the docker compose file of each one of them.

    You'll see something like this: (After configuring each one of them, we'll consider that you've passed that setp.)

    * Portainer
    ![alt text](https://github.com/rkobismarck/continuous-integration/blob/master/media-content/scripts-3.png "Portainer Dashboard.")


    * Jenkins
    ![alt text](https://github.com/rkobismarck/continuous-integration/blob/master/media-content/scripts-4.png "Jenkins Dashboard.")

    **Important** We assume that you've already opened the ports in your AWS-EC2 configuration, in case of not being able to see the instances trough your browser and after confirming with **docker ps** the fact they're running, you should take a look on the opening ports for your instance.(AWS Configuration). 
    
### Extra resources.
    
[Jenkins Setup](https://github.com/rkobismarck/docker-jenkins-pipeline/blob/master/README.md)

[AWS Inbound Traffic](https://kerneltalks.com/virtualization/how-to-open-port-on-aws-ec2-linux-server/)

[AWS SSH Connect](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AccessingInstancesLinux.html)




    


