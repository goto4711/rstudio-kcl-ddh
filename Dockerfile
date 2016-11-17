FROM rocker/hadleyverse

RUN DEBIAN_FRONTEND=noninteractive apt-get -q -y --fix-missing install libjpeg62-dev

RUN install2.r --error \
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
    ggmap \
    ggplot2 \
    ggvis \
    googleVis \
    h2o \
    httr \
    igraph \
    jpeg \
    jsonlite \
    magrittr \
    maps \
    nnet \
    recommenderlab \
    reshape2 \
    rpart \
    rworldmap \
    shiny \
    swirl \
    tm \
    topicmodels \
    twitteR \
    wordcloud 
    
RUN wget https://cran.r-project.org/src/contrib/Archive/ngramr/ngramr_1.4.5.tar.gz
RUN R CMD INSTALL ngramr_1.4.5.tar.gz

RUN wget http://cran.r-project.org/src/contrib/Archive/slam/slam_0.1-37.tar.gz
RUN R CMD INSTALL slam_0.1-37.tar.gz

RUN mkdir /courses
RUN mkdir /swirldata

ADD scripts /

