1. The centos7_aria011 file contains commands that when executed in sequence installs ARIA.
    Additionally, it has commands to run an example service template.

2. The Dockefile is used to build the Docker image of ARIA for CentOS 7.
   Below is a sample command to build the ARIA 0.1.1 docker image:
   
   'docker build --build-arg ARIA_VER=0.1.1 --build-arg GTAG_VER=0.1.1 -t aria_011:7 .'
   
   NOTE: The build command has to be executed from the location where the Dockerfile resides.
   
3. The docker-compose file executes the below commands in the 'Getting Started' page on
   ARIA website:
   
   a. aria service-templates store examples/hello-world/helloworld.yaml my-service-template
   
   b. aria services create my-service -t my-service-template
   
   c. aria executions start install -s my-service
   
   NOTE 1: The value for 'image' in the docker-compose file needs to match the image you plan to use.
   
   NOTE 2: The command to run docker-compose is "docker-compose up -d" from the location where docker-compose file resides.
   
   You can check if the docker-compose ran successfully by executing the command 'docker-compose ps'
   
   You can also verify that aria executed the commands by launching a web browser with http://localhost:29090