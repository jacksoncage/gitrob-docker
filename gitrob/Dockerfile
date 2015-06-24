#================#
#   BASIC INFO   #
#================#

#===============#===============#===============#
#                                               #
#  How - To                                     #
#  --------                                     #
#                                               #
#  Paste your twitter key to .gitrobrc          #
#                                               #
#  Start your postgres container with           #
#  docker run -P \                              #
#    --name psql jacksoncage/gitrob-psql        #
#                                               #
#  Now, start the gitrob container              #
#  linked to the gitrob-psql                    #
#  container:                                   #
#  docker -run \                                #
#    --link psql:psql \                         #
#    -e organisation_of_choice                  #
#    jacksoncage/gitrob                         #
#                                               #
#===============#===============#===============#


FROM debian:wheezy
MAINTAINER aykit "code@aykit.org"


#=========================#
#   INSTALL DEPENDENCIES  #
#=========================#

RUN apt-get update && \
	apt-get -y install ruby1.9.3 git libpq-dev build-essential

RUN gem install bundler


#====================#
#   INSTALL GITROB   #
#====================#

RUN gem install gitrob
COPY .gitrobrc /root/
COPY start-gitrob.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/start-gitrob.sh
RUN touch /var/lib/gems/1.9.1/gems/gitrob-0.0.6/agreement


#=============#
#   CLEANUP   #
#=============#

RUN apt-get -y purge build-essential


#=====================#
#   FUN WITH DOCKER   #
#=====================#

EXPOSE 9393
ENTRYPOINT ["/usr/local/bin/start-gitrob.sh"]
