
## Install docker

Install docker will also install docker-compose

```bash
sudo apt-get update
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common \
    lsb-release -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
 sudo apt-get update
 sudo apt-get install docker-ce docker-ce-cli containerd.io
```

### Verify docker
```
which docker
which docker-compose
docker --version
docker-compose --version
git --version
```


## Reference

[From docker](https://docs.docker.com/install/linux/docker-ce/ubuntu/)

