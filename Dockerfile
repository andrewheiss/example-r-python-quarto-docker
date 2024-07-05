FROM rocker/tidyverse:4.4.1

# Install system dependencies
RUN apt-get update -y \
    && apt-get install -y --no-install-recommends \
    # For compiling things
    build-essential \
    clang-3.6 \
    # For downloading things
    curl \
    # For Python
    python3 python3-dev python3-venv python3-pip \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Install R stuff
RUN R -e 'install.packages(c("reticulate", "png", "yaml", "quarto"))'

# Install pip stuff
RUN pip3 install numpy pandas matplotlib seaborn jupyter

# This .Rprofile contains commands that force RStudio server to load the analysis project by default
COPY --chown=rstudio:rstudio ./misc/Rprofile.R /home/rstudio/.Rprofile

WORKDIR /home/rstudio/${PROJECT}
