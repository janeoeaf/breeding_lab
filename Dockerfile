FROM rocker/tidyverse:3.6.3
RUN R --no-save -e "install.packages('aws.s3', repos = 'https://cloud.R-project.org')"
RUN R --no-save -e "install.packages('AlphaSimR')"
RUN R --no-save -e "install.packages('sommer')"
WORKDIR /usr/src
ENTRYPOINT [ "/bin/bash" ]
