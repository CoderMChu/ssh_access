#!/usr/bin/env bash

MY_SHELL=$( which bash )

/usr/sbin/useradd -c 'Michael Chu <mch@ihtsdo.org' -s ${MY_SHELL} -m mchu
cat >/etc/sudoers.d/mchu-ALL <<EOF
mchu     ALL=(ALL:ALL) NOPASSWD: ALL
EOF
chmod 0440 /etc/sudoers.d/mchu-ALL
mkdir ~mchu/.ssh
chmod 700 ~mchu/.ssh
curl https://raw.githubusercontent.com/CoderMChu/ssh_access/master/mchu_rsa.pub >~mchu/.ssh/authorized_keys
chmod 400 ~mchu/.ssh/authorized_keys
chown -R mchu ~mchu/.ssh
