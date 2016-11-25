#!/bin/sh
echo UserName ${UserName} >> /etc/cntlm.ini
echo Domain ${Domain} >> /etc/cntlm.ini
echo PassNTLMv2 ${PassNTLMv2} >> /etc/cntlm.ini
echo Proxy ${Proxy} >> /etc/cntlm.ini
echo NoProxy localhost, 127.0.0.*, 10.*, 192.168.*, *.${Domain} >> /etc/cntlm.ini
echo Gateway yes >> /etc/cntlm.ini
echo Listen 3128 >> /etc/cntlm.ini

exec /usr/sbin/cntlm -f -U cntlm -c /etc/cntlm.ini
