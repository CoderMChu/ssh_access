SSL Access
==========

To give me root access to a Ubuntu server.

Run:

```sh
sudo ./create_kaik_user_with_sudo_access.sh
```

One liner:
```sh
cd /tmp && git clone https://github.com/kaicode/ssl_access.git && cd ssh_access && ./create_kaik_user_with_sudo_access.sh && echo 'Kai has access' && cd .. && rm -r ssh_access
```