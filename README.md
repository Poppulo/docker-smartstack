# Smartstack Base Docker Image

## Using this image

You can pull this image from the registry using:

```
docker pull newsweaver/smartstack
```

You can use this image as a base image in Dockerfiles:

```
FROM newsweaver/smartstack
```

## What does this image contain?

Operating System: Ubuntu 14.04 (Docker Image ubuntu:14.04)

Installed components:

* HA Proxy (enabled)
* Synapse
* Nerve

## How to use smartstack

To enable Synapse, the running script of the final image needs to create a configuration file under /etc/synapse.conf.json and start it with the command:

```
/opt/startSynapse.sh
```

To enable Nerve, the running script of the final image needs to create a configuration file under /etc/nerve.conf.json and start it with the command:

```
/opt/startNerve.sh
```

Both Synapse and Nerve need access to Zookeeper, which must be passed to the container via the ZK_HOSTS environment variable.

## About Smartstack

[Smartstack](http://nerds.airbnb.com/smartstack-service-discovery-cloud/) is an open-source service discovery framework developed by Airbnb.

For more details, see:

* https://github.com/airbnb/nerve
* https://github.com/airbnb/synapse