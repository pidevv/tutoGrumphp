

getent group docker

```
id `whoami`
```

sudo vi /etc/subuid

```
chpyr:1000:1
chpyr:165536:65536
```

sudo vi /etc/subgid

```
chpyr:999:1
chpyr:165536:65536
```

sudo vi /etc/docker/daemon.json

```
{
  "userns-remap": "chpyr"
}
```


sudo service docker restart