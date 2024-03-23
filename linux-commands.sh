#---------------------------------------------------------------------------------------------------------------------------#

# Packages:

rpm -qa # lists packages installed on the system

yum list installed # lists packages installed by yum

#---------------------------------------------------------------------------------------------------------------------------#

# System information:

hostnamectl

uname -a

neofetch

cat /etc/os-release

cat /etc/redhat-release # RHEL distribution

lsb_release -a

#---------------------------------------------------------------------------------------------------------------------------#

# Disk management:

df -h # free space on partitions

lsblk # disk blocks

fdisk -l # management tool for disk - guide: https://boredadmin.com/how-to-resize-or-extend-the-root-partition-in-centos/

#---------------------------------------------------------------------------------------------------------------------------#

# Manage RAM and resource usage:

free -h # shows the amount of RAM

top

htop

#---------------------------------------------------------------------------------------------------------------------------#

# CPU management:

lscpu # CPU information

lshw # system hardware

#---------------------------------------------------------------------------------------------------------------------------#

# Networking:

ip a # ip address

ip r # gateway

arp -n # arp table

route -n # route table

netstat -rn

mtr <host> # checks indirect hosts between the start and end hosts - guide: https://www.baeldung.com/linux/mtr-command

traceroute <host> # Śledź ścieżkę pingu

nmap -p <port> <host> # trace ping path

nping # https://blkcipher.pl/posts/2019-05-02-na_jakim_porcie_dziala_ping/ ; https://netbeez.net/blog/how-to-use-nping/

icmpush # https://linux.die.net/man/8/icmpush ; https://blkcipher.pl/posts/2019-05-02-na_jakim_porcie_dziala_ping/

nload -m # sum up all the network traffic on a network interface

nslookup <domain/address> # shows the address/data for a given domain

dig # shows DNS records and addresses for them

#---------------------------------------------------------------------------------------------------------------------------#

# System administration:

last -x -F shutdown # checks when the system was shut down

last -x -F reboot # checks when the system was rebooted

who -b # checks when the system was started

systemctl # check services - guide: https://www.tecmint.com/list-all-running-services-under-systemd-in-linux/

#---------------------------------------------------------------------------------------------------------------------------#

# Ports:

lsof -i -P -n | grep LISTEN # shows what ports it is listening on

netstat -tulpn | grep LISTEN

ss -tulpn | grep LISTEN

lsof -i:22 # showing a specific port, in this case 22 / netstat -na | grep :22

less /etc/services # shows port numbers

#---------------------------------------------------------------------------------------------------------------------------#

# Formatting:

wc -l # shows the number of lines of a given command

#---------------------------------------------------------------------------------------------------------------------------#

# System logs:

last <username> # shows when the user logged in to the system

grep '<username>' /var/log/auth.log

journalctl -xe # systemd logs

#---------------------------------------------------------------------------------------------------------------------------#

# Git:

git config --global user.name "<username>"

git config --global user.email "<e-mail>"

git config --list

git clone <repository_url>

cd <cloned_repo>

git checkout -b <new-branch>

git add /path/to/file

git commit -m "Add my changes to repo"

git push origin <new-branch>

#---------------------------------------------------------------------------------------------------------------------------#
