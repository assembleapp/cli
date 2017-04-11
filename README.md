# Assemble CLI

A command-line interface to http://assembleapp.co.

```
Commands:
  assemble help [COMMAND]                             # Describe available commands or on...
  assemble init BLOCK_NAME SCAFFOLD                   # Create a new Assemble block from ...
  assemble push                                       # publish the current directory's b...
  assemble run_block BLOCK_NAME --input=<input_file>  # run a block in the cloud, on the ...
  assemble test --input=<input_file>                  # test the current directory's bloc...
```

This repository contains an `assemble` CLI executable written in Ruby.
It also contains a `wrapper` script
that executes the CLI inside of a Docker container,
with all of the necessary dependencies.

To use the wrapper, build the Dockerfile in the current directory with:

```
docker build -t assemble_cli .
```

And then create an alias to run the wrapper:

```
alias assemble='/path/to/assemble/cli/wrapper'
```
