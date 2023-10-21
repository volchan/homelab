# Stack to convert a MacBook Pro to a home server

To initialize the stack, run the `init.sh` script.\
The script will check for brew and docker, then it will start a Portainer container.

When the init script is done, you can visit https://localhost:9443 to access Portainer.\
Create a new stack and copy-paste the content of the docker-compose.yml file.\

To create a stack in Portainer, follow these steps:
1. Open Portainer in your web browser.
2. Click on "Stacks" in the left-hand menu.
3. Click on "Add stack".
4. Give your stack a name and a description.
5. Copy the content of the docker-compose.yml file into the "Web editor" section.
6. Set the environment variables as required.
7. Click on "Create the stack".
