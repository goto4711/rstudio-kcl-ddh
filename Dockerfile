FROM rocker/hadleyverse

RUN install2.r --error \
    NeuralNetTools \
    RColorBrewer \
    RedditExtractoR \
    XML \
    catdata \
    cluster \
    corrplot \
    devtools \
    ggplot2 \
    h2o \
    httr \
    jpeg \
    maps \
    nnet \
    reshape2 \
    shiny \
    swirl \
    tm \
    topicmodels \
    twitteR \
    igraph \
    lubridate \
    dplyr \
    stringr \
    rvest \
    wordcloud

RUN wget https://cran.r-project.org/src/contrib/Archive/ngramr/ngramr_1.4.5.tar.gz
RUN R CMD INSTALL ngramr_1.4.5.tar.gz

RUN mkdir /courses
RUN mkdir /swirldata

ADD scripts /
