FROM debian:stable-slim

RUN apt update
RUN apt -yq install curl


# Label
LABEL "com.github.actions.name"="Trigger discord webhook"
LABEL "com.github.actions.description"="Usinc curl to send your payload to a discord webhook"
LABEL "com.github.actions.color"="green"
LABEL "com.github.actions.icon"="truck"

LABEL "repository"="http://github.com/AEnterprise/discord-webhook"
LABEL "homepage"="https://github.com/AEnterprise/discord-webhook"
LABEL "maintainer"="AEnterprise <aenterprise@aenterprise.info>"


ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
