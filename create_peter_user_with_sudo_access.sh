#!/usr/bin/env bash

MY_SHELL=$( which bash )

/usr/sbin/useradd -c 'Michael CHu <mch@ihtsdo.org' -s ${MY_SHELL} -m michael
cat >/etc/sudoers.d/michael-ALL <<EOF
michael     ALL=(ALL:ALL) NOPASSWD: ALL
EOF
chmod 0440 /etc/sudoers.d/michael-ALL
mkdir ~michael/.ssh
chmod 700 ~michael/.ssh
curl https://raw.githubusercontent.com/CoderMChu/ssh_access/master/mchu_rsa.pub >~michael/.ssh/authorized_keys
chmod 400 ~michael/.ssh/authorized_keys
chown -R michael ~michael/.ssh
