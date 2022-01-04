#!/bin/bash
echo "Copying the SSH Key to the server"
echo -e "#solo\nssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQD0f/n+gnCV6wXuK3vIYfL5lkMqzusEwCSXD+xBIFsR5hIcFYzLV+1H/FNwFY2skkMZMDgYz3nooE7405h25V+ArZP8m75fJ54WS0PUEakQC1wkPl4ejOgVOIvzP7C+lHmqcmkLJSiw+YWxGAC7yqhaNe8IoOyHA6cqywVEFdyAF63PZPfGRtcWRvKoFKE2VQGt64beASg7vRA3Pymb9+8qek5HNoJD0xSWNrqjnuIo5wLCkAwScFmTMjvLqocKIHncmm6IHSQr/H+6gYk2tFt/AQbDIuy0D7mZbXYdN862SysegTjT3jot8bMo1zpOyjYUz7SN0mGAtIgkhK38XmAAEslq0pWv+tzy6Ny7qdhRBwUwlbrbd4w3N0q4adjD4f+9ustzX2d/UvSpsMt3KsDPIlpl54r6TYfnqLWNRzNqY+5xZ8bSnwcuukuqwiAbC95CkEdKm1kGKlwcapR6TS92453wPrkxuonomqZ8n4hMq6toOs33ByLWCbRGIED/JTM= solo" >> /home/ec2-user/.ssh/authorized_keys

#usermod -a -G sudo ec2-user
sudo yum update -y kernel
sudo amazon-linux-extras disable kernel-5.4
sudo amazon-linux-extras install -y kernel-5.10