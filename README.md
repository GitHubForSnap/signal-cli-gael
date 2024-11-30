# [signal-cli-gael](https://snapcraft.io/signal-cli-gael)

_This is NOT an original piece of work, just a snap of signal-cli_

99signal-cli is a commandline interface for the Signal messenger. It supports registering, verifying, sending and receiving messages. signal-cli uses a patched libsignal-service-java, extracted from the Signal-Android source code. For registering you need a phone number where you can receive SMS or incoming calls.

signal-cli is primarily intended to be used on servers to notify admins of important events. For this use-case, it has a daemon mode with D-BUS interface (man page) and JSON-RPC interface (documentation).

**First-time users**

Read the doc at https://github.com/AsamK/signal-cli/blob/master/man/signal-cli.1.adoc on how to get started.

**Configure automatic message reception every 4 hours**

`sudo vi /var/snap/signal-cli-gael/current/signal-cli-receive.options`

```
--timeout 20 --ignore-attachments --send-read-receipts
```

`sudo snap start --enable signal-cli-gael.signal-cli-receive`

**Configure signal-cli as a sendmail replacement**

`sudo vi /var/snap/signal-cli-gael/current/signal-cli-from-stdin.options`

```
<<DESTINATION_ACOUNT>>
```

`sudo vi /usr/sbin/sendmail2signal`

```
#!/bin/bash

signal-cli-gael.signal-cli-from-stdin
```

`sudo chmod 755 sendmail2signal`

`sudo ln -s /usr/sbin/sendmail2signal /usr/sbin/sendmail`

**2024-11-30**
* v0.13.10 built for x86-64-v2

**2024-10-31**
* Switching to core24

**2024-10-29**
* v0.13.9 built for x86-64-v2

**2024-10-27**
* v0.13.8 built for x86-64-v2

**2024-09-29**
* v0.13.7 built for x86-64-v2

**2024-09-09**
* v0.13.6 built for x86-64-v2

**2024-07-26**
* v0.13.5 built for x86-64-v2

**2024-06-09**
* v0.13.4 built for x86-64-v2

**2024-04-20**
* v0.13.3 built for x86-64-v2

**2024-03-31**
* v0.13.2 built for x86-64-v2
