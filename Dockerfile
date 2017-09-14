FROM rocker/hadleyverse

RUN apt-get clean && apt-get -q -y update
RUN DEBIAN_FRONTEND=noninteractive apt-get -q -y --fix-missing install libjpeg62-turbo-dev libudunits2-dev libprotobuf-dev  protobuf-compiler

RUN install2.r --error \
    GISTools \
    OpenStreetMap \
    NeuralNetTools \
    NeuralNetTools \
    RColorBrewer \
    RedditExtractoR \
    Rfacebook \
    XML \
    arules \
    catdata \
    cluster \
    corrplot \
    devtools \
    dplyr \
    fitdistrplus \
    gapminder \
    ggmap \
    ggplot2 \
    ggvis \
    googleVis \
    gsheet \
    gtrendsR \
    httr \
    imputeTS \
    igraph \
    jpeg \
    jsonlite \
    lubridate \
    magrittr \
    maps \
    nnet \
    pageviews \
    raster \
    recommenderlab \
    reshape2 \
    rpart \
    rworldmap \
    shiny \
    spatstat \
    swirl \
    tm \
    tmap \
    topicmodels \
    twitteR \
    wordcloud \
    xts
    
RUN wget https://cran.r-project.org/src/contrib/Archive/ngramr/ngramr_1.4.5.tar.gz
RUN R CMD INSTALL ngramr_1.4.5.tar.gz

RUN wget http://cran.r-project.org/src/contrib/Archive/slam/slam_0.1-37.tar.gz
RUN R CMD INSTALL slam_0.1-37.tar.gz

RUN Rscript -e 'install.packages("h2o", type="source", repos=(c("http://h2o-release.s3.amazonaws.com/h2o/latest_stable_R")))'
RUN Rscript -e "require(devtools)" -e "install_github('likert', 'jbryer')"
RUN Rscript -e 'require(devtools)' -e 'install_github("robjhyndman/forecast")'
RUN Rscript -e 'require(devtools)' -e 'install_github("ironholds/pageviews")'
RUN Rscript -e 'require(devtools)' -e 'install_github("twitter/AnomalyDetection")'

RUN mkdir /courses
RUN mkdir /swirldata

ADD scripts /

