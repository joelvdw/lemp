# LEMP tool

LEMP is a tool that uses docker containers to create a local LEMP (Linux, nginx, MySQL, PHP) stack.

It is intended to be use for development purpose.

## Installation

To install the LEMP tool, download the sources and run : 

```bash
cd lemp-main
sudo ./install.sh
```

## Usage

Usage:  `lemp COMMAND`

```
Commands:
  start      Start LEMP containers
  stop       Stop LEMP containers
  restart    Restart LEMP containers
  status     Display LEMP status
  logs       Display container's logs
  version    Display LEMP tool version
  help       Display this help message
```

Run `lemp COMMAND --help` for further information on a specific command.


When LEMP is started, the site can be accessed at : [http://localhost:8080](http://localhost:8080)

A phpMyAdmin interface is also accessible at : [http://localhost:8888](http://localhost:8888)

## License

This tool is provided with a MIT license. See [LICENSE](LICENSE) file.
