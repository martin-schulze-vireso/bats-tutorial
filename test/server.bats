setup_file() {
    load 'test_helper/common-setup'
    _common_setup
    PORT=$(project.sh start-echo-server 2>&1  >/dev/null)
    export PORT
}

teardown_file() {
    project.sh stop-echo-server
}

@test "server is reachable" {
    nc -z -w 2 localhost "$PORT"
}
