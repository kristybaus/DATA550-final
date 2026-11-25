FROM rocker/tidyverse:4.6.1

RUN apt-get update
RUN apt-get install -y libnode-dev
RUN apt-get install -y curl

RUN mkdir /project

WORKDIR /project

COPY . .

RUN Rscript -e "renv::restore(prompt = FALSE)"

RUN mkdir -p /project/report

CMD make -B report.html && cp report.html report/
