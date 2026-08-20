kiro-contained () {
    local KIRO_DOCKER_IMG=${KIRO_DOCKER_IMG:-kiro-contained}
    docker run --rm -it -v $PWD:/project -w /project "${KIRO_DOCKER_IMG}"
}

