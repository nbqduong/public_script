curl -fsSL https://get.docker.com | sudo sh

sudo ufw allow OpenSSH
sudo ufw allow 8080/tcp
sudo ufw enable

docker pull ghcr.io/nbqduong/simbolt-playwrightloadtest:latest

mkdir result
chmod +777 result

docker run -d \
  --name simbolt \
  --restart unless-stopped \
  -p 8080:8080 \
  --env-file .env \
  -v ./result:/app/test-results \
  ghcr.io/nbqduong/simbolt-playwrightloadtest:latest

