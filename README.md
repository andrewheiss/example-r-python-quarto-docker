# R and Python in one Docker container

0. Make sure you have Docker Desktop installed on your computer (instructions for [macOS](https://docs.docker.com/desktop/install/mac-install/) or [Windows](https://docs.docker.com/desktop/install/windows-install/)). Also make sure you've installed [Visual Studio Code](https://code.visualstudio.com/) and the [VS Code Docker extension](https://code.visualstudio.com/docs/containers/overview)

1. Download this repository and open it in VS Code

2. Right click on `docker-compose.yml` and choose "Compose Up". This will build the Docker container and mount `actual-project` into it

   Alternatively, navigate to this directory in a terminal and run this:

   ```sh
   docker compose -f docker-compose.yml up
   ```

3. In a browser, go to `http://localhost:8787`. This is an RStudio Server instance running inside the Docker container

4. Run the different `.qmd` files from your browser. Any edits you make will appear in your local file system at `actual-projec`, since it's mounted/mapped into the container
