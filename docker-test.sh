curl -fsSL https://get.docker.com | sudo sh

sudo ufw allow OpenSSH
sudo ufw allow 8080/tcp
sudo ufw enable

docker pull ghcr.io/nbqduong/simbolt-playwrightloadtest:latest

docker run -d \
  --name simbolt \
  --restart unless-stopped \
  -p 8080:8080 \
  --env-file .env \
  ghcr.io/nbqduong/simbolt-playwrightloadtest:latest

