function _mint {
    local line

    _arguments -C \
        "-h[Show help information]" \
        "--help[Show help information]" \
        "1: :(build docs format init install lint start test tool version)" \
        "*::arg:->args"

    case $line[1] in
        "build")
            _mint_build
        ;;
        "docs")
            _mint_docs
        ;;
        "format")
            _mint_format
        ;;
        "init")
            _mint_init
        ;;
        "install")
            _mint_install
        ;;
        "lint")
            _mint_lint
        ;;
        "start")
            _mint_start
        ;;
        "test")
            _mint_test
        ;;
        "tool")
            _arguments "1: :(clean docs-json docs-server highlight loc ls ls-websocket)"
        ;;
    esac
}

function _mint_build {
    _arguments \
        "--env[Loads the given .env file.]" \
        "--generate-manifest[If specified, the web manifest will be generated.]" \
        "--help[Displays help for the current command.]" \
        "--no-optimize[If specified, the resulting JavaScript code will not be optimized.]" \
        "--runtime[If specified, the supplied runtime will be used instead of the default.]" \
        "--skip-icons[If specified, the application icons will not be generated.]" \
        "--timings[If specified, timings will be printed.]" \
        "--verbose[If specified, all written files will be logged.]" \
        "--watch[If specified, will build on every change.]"
}

function _mint_docs {
    _arguments \
        "--help[Displays help for the current command.]" \
        "--include-core[If specified, documentation will be generated for the standard library as well.]" \
        "--include-packages[If specified, documentation will be generated for used packages as well.]"
}

function _mint_format {
    _arguments \
        "--check[Checks that formatting code produces no changes.]" \
        "--help[Displays help for the current command.]" \
        "--stdin[Formats code from STDIN and writes it to STDOUT.]"
}

function _mint_init {
    _arguments \
        "--bare[If speficied, an empty project will be generated.]" \
        "--help[Displays help for the current command.]"
}

function _mint_install {
    _arguments "--help[Displays help for the current command.]"
}

function _mint_lint {
    _arguments \
        "--help[Displays help for the current command.]" \
        "--json[Output errors in a JSON format.]"
}

function _mint_start {
    _arguments \
        "--env[Loads the given .env file.]" \
        "-e[Loads the given .env file.]" \
        "--format[Formats the source files when they change.]" \
        "--help[Displays help for the current command.]" \
        "--host[The host to serve the application on.]" \
        "--no-reload[Do not reload the browser when something changes.]" \
        "--port[The port to serve the application on.]" \
        "-p[The port to serve the application on.]" \
        "--runtime[If specified, the supplied runtime will be used instead of the default.]"
}

function _mint_test {
    _arguments \
        "--browser[Which browser to run the tests in (chrome, firefox).]" \
        "-b[Which browser to run the tests in (chrome, firefox).]" \
        "--browser-host[Target host, useful when hosted on another machine.]" \
        "-x[Target host, useful when hosted on another machine.]" \
        "--browser-port[Target port, useful when hosted on another machine.]" \
        "-c[Target port, useful when hosted on another machine.]" \
        "--env[Loads the given .env file.]" \
        "-e[Loads the given .env file.]" \
        "--help[Displays help for the current command.]" \
        "--host[Host to serve the tests on.]" \
        "-h[Host to serve the tests on.]" \
        "--manual[Start the test server for manual testing.]" \
        "-m[Start the test server for manual testing.]" \
        "--port[Port to serve the tests on.]" \
        "-p[Port to serve the tests on.]" \
        "--reporter[Which reporter to use (dot, documentation),]" \
        "-r[Which reporter to use (dot, documentation),]" \
        "--runtime[If specified, the supplied runtime will be used instead of the default.]" \
        "--watch[Watch files for changes and rerun tests.]" \
        "-w[Watch files for changes and rerun tests.]" \
}

compdef _mint mint