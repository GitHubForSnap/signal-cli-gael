# [signal-cli-gael](https://snapcraft.io/signal-cli-gael)

_This is NOT an original piece of work, just a snap of signal-cli_

Signal-cli is a commandline interface for the Signal messenger. It supports registering, verifying, sending and receiving messages. signal-cli uses a patched libsignal-service-java, extracted from the Signal-Android source code. For registering you need a phone number where you can receive SMS or incoming calls.

Signal-cli is primarily intended to be used on servers to notify admins of important events. For this use-case, it has a daemon mode with D-BUS interface (man page) and JSON-RPC interface (documentation). For the JSON-RPC interface there's also a simple example client, written in Rust.

**First-time users**

Read the doc at https://github.com/AsamK/signal-cli/blob/master/man/signal-cli.1.adoc on how to get started.

**Configure the daemon**

`sudo vi /var/snap/signal-cli-gael/current/signal-cli-daemon.options`

`sudo snap start signal-cli-gael.signal-cli-daemon`

**2024-03-31**
* v0.13.2 Built for x86-64-v2
