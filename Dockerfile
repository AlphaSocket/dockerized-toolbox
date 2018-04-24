#
# Do not change content here, image automatically built
#
FROM alpine:latest

ARG BUILD_COMMIT
ARG BUILD_DATE

ENV \
	GENERAL_DOCKER_USERS_DEV="03192859189254" \
	GENERAL_DOCKER_USERS_PRD="alphasocket" \
	GENERAL_DOCKER_USER="alphasocket" \
	GENERAL_DOCKER_REGISTRIES_DEV="docker.io" \
	GENERAL_DOCKER_REGISTRIES_PRD="docker.io" \
	GENERAL_DOCKER_REGISTRY="docker.io" \
	GENERAL_KEYS_TRUE="True" \
	GENERAL_KEYS_FALSE="False" \
	GENERAL_KEYS_DEV="dev" \
	GENERAL_KEYS_PRD="prd" \
	BUILD_USER="03192859189254" \
	BUILD_REGISTRY="docker.io" \
	BUILD_REPO="https://github.com/alphaSocket/dockerized-toolbox" \
	BUILD_BRANCH="fatal: Not a git repository (or any parent up to mount point /home)
Stopping at filesystem boundary (GIT_DISCOVERY_ACROSS_FILESYSTEM not set)." \
	BUILD_VERSION="fatal: Not a git repository (or any parent up to mount point /home)
Stopping at filesystem boundary (GIT_DISCOVERY_ACROSS_FILESYSTEM not set)." \
	BUILD_ENV="fatal: Not a git repository (or any parent up to mount point /home) Stopping at filesystem boundary (GIT_DISCOVERY_ACROSS_FILESYSTEM not set)." \
	BUILD_FROM="alpine:latest" \
	BUILD_FAMILY="alpine" \
	BUILD_PORTS_MAIN="" \
	BUILD_PORTS_ADDITIONAL="" \
	BUILD_NAME="toolbox" \
	BUILD_CMD="bash -i" \
	BUILD_PATHS_BINARIES_FOLDER="/usr/local/bin/" \
	SETUP_PATHS_BINARIES="/usr/local/bin" \
	SETUP_PATHS_SETUP="/usr/local/bin/setup" \
	SETUP_PATHS_CONFIG="/usr/local/bin/config" \
	SETUP_DEPENDENCIES_SETUP="" \
	SETUP_DEPENDENCIES_CONFIG="" \
	SETUP_DEPENDENCIES_RUNTIME="bash htop curl docker git mysql-client fcgi nodejs nodejs-npm php7 python python3 py-pip" \
	CONFIG_GROUPS_MAIN_ID="1000" \
	CONFIG_GROUPS_MAIN_NAME="docker" \
	CONFIG_GROUPS_ADDITIONAL_ID="1001" \
	CONFIG_GROUPS_ADDITIONAL_NAME="" \
	CONFIG_USERS_MAIN_ID="1000" \
	CONFIG_USERS_MAIN_NAME="docker" \
	CONFIG_USERS_MAIN_GROUPS="docker" \
	CONFIG_USERS_ADDITIONAL_ID="1001" \
	CONFIG_USERS_ADDITIONAL_NAME="" \
	CONFIG_USERS_ADDITIONAL_GROUPS="" \
	CONFIG_REDINESS_TEST="true" \
	CONFIG_LIVENESS_TEST="true" \
	CONFIG_PATHS_CONTAINER_STATUS="/tmp/container_status"


RUN chmod +x -R /usr/local/bin && \
    sync && \
    /usr/local/bin/setup/1524603075 1>/dev/stdout 2>/dev/stderr




ENTRYPOINT ["/bin/sh", "-c"]
CMD ["/usr/local/bin/docker-run"]

LABEL \
    org.label-schema.vcs-ref="$BUILD_COMMIT" \
    org.label-schema.vcs-url="https://github.com/alphaSocket/dockerized-toolbox"