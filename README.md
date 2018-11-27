
# Installation
Installation requires access to the internet.

1. Install Docker and Docker compose
2. Create images 
  * `cd ztpserver && sudo docker-compose build`

# Configuration

## DHCP
* Edit `conf/dhcpd.conf` and configure the DHCP server daemon.

## Syslog
* `conf/rsyslog.conf` is not expected to be updated.

## DNS server
* `conf/unbound.conf` must be edited: the A record for ztpserver must match the local address of the Docker host.

## HTTP/ZTPserver
* Follow Arista documentation and configure ztpserver.conf.
  * `bootstrap.conf` should not require any changes.
* Follow Arista documentation and configure static nodes in data/nodes.
* Place images in `data/files/images`.
* Any other files non-directly related to ZTP can be placed under the directory `data/files/other`. Remote clients will be able to download them via HTTP using the URL http://ztpserver/files/other. This way the ZTPserver may also be used for non-Arista devices.


# Operation
## Start
The command below will lauch four Docker containers.
  * `cd ztpserver && sudo docker-compose up -d`

## Stop
The below command will stop all four Docker containers.
  * `cd ztpserver && sudo docker-compose stop`

The below command will stop and remove all four Docker containers, images and volumes.
  * `cd ztpserver && sudo docker-compose down`
