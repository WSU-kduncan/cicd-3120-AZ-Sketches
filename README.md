# Project 5
  - The overall purpose of this project is to explore the applications of the Docker.
## Part 1 - Dockerize It
  - The project runs locally and it is performed by performing the following steps:
  - I installed Docker on WSL2 using the command `sudo apt-get install docker-ce=18.06.3~ce~3-0~ubuntu docker-ce-cli=18.06.3~ce~3-0~ubuntu containerd.io`. I also installed Nginx to utilize as a webserver to run my website.
  - After creating the Dockerfile that is within the repository, I used the command `docker build -t webserver .` to build the container and tag it as "webserver".
  - And then to run the container, I used the command `docker run -it --rm -d -p 8080:80 --name web webserver` where it is published on port 8080.
  - Lastly, to view the project I entered `curl localhost:8080` and was able to view the project.
![Image](https://user-images.githubusercontent.com/76796854/164306858-73a47d3f-a27c-4bed-98e1-3c57da6abcc8.png)
