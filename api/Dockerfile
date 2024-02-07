FROM rocker/r-ver:4.0.2

# install the linux libraries needed for plumber
RUN apt-get update -qq && apt-get install -y \
    libssl-dev \
    libcurl4-gnutls-dev

# create the application folder
RUN mkdir -p ~/application

# copy everything from the current directory into the container
COPY "/" "/application/"
WORKDIR "/application/"

# open port PORT to traffic
EXPOSE ${PORT}

# Install plumber and any other required R packages
RUN R -e "install.packages(c('dplyr', 'plumber'))"

# Run the API when the container starts
CMD ["Rscript", "server.R"]
