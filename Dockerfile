FROM alpine

RUN apk add --no-cache bash bash-completion gawk less ncurses util-linux

COPY xsos /usr/local/bin/xsos
COPY xsos-bash-completion.bash /etc/profile.d/xsos-bash-completion.bash

RUN mkdir /sosreport

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]