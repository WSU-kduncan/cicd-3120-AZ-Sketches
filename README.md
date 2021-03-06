# Project 5
  - The overall purpose of this project is to explore the applications of the Docker.
## Part 1 - Dockerize It
  - The project runs locally and it is performed by performing the following steps:
  - I installed Docker on WSL2 using the command `sudo apt-get install docker-ce=18.06.3~ce~3-0~ubuntu docker-ce-cli=18.06.3~ce~3-0~ubuntu containerd.io`. I also installed Nginx to utilize as a webserver to run my website.
  - After creating the Dockerfile that is within the repository, I used the command `docker build -t webserver .` to build the container and tag it as "webserver".
  - And then to run the container, I used the command `docker run -d --name azzy --rm -p 8080:80 webserver` where it is published on port 8080.
  - Lastly, to view the project I entered the URL `localhost:8080` and was able to view the project.
![Image](https://user-images.githubusercontent.com/76796854/164306858-73a47d3f-a27c-4bed-98e1-3c57da6abcc8.png)
## Part 2 - GitHub Actions and DockerHub
  - In this section of the project, I created a public DockerHub repository.
  - To authenticate with DockerHub via CLI, I use the DockerHub username and password.
  - When configuring the GitHub Secrets, two were made named `DOCKER_USERNAME` and `DOCKER_PASSWORD` containing the credentials of my DockerHub login mentioned above.
  - The Github workflow that was created builds and pushes docker images to DockerHub when I log in to my DockerHub. Additionally, `.yml` file was based off a template provided with a few changes to perform what was needed to be done, such things includes making sure the file uses the GitHub secrets that I have set and pushing the images to my public repository that was created in DockerHub.
## Part 3 - Deployment
  - I created a script named `pull-restart.sh` that kills old running containers, pulls the image host from DockerHub, and then runs a new image.
  - A webhooks definition `.json` file was created that executes the `pull-restart.sh` script and sets the `/var/webhooks` directory as the command working directory.
  - I've found a way to add a webhook to GitHub by going to Settings->Webhooks->Add Webhook.
  - A notifier was made by going to the bell icon and navigating to Manage notifications->Notification settings. And I can adjust the settings to listen to any changes made.
## Part 4 - Diagramming
  - I created a diagram that visualizes how the entire thing works shown below:
![Image](https://user-images.githubusercontent.com/76796854/164778084-f46f3aac-693f-4918-aa14-a7808e08d62e.png)
