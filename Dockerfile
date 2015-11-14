MAINTAINER Oleksii Fedorov <waterlink000@gmail.com>

FROM flurdy/activator

# Useful to force update
ENV IMAGE_VERSION=0.1.0

# Downloads all the requirements
RUN activator --help
